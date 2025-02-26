$CommandName = $MyInvocation.MyCommand.Name.Replace(".Tests.ps1", "")
Write-Host -Object "Running $PSCommandPath" -ForegroundColor Cyan
$global:TestConfig = Get-TestConfig

Describe "$CommandName Unit Tests" -Tag 'UnitTests' {
    Context "Validate parameters" {
        [object[]]$params = (Get-Command $CommandName).Parameters.Keys | Where-Object {$_ -notin ('whatif', 'confirm')}
        [object[]]$knownParameters = 'SqlInstance', 'SqlCredential', 'Session', 'Path', 'FilePath', 'InputObject', 'EnableException'
        $knownParameters += [System.Management.Automation.PSCmdlet]::CommonParameters
        It "Should only contain our specific parameters" {
            (@(Compare-Object -ReferenceObject ($knownParameters | Where-Object {$_}) -DifferenceObject $params).Count ) | Should Be 0
        }
    }
}

Describe "$CommandName Integration Tests" -Tags "IntegrationTests" {
    BeforeAll {
        $null = Get-DbaXESession -SqlInstance $TestConfig.instance2 -Session 'Profiler TSQL Duration' | Remove-DbaXESession
    }
    AfterAll {
        $null = Get-DbaXESession -SqlInstance $TestConfig.instance2 -Session 'Profiler TSQL Duration' | Remove-DbaXESession
        Remove-Item -Path 'C:\windows\temp\Profiler TSQL Duration.xml' -ErrorAction SilentlyContinue
    }
    Context "Test Importing Session Template" {
        $session = Import-DbaXESessionTemplate -SqlInstance $TestConfig.instance2 -Template 'Profiler TSQL Duration'
        $results = $session | Export-DbaXESessionTemplate -Path C:\windows\temp
        It "session exports to disk" {
            $results.Name | Should Be 'Profiler TSQL Duration.xml'
        }
    }
}
