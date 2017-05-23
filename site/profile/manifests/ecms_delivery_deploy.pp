class profile::ecms_delivery_deploy (
  $ECMS_VERSION = "1.3.2"
  ){
  exec { 'ECMS_DELIVERY':
    command => "C:\externalTools\curl\bin\curl.exe -u ecms:XXXX$ -O http://10.48.100.50:8081/artifactory/ECMS/ISOS.WebUI.DELIVERY.${ECMS_VERSION}.zip",
    cwd => 'C:\Temp',
  }

  exec { 'ECMS_QA_DELIVERY_DEPLOY':
    command => '"C:\Program Files (x86)\IIS\Microsoft Web Deploy V3\msdeploy.exe" -verb=sync -source=package=C:\Temp\ISOS.WebUI.DELIVERY.${ECMS_VERSION}.zip -dest:auto -setParam="IIS Web Application Name"="ecms-qa-delivery" -enableRule=DoNotDeleteRule',
    cwd => 'C:\Temp',
  }
}
