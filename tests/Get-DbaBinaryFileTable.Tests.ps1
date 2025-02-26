$CommandName = $MyInvocation.MyCommand.Name.Replace(".Tests.ps1", "")
Write-Host -Object "Running $PSCommandPath" -ForegroundColor Cyan
$global:TestConfig = Get-TestConfig

Describe "$CommandName Unit Tests" -Tag 'UnitTests' {
    Context "Validate parameters" {
        [object[]]$params = (Get-Command $CommandName).Parameters.Keys | Where-Object { $_ -notin ('whatif', 'confirm') }
        [object[]]$knownParameters = 'SqlInstance', 'SqlCredential', 'Database', 'Table', 'Schema', 'EnableException', 'InputObject'
        $knownParameters += [System.Management.Automation.PSCmdlet]::CommonParameters
        It "Should only contain our specific parameters" {
            (@(Compare-Object -ReferenceObject ($knownParameters | Where-Object { $_ }) -DifferenceObject $params).Count ) | Should Be 0
        }
    }
}

Describe "$commandname Integration Tests" -Tags "IntegrationTests" {
    BeforeAll {
        $db = Get-DbaDatabase -SqlInstance $TestConfig.instance2 -Database tempdb
        $null = $db.Query("CREATE TABLE [dbo].[BunchOFilez]([FileName123] [nvarchar](50) NULL, [TheFile123] [image] NULL)")
        $null = Import-DbaBinaryFile -SqlInstance $TestConfig.instance2 -Database tempdb -Table BunchOFilez -FilePath "$($TestConfig.appveyorlabrepo)\azure\adalsql.msi"
        $null = Get-ChildItem "$($TestConfig.appveyorlabrepo)\certificates" | Import-DbaBinaryFile -SqlInstance $TestConfig.instance2 -Database tempdb -Table BunchOFilez
    }
    AfterAll {
        try {
            $null = $db.Query("DROP TABLE dbo.BunchOFilez")
        } catch {
            $null = 1
        }
    }

    It "returns a table" {
        $results = Get-DbaBinaryFileTable -SqlInstance $TestConfig.instance2 -Database tempdb
        $results.Name.Count | Should -BeGreaterOrEqual 1
    }

    It "supports piping" {
        $results = Get-DbaDbTable -SqlInstance $TestConfig.instance2 -Database tempdb | Get-DbaBinaryFileTable
        $results.Name.Count | Should -BeGreaterOrEqual 1
    }
}
