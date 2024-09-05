Pod::Spec.new do |s|
  s.name             = 'PangrowthMedia-lite'
  s.version          = '5.4.2.0'
  s.summary          = 'LCDSDK is a SDK from Bytedance providing content service.'
  s.description      = <<-DESC
  Bytedance provides content which include video、feed、video card etc.
                       DESC
  
  s.license          = { :type => 'MIT', :file => 'PangrowthMedia-lite/LICENSE' }
  s.author           = { 'yuxuri' => 'yuxuri@bytedance.com' }

  s.homepage         = 'https://www.pangle.cn/'
  s.source           = { :http => "https://sf3-fe-tos.pglstatp-toutiao.com/obj/pangle-empower/pangrowth-media-lite/#{s.version.to_s}/PangrowthMedia-lite-#{s.version.to_s}.zip" }
  s.ios.deployment_target = '11.0'

  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => ['-lObjC'] }

  s.frameworks = 'MetalKit', 'CoreMotion', 'SystemConfiguration', 'OpenAL', 'VideoToolbox'
  s.libraries = 'c++', 'z', 'iconv', 'xml2', 'bz2', 'c++abi'

  s.dependency 'RangersAPM/Core', '>= 3.10.6'
  s.dependency 'RangersAPM/Public', '>= 3.10.6'
  s.dependency 'RangersAPM/Crash', '>= 3.10.6'
  s.dependency 'RangersAPM/HMD', '>= 3.10.6'
  s.dependency 'RangersAPM/EventMonitor', '>= 3.10.6'
  s.dependency 'RangersAPM/CN', '>= 3.10.6'
  s.dependency 'RangersAppLog/Core', '>= 6.15.1'
  s.dependency 'RangersAppLog/Log', '>= 6.15.1'
  s.dependency 'RangersAppLog/Host/CN', '>= 6.15.1'

  s.vendored_frameworks = ['PangrowthMedia-lite/LCDSDK.framework']
  s.resources = ['PangrowthMedia-lite/LCDSDK.bundle']
  s.preserve_paths = 'PangrowthMedia-lite/*.framework', 'PangrowthMedia-lite/*.bundle'
end
