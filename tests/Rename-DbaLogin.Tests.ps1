$CommandName = $MyInvocation.MyCommand.Name.Replace(".Tests.ps1", "")
Write-Host -Object "Running $PSCommandPath" -ForegroundColor Cyan
$global:TestConfig = Get-TestConfig

Describe "$CommandName Unit Tests" -Tag 'UnitTests' {
    Context "Validate parameters" {
        [object[]]$params = (Get-Command $CommandName).Parameters.Keys | Where-Object { $_ -notin ('whatif', 'confirm') }
        [object[]]$knownParameters = 'SqlInstance', 'SqlCredential', 'Login', 'NewLogin', 'EnableException', 'Force'
        $knownParameters += [System.Management.Automation.PSCmdlet]::CommonParameters
        It "Should only contain our specific parameters" {
            (@(Compare-Object -ReferenceObject ($knownParameters | Where-Object { $_ }) -DifferenceObject $params).Count ) | Should Be 0
        }
    }
}

Describe "$CommandName Integration Tests" -Tags "IntegrationTests" {
    BeforeAll {
        $login = "dbatoolsci_renamelogin"
        $renamed = "dbatoolsci_renamelogin2"
        $password = 'MyV3ry$ecur3P@ssw0rd'
        $securePassword = ConvertTo-SecureString $password -AsPlainText -Force
        $newlogin = New-DbaLogin -SqlInstance $TestConfig.instance1 -Login $login -Password $securePassword
    }
    AfterAll {
        $null = Stop-DbaProcess -SqlInstance $TestConfig.instance1 -Login $renamed
        $null = Remove-DbaLogin -SqlInstance $TestConfig.instance1 -Login $renamed -Confirm:$false
    }

    Context "renames the login" {
        $results = Rename-DbaLogin -SqlInstance $TestConfig.instance1 -Login $login -NewLogin $renamed
        It "rename is successful" {
            $results.Status | Should Be "Successful"
        }
        It "output for previous login is correct" {
            $results.PreviousLogin | Should Be $login
        }
        It "output for new login is correct" {
            $results.NewLogin | Should Be $renamed
        }
        It "results aren't null" {
            Get-DbaLogin -SqlInstance $TestConfig.instance1 -login $renamed | Should Not BeNullOrEmpty
        }
    }
}
