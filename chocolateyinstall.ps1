
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = ''
$url64      = 'https://university.connectwise.com/install/2021.3/ConnectWise-Internet-Client-x64.msi'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'MSI'
  url           = $url
  url64bit      = $url64

  softwareName  = 'CWManage*'

  checksum      = 'cec9917898b960175b0f9dc0f8f8dce3a6bb8f6560d4658942ee877aef38de9b'
  checksumType  = 'sha256'
  checksum64    = 'cec9917898b960175b0f9dc0f8f8dce3a6bb8f6560d4658942ee877aef38de9b'
  checksumType64= 'sha256'

  silentArgs    = "/qb"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs
