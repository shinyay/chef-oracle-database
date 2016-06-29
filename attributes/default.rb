default['database']['user'] = 'oracle'
default['database']['user_home'] = '/home/oracle'
default['database']['group'] = 'oinstall'
default['database']['owner'] = 'oracle'
default['database']['host_name'] = 'oel72db'
default['database']['inventory_location'] = '/u01/app/oraInventory'
default['database']['oracle_home'] = '/u01/app/oracle/product/12.1.0/dbhome_1'
default['database']['oracle_base'] = '/u01/app/oracle'
default['database']['dba_group'] = 'dba'
default['database']['oper_group'] = 'oper'
default['database']['backupdba_group'] = 'backupdba'
default['database']['dgdba_group'] = 'dgdba'
default['database']['kmdba_group'] = 'kmdba'
default['database']['runinstaller_path'] = '/vagrant_data/database_12102/runInstaller'
#default['database']['ignore_sysprereq'] = '-ignoreSysPrereqs'
default['database']['ignore_sysprereq'] = ''
default['database']['response_file_dir'] = '/home/oracle/responsefile'
default['database']['response_file_install'] = '/home/oracle/responsefile/install_oracledb.rsp'
default['database']['response_file_dbca'] = '/home/oracle/responsefile/dbca_oracledb.rsp'
default['database']['response_file_uninstall'] = '/home/oracle/responsefile/deinstall_oracledb.rsp'
default['database']['operation_type'] = 'createDatabase'
default['database']['gdbname'] = 'orcl'
default['database']['sid'] = 'orcl'
default['database']['create_as_container_database'] = 'true'
default['database']['number_of_pdbs'] = '2'
default['database']['pdbname'] = 'pdb'
default['database']['pdb_admin_password'] = 'Welcome1#'
default['database']['template_name'] = 'General_Purpose.dbc'
default['database']['sys_password'] = 'Welcome1#'
default['database']['system_password'] = 'Welcome1#'
default['database']['characterset'] = 'AL32UTF8'
default['database']['national_characterset'] = 'AL16UTF16'
