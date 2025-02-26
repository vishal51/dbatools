$CommandName = $MyInvocation.MyCommand.Name.Replace(".Tests.ps1", "")
Write-Host -Object "Running $PSCommandPath" -ForegroundColor Cyan
$global:TestConfig = Get-TestConfig

Describe "$CommandName Unit Tests" -Tag 'UnitTests' {
    Context "Validate parameters" {
        [object[]]$params = (Get-Command $CommandName).Parameters.Keys | Where-Object { $_ -notin ('whatif', 'confirm') }
        [object[]]$knownParameters = 'SqlInstance', 'SqlCredential', 'Database', 'ExcludeDatabase', 'IncludeSystemDBs', 'InputObject', 'EnableException'
        $knownParameters += [System.Management.Automation.PSCmdlet]::CommonParameters
        It "Should only contain our specific parameters" {
            (@(Compare-Object -ReferenceObject ($knownParameters | Where-Object { $_ }) -DifferenceObject $params).Count ) | Should Be 0
        }
    }
}

Describe "$commandname Integration Tests" -Tags "IntegrationTests" {
    BeforeAll {
        $dbname = "dbatoolsci_test_$(get-random)"
        $server = Connect-DbaInstance -SqlInstance $TestConfig.instance2
        $null = $server.Query("Create Database [$dbname]")
    }
    AfterAll {
        Remove-DbaDatabase -SqlInstance $TestConfig.instance2 -Database $dbname -Confirm:$false
    }
    #Skipping these tests as internals of Get-DbaDbSpace seems to be unreliable in CI
    Context "Gets DbSpace" {
        $results = Get-DbaDbSpace -SqlInstance $TestConfig.instance2 | Where-Object { $_.Database -eq "$dbname" }
        It "Gets results" {
            $results | Should -Not -BeNullOrEmpty
        }
        foreach ($row in $results) {
            It "Should retreive space for $dbname" {
                $row.Database | Should -Be $dbname
                $row.UsedSpace | Should -Not -BeNullOrEmpty
            }
            It "Should have a physical path for $dbname" {
                $row.physicalname | Should -Not -BeNullOrEmpty
            }
        }
    }
    #Skipping these tests as internals of Get-DbaDbSpace seems to be unreliable in CI
    Context "Gets DbSpace when using -Database" {
        $results = Get-DbaDbSpace -SqlInstance $TestConfig.instance2 -Database $dbname
        It "Gets results" {
            $results | Should Not Be $null
        }
        Foreach ($row in $results) {
            It "Should retreive space for $dbname" {
                $row.Database | Should -Be $dbname
                $row.UsedSpace | Should -Not -BeNullOrEmpty
            }
            It "Should have a physical path for $dbname" {
                $row.physicalname | Should -Not -BeNullOrEmpty
            }
        }
    }
    Context "Gets no DbSpace for specific database when using -ExcludeDatabase" {
        $results = Get-DbaDbSpace -SqlInstance $TestConfig.instance2 -ExcludeDatabase $dbname
        It "Gets no results" {
            $results.database | Should -Not -Contain $dbname
        }
    }
}
