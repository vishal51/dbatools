$CommandName = $MyInvocation.MyCommand.Name.Replace(".Tests.ps1", "")
Write-Host -Object "Running $PSCommandPath" -ForegroundColor Cyan
$global:TestConfig = Get-TestConfig

Describe "$CommandName Unit Tests" -Tag 'UnitTests' {
    Context "Validate parameters" {
        [object[]]$params = (Get-Command $CommandName).Parameters.Keys | Where-Object {$_ -notin ('whatif', 'confirm')}
        [object[]]$knownParameters = 'SqlInstance', 'SqlCredential', 'Category', 'InputObject', 'ExcludeSystemObject', 'EnableException'
        $knownParameters += [System.Management.Automation.PSCmdlet]::CommonParameters
        It "Should only contain our specific parameters" {
            (@(Compare-Object -ReferenceObject ($knownParameters | Where-Object {$_}) -DifferenceObject $params).Count ) | Should Be 0
        }
    }
}

Describe "$CommandName Integration Tests" -Tags "IntegrationTests" {
    Context "Command actually works" {
        $results = Get-DbaPbmCategory -SqlInstance $TestConfig.instance2
        it "Gets Results" {
            $results | Should Not Be $null
        }
    }
    Context "Command actually works using -Category" {
        $results = Get-DbaPbmCategory -SqlInstance $TestConfig.instance2 -Category 'Availability database errors'
        it "Gets Results" {
            $results | Should Not Be $null
        }
    }
    Context "Command actually works using -ExcludeSystemObject" {
        $results = Get-DbaPbmCategory -SqlInstance $TestConfig.instance2 -ExcludeSystemObject
        it "Gets Results" {
            $results | Should Not Be $null
        }
    }
}
