class profile::ecms_delivery_deploy (
  $ecms_version = "1.3.2"
  ){
  exec { 'ecms_delivery':
    command => "C:\\externalTools\\curl\\bin\\curl.exe -u ecms:XXXX$ -O http://10.48.100.50:8081/artifactory/ECMS/ISOS.WebUI.DELIVERY.${ECMS_VERSION}.zip",
    cwd => 'C:\\Temp',
  }

  exec { 'ecms_qa_delivery_deploy':
    command => '"C:\\Program Files (x86)\\IIS\\Microsoft Web Deploy V3\\msdeploy.exe" -verb=sync -source=package=C:\\Temp\\ISOS.WebUI.DELIVERY.${ECMS_VERSION}.zip -dest:auto -setParam="IIS Web Application Name"="ecms-qa-delivery" -enableRule=DoNotDeleteRule',
    cwd => 'C:\\Temp',
  }
}
