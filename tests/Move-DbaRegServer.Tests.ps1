$CommandName = $MyInvocation.MyCommand.Name.Replace(".Tests.ps1", "")
Write-Host -Object "Running $PSCommandpath" -ForegroundColor Cyan
$global:TestConfig = Get-TestConfig

Describe "$CommandName Unit Tests" -Tags "UnitTests" {
    Context "Validate parameters" {
        [object[]]$params = (Get-Command $CommandName).Parameters.Keys | Where-Object { $_ -notin ('whatif', 'confirm') }
        [object[]]$knownParameters = 'SqlInstance', 'SqlCredential', 'Name', 'ServerName', 'Group', 'InputObject', 'EnableException'
        $knownParameters += [System.Management.Automation.PSCmdlet]::CommonParameters
        It "Should only contain our specific parameters" {
            (@(Compare-Object -ReferenceObject ($knownParameters | Where-Object { $_ }) -DifferenceObject $params).Count ) | Should Be 0
        }
    }
}

Describe "$CommandName Integration Tests" -Tag "IntegrationTests" {
    Context "Setup" {
        BeforeAll {
            $random = Get-Random
            $srvName = "dbatoolsci-server1"
            $group = "dbatoolsci-group1"
            $regSrvName = "dbatoolsci-server12"
            $regSrvDesc = "dbatoolsci-server123"

            $newGroup = Add-DbaRegServerGroup -SqlInstance $TestConfig.instance1 -Name $group
            $newServer = Add-DbaRegServer -SqlInstance $TestConfig.instance1 -ServerName $srvName -Name $regSrvName -Description $regSrvDesc -Group $newGroup.Name

            $srvName2 = "dbatoolsci-server2"
            $group2 = "dbatoolsci-group1a"
            $regSrvName2 = "dbatoolsci-server21"
            $regSrvDesc2 = "dbatoolsci-server321"

            $newGroup2 = Add-DbaRegServerGroup -SqlInstance $TestConfig.instance1 -Name $group2
            $newServer2 = Add-DbaRegServer -SqlInstance $TestConfig.instance1 -ServerName $srvName2 -Name $regSrvName2 -Description $regSrvDesc2

            $regSrvName3 = "dbatoolsci-server3"
            $srvName3 = "dbatoolsci-server3"
            $regSrvDesc3 = "dbatoolsci-server3desc"

            $newServer3 = Add-DbaRegServer -SqlInstance $TestConfig.instance1 -ServerName $srvName3 -Name $regSrvName3 -Description $regSrvDesc3

            $testGroupHR = "dbatoolsci-HR-$random"
            $testGroupFinance = "dbatoolsci-Finance-$random"
            $regSrvNameHR = "dbatoolsci-HR-$random"
            $regSrvNameFinance = "dbatoolsci-Finance-$random"

            $newTestGroupHR = Add-DbaRegServerGroup -SqlInstance $TestConfig.instance1 -Name $testGroupHR
            $newTestGroup5 = Add-DbaRegServerGroup -SqlInstance $TestConfig.instance1 -Name $testGroupFinance
            $newServerHR = Add-DbaRegServer -SqlInstance $TestConfig.instance1 -ServerName $srvName -Name $regSrvNameHR -Group $testGroupHR
            $newServerFinance = Add-DbaRegServer -SqlInstance $TestConfig.instance1 -ServerName $srvName -Name $regSrvNameFinance -Group $testGroupHR
        }
        AfterAll {
            Get-DbaRegServer -SqlInstance $TestConfig.instance1 -Name $regSrvName, $regSrvName2, $regSrvName3, $regSrvNameHR, $regSrvNameFinance | Remove-DbaRegServer -Confirm:$false
            Get-DbaRegServerGroup -SqlInstance $TestConfig.instance1 -Group $group, $group2, $testGroupHR, $testGroupFinance | Remove-DbaRegServerGroup -Confirm:$false
        }

        It "moves a piped server" {
            $results = $newServer2 | Move-DbaRegServer -NewGroup $newGroup.Name
            $results.Parent.Name | Should -Be $newGroup.Name
            $results.Name | Should -Be $regSrvName2
        }

        It "moves a manually specified server" {
            $results = Move-DbaRegServer -SqlInstance $TestConfig.instance1 -ServerName $srvName3 -NewGroup $newGroup2.Name
            $results.Parent.Name | Should -Be $newGroup2.Name
            $results.Description | Should -Be $regSrvDesc3
        }

        # see https://github.com/dataplat/dbatools/issues/7112
        It "moves a piped server to a target group" {
            $results = Get-DbaRegServer -SqlInstance $TestConfig.instance1 -Group $testGroupHR | Move-DbaRegServer -Group $testGroupFinance
            $results.Count | Should -Be 2
        }
    }
}
