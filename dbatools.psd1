#
# Module manifest for module 'dbatools'
#
# Generated by: Chrissy LeMaire
#
# Generated on: 9/8/2015
#
@{

    # Script module or binary module file associated with this manifest.
    RootModule             = 'dbatools.psm1'

    # Version number of this module.
    ModuleVersion          = '0.9.525'

    # ID used to uniquely identify this module
    GUID                   = '9d139310-ce45-41ce-8e8b-d76335aa1789'

    # Author of this module
    Author                 = 'Chrissy LeMaire'

    # Company or vendor of this module
    CompanyName            = 'dbatools.io'

    # Copyright statement for this module
    Copyright              = 'Copyright (c) 2018 by dbatools, licensed under MIT'

    # Description of the functionality provided by this module
    Description            = "The community module that enables SQL Server Pros to automate database development and server administration"

    # Minimum version of the Windows PowerShell engine required by this module
    PowerShellVersion      = '3.0'

    # Name of the Windows PowerShell host required by this module
    PowerShellHostName     = ''

    # Minimum version of the Windows PowerShell host required by this module
    PowerShellHostVersion  = ''

    # Minimum version of the .NET Framework required by this module
    DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module
    CLRVersion             = ''

    # Processor architecture (None, X86, Amd64, IA64) required by this module
    ProcessorArchitecture  = ''

    # Modules that must be imported into the global environment prior to importing this module
    RequiredModules        = @()

    # Assemblies that must be loaded prior to importing this module
    RequiredAssemblies     = @()

    # Script files () that are run in the caller's environment prior to importing this module
    ScriptsToProcess       = @()

    # Type files (xml) to be loaded when importing this module
    TypesToProcess         = @("xml\dbatools.Types.ps1xml")

    # Format files (xml) to be loaded when importing this module
    # "xml\dbatools.Format.ps1xml"
    FormatsToProcess       = @("xml\dbatools.Format.ps1xml")

    # Modules to import as nested modules of the module specified in ModuleToProcess
    NestedModules          = @()

    # Functions to export from this module
    FunctionsToExport      = @(
        'Start-DbaMigration',
        'Copy-DbaDatabase',
        'Copy-DbaLogin',
        'Copy-DbaAgentServer',
        'Copy-DbaSpConfigure',
        'Copy-DbaLinkedServer',
        'Copy-DbaDbMail',
        'Copy-DbaDbAssembly',
        'Copy-DbaPolicyManagement',
        'Copy-DbaAgentSchedule',
        'Copy-DbaAgentOperator',
        'Copy-DbaAgentJob',
        'Copy-DbaDataCollector',
        'Copy-DbaCustomError',
        'Copy-DbaServerAuditSpecification',
        'Copy-DbaEndpoint',
        'Copy-DbaServerAudit',
        'Copy-DbaServerRole',
        'Copy-DbaResourceGovernor',
        'Copy-DbaXESession',
        'Copy-DbaBackupDevice',
        'Copy-DbaServerTrigger',
        'Copy-DbaCredential',
        'Copy-DbaCmsRegServer',
        'Copy-DbaSysDbUserObject',
        'Copy-DbaAgentProxy',
        'Copy-DbaAgentAlert',
        'Import-DbaSpConfigure',
        'Export-DbaSpConfigure'
        'Get-DbaDetachedDatabaseInfo',
        'Restore-DbaBackupFromDirectory',
        'Test-DbaConnection',
        'Import-DbaCsv',
        'Copy-DbaAgentJobCategory',
        'Update-Dbatools',
        'Test-DbaPath',
        'Export-DbaLogin',
        'Reset-DbaAdmin',
        'Watch-DbaDbLogin',
        'Expand-DbaDbLogFile',
        'Test-DbaMigrationConstraint',
        'Get-DbaCmsRegServer',
        'Test-DbaNetworkLatency',
        'Find-DbaDuplicateIndex',
        'Show-DbaServerFileSystem',
        'Get-DbaDiskSpace',
        'Remove-DbaDatabaseSafely',
        'Show-DbaDbList',
        'Set-DbaTempdbConfig',
        'Test-DbaTempdbConfig',
        'Repair-DbaOrphanUser',
        'Remove-DbaOrphanUser',
        'Find-DbaDbUnusedIndex',
        'Test-DbaDiskAllocation',
        'Test-DbaPowerPlan',
        'Set-DbaPowerPlan',
        'Test-DbaDiskAlignment',
        'Get-DbaDbSpace',
        'Test-DbaDbOwner',
        'Set-DbaDbOwner',
        'Test-DbaJobOwner',
        'Set-DbaJobOwner',
        'Test-DbaDbVirtualLogFile',
        'Get-DbaDbRestoreHistory',
        'Get-DbaTcpPort',
        'Test-DbaDbCompatibility',
        'Test-DbaDbCollation',
        'Test-DbaConnectionAuthScheme',
        'Test-DbaServerName',
        'Repair-DbaServerName',
        'Stop-DbaProcess',
        'Copy-DbaSsisCatalog',
        'Find-DbaOrphanedFile',
        'Get-DbaAvailabilityGroup',
        'Get-DbaLastGoodCheckDb',
        'Get-DbaProcess',
        'Get-DbaRunningJob',
        'Set-DbaMaxDop',
        'Test-DbaDbRecoveryModel',
        'Test-DbaMaxDop',
        'Remove-DbaBackup',
        'Get-DbaPermission',
        'Get-DbaLastBackup',
        'Connect-DbaInstance',
        'Get-DbaStartupParameter',
        'Get-DbaBackupHistory',
        'Read-DbaBackupHeader',
        'Test-DbaLastBackup',
        'Get-DbaMaxMemory',
        'Set-DbaMaxMemory',
        'Test-DbaMaxMemory',
        'Get-DbaDbSnapshot',
        'Remove-DbaDbSnapshot',
        'Get-DbaDbRoleMember',
        'Get-DbaServerRoleMember',
        'Resolve-DbaNetworkName',
        'Test-DbaWindowsLogin',
        'Get-DbaMemoryUsage',
        'Export-DbaAvailabilityGroup',
        'Write-DbaDataTable',
        'New-DbaDbSnapshot',
        'Restore-DbaDbSnapshot',
        'Get-DbaServerTrigger',
        'Get-DbaDbTrigger',
        'Export-DbaUser',
        'Get-DbaDbState',
        'Set-DbaDbState',
        'Get-DbaHelpIndex',
        'Get-DbaAgentAlert',
        'Get-DbaAgentOperator',
        'Get-DbaPageFileSetting',
        'Get-DbaSpConfigure',
        'Rename-DbaLogin',
        'Find-DbaAgentJob',
        'Find-DbaDatabase',
        'Get-DbaMsdtc',
        'Get-DbaUptime',
        'Get-DbaXESession',
        'Test-DbaOptimizeForAdHoc',
        'Find-DbaStoredProcedure',
        'Measure-DbaBackupThroughput',
        'Find-DbaLoginInGroup',
        'Get-DbaSpn',
        'Test-DbaSpn',
        'Set-DbaSpn',
        'Remove-DbaSpn',
        'Get-DbaDatabase',
        'Find-DbaUserObject',
        'Get-DbaService',
        'Get-DbaDependency',
        'Clear-DbaConnectionPool',
        'Find-DbaCommand',
        'Get-DbatoolsConfig',
        'Get-DbatoolsConfigValue',
        'Set-DbatoolsConfig',
        'Get-DbaClientProtocol',
        'Backup-DbaDatabase',
        'New-DbaDirectory',
        'Get-DbaPrivilege',
        'Install-DbaWatchUpdate',
        'Watch-DbaUpdate',
        'Uninstall-DbaWatchUpdate',
        'Get-DbaDbQueryStoreOption',
        'Set-DbaDbQueryStoreOption',
        'Restore-DbaDatabase',
        'Copy-DbaDbQueryStoreOption',
        'Get-DbaExecutionPlan',
        'Export-DbaExecutionPlan',
        'Get-DbaServerProtocol',
        'Get-DbaLocaleSetting',
        'Get-DbaBuildReference',
        'Set-DbaSpConfigure',
        'Test-DbaIdentityUsage',
        'Get-DbaDbAssembly',
        'Get-DbaAgentJob',
        'Get-DbaCustomError',
        'Get-DbaCredential',
        'Get-DbaBackupDevice',
        'Get-DbaAgentProxy',
        'Get-DbaDbEncryption',
        'New-DbaSsisCatalog',
        'Remove-DbaDatabase',
        'Get-DbaQueryExecutionTime',
        'Get-DbaTempdbUsage',
        'Find-DbaDbGrowthEvent',
        'Get-DbaNetworkActivity',
        'Get-DbaAgentJobOutputFile',
        'Set-DbaAgentJobOutputFile',
        'Test-DbaLinkedServerConnection',
        'Get-DbaDbFile',
        'Read-DbaTransactionLog',
        'Get-DbaDbTable',
        'Invoke-DbaDbShrink',
        'Get-DbaEstimatedCompletionTime',
        'Get-DbaLinkedServer',
        'Set-DbaStartupParameter',
        'New-DbaAgentJob',
        'Export-DbaScript',
        'Get-DbaLogin',
        'New-DbaScriptingOption',
        'Save-DbaDiagnosticQueryScript',
        'Invoke-DbaDiagnosticQuery',
        'Export-DbaDiagnosticQuery',
        'Invoke-DbaWhoIsActive',
        'Install-DbaWhoIsActive',
        'Set-DbaAgentJob',
        'Remove-DbaAgentJob',
        'New-DbaAgentJobStep',
        'Set-DbaAgentJobStep',
        'Remove-DbaAgentJobStep',
        'New-DbaAgentSchedule',
        'Set-DbaAgentSchedule',
        'Remove-DbaAgentSchedule',
        'Backup-DbaDbCertificate',
        'Get-DbaDbCertificate',
        'Get-DbaCmConnection',
        'Get-DbaCmObject',
        'Get-DbaEndpoint',
        'Get-DbaDbMasterKey',
        'Get-DbaSchemaChangeHistory',
        'Get-DbaServerAudit',
        'Get-DbaServerAuditSpecification',
        'Get-DbaProductKey',
        'Get-DbatoolsLog',
        'Restore-DbaDbCertificate',
        'New-DbaDbCertificate',
        'New-DbaCmConnection',
        'New-DbaDbMasterKey',
        'New-DbaServiceMasterKey',
        'New-DbatoolsSupportPackage',
        'Remove-DbaDbCertificate',
        'Remove-DbaCmConnection',
        'Remove-DbaDbMasterKey',
        'Set-DbaCmConnection',
        'Set-DbaTcpPort',
        'Test-DbaCmConnection',
        'New-DbaConnectionStringBuilder',
        'Get-DbaInstanceProperty',
        'Get-DbaInstanceUserOption',
        'New-DbaConnectionString',
        'Get-DbaAgentSchedule',
        'Invoke-DbaDbLogShipping',
        'Read-DbaTraceFile',
        'New-DbaComputerCertificate',
        'Get-DbaComputerCertificate',
        'Add-DbaComputerCertificate',
        'Get-DbaNetworkCertificate',
        'Set-DbaNetworkCertificate',
        'Remove-DbaNetworkCertificate',
        'Enable-DbaForceNetworkEncryption',
        'Disable-DbaForceNetworkEncryption',
        'Get-DbaForceNetworkEncryption',
        'Remove-DbaComputerCertificate',
        'Get-DbaServerInstallDate',
        'Install-DbaFirstResponderKit',
        'Backup-DbaDbMasterKey',
        'Get-DbaAgentJobHistory',
        'Get-DbaSsisEnvironmentVariable',
        'Get-DbaManagementObject',
        'Test-DbaManagementObject',
        'Get-DbaMaintenanceSolutionLog',
        'Invoke-DbaDbLogShipRecovery',
        'Find-DbaTrigger',
        'Find-DbaView',
        'Invoke-DbaDbUpgrade',
        'Get-DbaDbUser',
        'Get-DbaWindowsLog',
        'Get-DbaErrorLog',
        'Get-DbaAgentLog',
        'Get-DbaDbMailLog',
        'Get-DbaDbMailHistory',
        'Get-DbaDbView',
        'Get-DbaDbUdf',
        'Get-DbaDbPartitionFunction',
        'Get-DbaDbPartitionScheme',
        'Get-DbaDefaultPath',
        'Get-DbaDbStoredProcedure',
        'Test-DbaDbCompression',
        'Mount-DbaDatabase',
        'Dismount-DbaDatabase',
        'Set-DbaPrivilege',
        'Get-DbaAgReplica',
        'Get-DbaAgDatabase',
        'Get-DbaModule',
        'Get-DbaCmsRegServerStore',
        'Sync-DbaLoginPermission',
        'Invoke-Sqlcmd2',
        'New-DbaCredential',
        'Get-DbaFile',
        'Set-DbaDbCompression',
        'New-DbaClientAlias',
        'Get-DbaClientAlias',
        'Get-DbaOperatingSystem',
        'Install-DbaMaintenanceSolution',
        'Get-DbaComputerSystem',
        'Get-DbaTraceFlag',
        'Stop-DbaService',
        'Start-DbaService',
        'Restart-DbaService',
        'Invoke-DbaCycleErrorLog',
        'Get-DbaRegistryRoot',
        'Get-DbaAvailableCollation',
        'Get-DbaUserPermission',
        'Get-DbaAgHadr',
        'Find-DbaSimilarTable',
        'Disable-DbaAgHadr',
        'Enable-DbaAgHadr',
        'Get-DbaTrace',
        'Get-DbaSuspectPage',
        'Get-DbaWaitStatistic',
        'Clear-DbaWaitStatistics',
        'Get-DbaTopResourceUsage',
        'New-DbaLogin',
        'Get-DbaAgListener',
        'Invoke-DbaDbClone',
        'Read-DbaXEFile',
        'Get-DbaRepDistributor',
        'Update-DbaServiceAccount',
        'Watch-DbaXESession',
        'Disable-DbaTraceFlag',
        'Enable-DbaTraceFlag',
        'Start-DbaAgentJob',
        'Stop-DbaAgentJob',
        'Remove-DbaClientAlias',
        'New-DbaAgentProxy',
        'Test-DbaDbLogShipStatus',
        'Get-DbaXESessionTarget',
        'New-DbaXESmartTargetResponse',
        'New-DbaXESmartTarget',
        'Get-DbaDbVirtualLogFile',
        'Register-DbatoolsConfig',
        'Get-DbaBackupInformation',
        'Start-DbaXESession',
        'Stop-DbaXESession',
        'Set-DbaDbRecoveryModel',
        'Get-DbaDbRecoveryModel',
        'Get-DbaWaitingTask',
        'Remove-DbaDbUser',
        'Get-DbaDump',
        'Invoke-DbaAdvancedRestore',
        'Format-DbaBackupInformation',
        'Get-DbaAgentJobStep',
        'Test-DbaBackupInformation',
        'Invoke-DbaBalanceDataFiles',
        'Select-DbaBackupInformation',
        'Rename-DbaDatabase',
        'New-DbaDacProfile',
        'Publish-DbaDacPackage',
        'Export-DbaDacPackage',
        'Copy-DbaDbTableData',
        'Invoke-DbaQuery',
        'Remove-DbaLogin',
        'Get-DbaFilestream',
        'Enable-DbaFilestream',
        'Disable-DbaFilestream',
        'Get-DbaAgentJobCategory',
        'New-DbaAgentJobCategory',
        'Remove-DbaAgentJobCategory',
        'Set-DbaAgentJobCategory',
        'Get-DbaDbRole',
        'Get-DbaServerRole',
        'Find-DbaBackup',
        'Get-DbaCpuUsage',
        'Remove-DbaXESession',
        'New-DbaXESession',
        'Import-DbaXESessionTemplate',
        'Get-DbaXEStore',
        'Export-DbaXESessionTemplate',
        'New-DbaXESmartTableWriter',
        'New-DbaXESmartReplay',
        'New-DbaXESmartEmail',
        'New-DbaXESmartQueryExec',
        'Start-DbaXESmartTarget',
        'Get-DbaOrphanUser',
        'Get-DbaOpenTransaction',
        'Get-DbaDbLogShipError',
        'Test-DbaBuild',
        'Get-DbaXESessionTemplate',
        'ConvertTo-DbaXESession',
        'Start-DbaTrace',
        'Stop-DbaTrace',
        'Remove-DbaTrace',
        'Set-DbaLogin',
        'Copy-DbaXESessionTemplate',
        'Get-DbaXEObject',
        'ConvertTo-DbaDataTable',
        'Find-DbaDisabledIndex',
        'Invoke-DbaPfRelog',
        'Get-DbaPfDataCollectorCounter',
        'Get-DbaPfDataCollectorCounterSample',
        'Get-DbaPfDataCollector',
        'Get-DbaPfDataCollectorSet',
        'Start-DbaPfDataCollectorSet',
        'Stop-DbaPfDataCollectorSet',
        'Export-DbaPfDataCollectorSetTemplate',
        'Get-DbaPfDataCollectorSetTemplate',
        'Import-DbaPfDataCollectorSetTemplate',
        'Remove-DbaPfDataCollectorSet',
        'Add-DbaPfDataCollectorCounter',
        'Remove-DbaPfDataCollectorCounter',
        'Get-DbaPfAvailableCounter',
        'Get-DbaXESmartTarget',
        'Remove-DbaXESmartTarget',
        'Stop-DbaXESmartTarget',
        'Get-DbaCmsRegServerGroup',
        'New-DbaDbUser',
        'Measure-DbaDiskSpaceRequirement',
        'New-DbaXESmartCsvWriter',
        'Export-DbaXECsv',
        'Invoke-DbaXeReplay',
        'Find-DbaInstance',
        'Test-DbaDiskSpeed',
        'Get-DbaDbExtentDiff',
        'Read-DbaAuditFile',
        'Get-DbaDbCompression',
        'Invoke-DbaDbDecryptObject',
        'Get-DbaDbForeignKey',
        'Get-DbaDbCheckConstraint',
        'Set-DbaAgentAlert',
        'Get-DbaFeature',
        'Get-DbaWaitResource',
        'Get-DbaDbPageInfo',
        'Get-DbaConnection',
        'Test-DbaLoginPassword',
        'Get-DbaErrorLogConfig',
        'Set-DbaErrorLogConfig',
        'Add-DbaCmsRegServer',
        'Add-DbaCmsRegServerGroup',
        'Export-DbaCmsRegServer',
        'Import-DbaCmsRegServer',
        'Move-DbaCmsRegServer',
        'Move-DbaCmsRegServerGroup',
        'Remove-DbaCmsRegServer',
        'Remove-DbaCmsRegServerGroup',
        'Get-DbaPlanCache',
        'Clear-DbaPlanCache',
        'Get-DbaSsisExecutionHistory',
        'ConvertTo-DbaTimeline',
        'Get-DbaRepPublication',
        'Test-DbaRepLatency',
        'Get-DbaDbMail',
        'Get-DbaDbMailAccount',
        'Get-DbaDbMailProfile',
        'Get-DbaDbMailConfig',
        'Get-DbaDbMailServer',
        'Export-DbaCredential',
        'Export-DbaLinkedServer',
        'Get-DbaResourceGovernor',
        'Get-DbaRgResourcePool',
        'Get-DbaRgWorkloadGroup',
        'Get-DbaRgClassifierFunction',
        'Export-DbaInstance',
        'Get-DbaPbmCategory',
        'Get-DbaPbmCategorySubscription',
        'Get-DbaPbmCondition',
        'Get-DbaPbmObjectSet',
        'Get-DbaPbmPolicy',
        'Get-DbaPbmStore',
        'Invoke-DbatoolsRenameHelper',
        'Export-DbaRepServerSetting',
        'Get-DbaRepServer',
        'Measure-DbatoolsImport',
        'Get-DbaDeprecatedFeature',
        'Test-DbaDeprecatedFeature',
        'Get-DbaWsfcAvailableDisk',
        'Get-DbaWsfcCluster',
        'Get-DbaWsfcDisk',
        'Get-DbaWsfcNetwork',
        'Get-DbaWsfcNetworkInterface',
        'Get-DbaWsfcNode',
        'Get-DbaWsfcResource',
        'Get-DbaWsfcResourceType',
        'Get-DbaWsfcRole',
        'Get-DbaWsfcSharedVolume',
        'Get-DbaDbFeatureUsage',
        'Stop-DbaEndpoint',
        'Start-DbaEndpoint',
        'Set-DbaDbMirror',
        'Repair-DbaDbMirror',
        'Remove-DbaEndpoint',
        'Remove-DbaDbMirrorMonitor',
        'Remove-DbaDbMirror',
        'New-DbaEndpoint',
        'Invoke-DbaDbMirroring',
        'Invoke-DbaDbMirrorFailover',
        'Get-DbaDbMirrorMonitor',
        'Get-DbaDbMirror',
        'Add-DbaDbMirrorMonitor',
        'Test-DbaEndpoint',
        'Get-DbaDbSharePoint',
        'Get-DbaDbMemoryUsage',
        'Clear-DbaLatchStatistics',
        'Get-DbaCpuRingBuffer',
        'Get-DbaIoLatency',
        'Get-DbaLatchStatistic',
        'Get-DbaSpinLockStatistic',
        'Add-DbaAgDatabase',
        'Add-DbaAgListener',
        'Add-DbaAgReplica',
        'Grant-DbaAgPermission',
        'Invoke-DbaAgFailover',
        'Join-DbaAvailabilityGroup',
        'New-DbaAvailabilityGroup',
        'Remove-DbaAgDatabase',
        'Remove-DbaAgListener',
        'Remove-DbaAvailabilityGroup',
        'Revoke-DbaAgPermission',
        'Get-DbaDbCompatibility',
        'Set-DbaDbCompatibility',
        'New-DbaDacOption',
        'Invoke-DbatoolsFormatter',
        'Remove-DbaAgReplica',
        'Resume-DbaAgDbDataMovement',
        'Set-DbaAgListener',
        'Set-DbaAgReplica',
        'Set-DbaAvailabilityGroup',
        'Set-DbaEndpoint',
        'Suspend-DbaAgDbDataMovement',
        'Sync-DbaAvailabilityGroup',
        'Install-DbaSqlWatch',
        'Uninstall-DbaSqlWatch',
        'Get-DbaMemoryCondition',
        'Remove-DbaDbBackupRestoreHistory',
        'New-DbaDatabase',
        'Get-DbaPowerPlan'
    )

    # Cmdlets to export from this module
    CmdletsToExport        = 'Select-DbaObject'

    # Variables to export from this module
    VariablesToExport      = ''

    # Aliases to export from this module
    # Aliases are stored in dbatools.psm1
    # KEEP Detach-DbaDatabase, Dismount-DbaDatabase and Start-SqlMigration FOREVER
    AliasesToExport        = 'Detach-DbaDatabase', 'Attach-DbaDatabase',
    'Reset-SqlSaPassword',
    'Copy-SqlUserDefinedMessage',
    'Copy-SqlJobServer',
    'Restore-HallengrenBackup',
    'Update-SqlWhoIsActive',
    'Install-SqlWhoIsActive',
    'Show-SqlMigrationConstraint',
    'Test-SqlDiskAllocation',
    'Get-DiskSpace',
    'Get-SqlMaxMemory',
    'Set-SqlMaxMemory',
    'Show-SqlWhoIsActive',
    'Copy-SqlAgentCategory',
    'Copy-SqlAlert',
    'Copy-SqlAudit',
    'Copy-SqlAuditSpecification',
    'Copy-SqlBackupDevice',
    'Copy-SqlCentralManagementServer',
    'Copy-SqlCredential',
    'Copy-SqlCustomError',
    'Copy-SqlDatabase',
    'Copy-SqlDatabaseAssembly',
    'Copy-SqlDatabaseMail',
    'Copy-SqlDataCollector',
    'Copy-SqlEndpoint',
    'Copy-SqlExtendedEvent',
    'Copy-SqlJob',
    'Copy-SqlLinkedServer',
    'Copy-SqlLogin',
    'Copy-SqlOperator',
    'Copy-SqlPolicyManagement',
    'Copy-SqlProxyAccount',
    'Copy-SqlResourceGovernor',
    'Copy-SqlServerAgent',
    'Copy-SqlServerRole',
    'Copy-SqlServerTrigger',
    'Copy-SqlSharedSchedule',
    'Copy-SqlSpConfigure',
    'Copy-SqlSsisCatalog',
    'Copy-SqlSysDbUserObjects',
    'Expand-SqlTLogResponsibly',
    'Export-SqlLogin',
    'Export-SqlSpConfigure',
    'Export-SqlUser',
    'Find-SqlDuplicateIndex',
    'Find-SqlUnusedIndex',
    'Get-SqlRegisteredServerName',
    'Get-SqlServerKey',
    'Import-SqlSpConfigure',
    'Remove-SqlDatabaseSafely',
    'Remove-SqlOrphanUser',
    'Repair-SqlOrphanUser',
    'Reset-SqlAdmin',
    'Restore-SqlBackupFromDirectory',
    'Set-SqlTempDbConfiguration',
    'Show-SqlDatabaseList',
    'Show-SqlServerFileSystem',
    'Start-SqlMigration',
    'Sync-SqlLoginPermissions',
    'Test-SqlConnection',
    'Test-SqlMigrationConstraint',
    'Test-SqlNetworkLatency',
    'Test-SqlPath',
    'Test-SqlTempDbConfiguration',
    'Watch-SqlDbLogin',
    'Get-DbaDatabaseFreeSpace',
    'Get-DbaQueryStoreConfig',
    'Set-DbaQueryStoreConfig',
    'Get-DbaCmsRegServerName',
    'Connect-DbaServer',
    'Get-DbaInstance',
    'Get-DbaXEventsSession',
    'Get-DbaXEventSession',
    'Get-DbaXEventSessionTarget',
    'Read-DbaXEventFile',
    'Watch-DbaXEventSession',
    'Get-DbaDatabaseCertificate',
    'New-DbaDatabaseCertificate',
    'Remove-DbaDatabaseCertificate',
    'Restore-DbaDatabaseCertificate',
    'Find-DbaDatabaseGrowthEvent',
    'Get-DbaTraceFile',
    'Out-DbaDataTable',
    'Invoke-DbaCmd',
    'Test-DbaVirtualLogFile',
    'Test-DbaFullRecoveryModel',
    'Get-DbaDatabaseSnapshot',
    'New-DbaDatabaseSnapshot',
    'Remove-DbaDatabaseSnapshot',
    'Restore-DbaDatabaseSnapshot',
    'Sync-DbaSqlLoginPermission',
    'Get-DbaLog',
    'Test-DbaValidLogin',
    'Get-DbaJobCategory',
    'Invoke-DbaDatabaseShrink',
    'Get-DbaPolicy',
    'Backup-DbaDatabaseMasterKey',
    'Get-DbaDatabaseMasterKey',
    'New-DbaDatabaseMasterKey',
    'Remove-DbaDatabaseMasterKey',
    'Get-DbaDatabaseAssembly',
    'Copy-DbaDatabaseAssembly',
    'Get-DbaDatabaseEncryption',
    'Get-DbaDatabaseFile',
    'Get-DbaDatabasePartitionFunction',
    'Get-DbaDatabasePartitionScheme',
    'Get-DbaDatabaseSpace',
    'Get-DbaDatabaseState',
    'Get-DbaDatabaseUdf',
    'Get-DbaDatabaseUser',
    'Get-DbaDatabaseView',
    'Invoke-DbaDatabaseClone',
    'Invoke-DbaDatabaseUpgrade',
    'Set-DbaDatabaseOwner',
    'Set-DbaDatabaseState',
    'Show-DbaDatabaseList',
    'Test-DbaDatabaseCollation',
    'Test-DbaDbCollation',
    'Test-DbaDatabaseCompatibility',
    'Test-DbaDatabaseOwner',
    'Clear-DbaSqlConnectionPool',
    'Copy-DbaSqlDataCollector',
    'Copy-DbaSqlPolicyManagement',
    'Copy-DbaSqlServerAgent',
    'Get-DbaSqlBuildReference',
    'Get-DbaSqlFeature',
    'Get-DbaSqlInstanceProperty',
    'Get-DbaSqlInstanceUserOption',
    'Get-DbaSqlManagementObject',
    'Get-DbaSqlModule',
    'Get-DbaSqlProductKey',
    'Get-DbaSqlRegistryRoot',
    'Get-DbaSqlService',
    'Invoke-DbaSqlQuery',
    'New-DbaSqlConnectionString',
    'New-DbaSqlConnectionStringBuilder',
    'New-DbaSqlDirectory',
    'Restart-DbaSqlService',
    'Start-DbaSqlService',
    'Stop-DbaSqlService',
    'Test-DbaSqlBuild',
    'Test-DbaSqlManagementObject',
    'Test-DbaSqlPath',
    'Update-DbaSqlServiceAccount',
    'Export-DbaDacpac',
    'Publish-DbaDacpac',
    'Set-DbaTempDbConfiguration',
    'Test-DbaTempDbConfiguration',
    'Get-DbaDbQueryStoreOptions',
    'Set-DbaDbQueryStoreOptions',
    'Copy-DbaDatabaseMail',
    'Get-DbaUserLevelPermission',
    'Get-DbaDistributor',
    'Get-DbaTable',
    'Copy-DbaTableData',
    'Add-DbaRegisteredServer',
    'Add-DbaRegisteredServerGroup',
    'Export-DbaRegisteredServer',
    'Get-DbaRegisteredServer',
    'Get-DbaRegisteredServerGroup',
    'Get-DbaRegisteredServerStore',
    'Import-DbaRegisteredServer',
    'Move-DbaRegisteredServer',
    'Move-DbaRegisteredServerGroup',
    'Remove-DbaRegisteredServer',
    'Remove-DbaRegisteredServerGroup',
    'Get-DbaLogShippingError',
    'Invoke-DbaLogShipping',
    'Invoke-DbaLogShippingRecovery',
    'Test-DbaLogShippingStatus',
    'Get-DbaRoleMember',
    'Get-DbaRestoreHistory',
    'Expand-DbaTLogResponsibly',
    'Test-DbaRecoveryModel',
    'Copy-DbaAgentCategory',
    'Copy-DbaAgentProxyAccount',
    'Copy-DbaAgentSharedSchedule',
    'Copy-DbaCentralManagementServer',
    'Copy-DbaExtendedEvent',
    'Copy-DbaQueryStoreConfig',
    'Import-DbaCsvToSql'

    # List of all modules packaged with this module
    ModuleList             = @()

    # List of all files packaged with this module
    FileList               = ''

    PrivateData            = @{
        # PSData is module packaging and gallery metadata embedded in PrivateData
        # It's for rebuilding PowerShellGet (and PoshCode) NuGet-style packages
        # We had to do this because it's the only place we're allowed to extend the manifest
        # https://connect.microsoft.com/PowerShell/feedback/details/421837
        PSData = @{
            # The primary categorization of this module (from the TechNet Gallery tech tree).
            Category     = "Databases"

            # Keyword tags to help users find this module via navigations and search.
            Tags         = @('sqlserver', 'migrations', 'sql', 'dba', 'databases')

            # The web address of an icon which can be used in galleries to represent this module
            IconUri      = "https://dbatools.io/logo.png"

            # The web address of this module's project or support homepage.
            ProjectUri   = "https://dbatools.io"

            # The web address of this module's license. Points to a page that's embeddable and linkable.
            LicenseUri   = "https://opensource.org/licenses/MIT"

            # Release notes for this particular version of the module
            ReleaseNotes = "https://dbatools.io/changelog"

            # If true, the LicenseUrl points to an end-user license (not just a source license) which requires the user agreement before use.
            # RequireLicenseAcceptance = ""

            # Indicates this is a pre-release/testing version of the module.
            IsPrerelease = 'True'
        }
    }
}