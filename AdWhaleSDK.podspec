Pod::Spec.new do |s|
    s.name         = "AdWhaleSDK"
    s.version      = "1.0.3"
    s.summary      = "AdWhaleSDK for iOS"
    s.description  = "AdWhaleSDK for iOS"
    s.homepage     = "https://www.cauly.net/index.html#/"
    s.license = { :type => 'MIT', :text => 'LICENSE' }
    s.author             = { "dev-adwhale" => "adwhale_sdk@fsn.co.kr" }
    s.source       = { :git => 'https://github.com/dev-adwhale/AdWhaleSDK_iOS.git', :tag => s.version.to_s }
    s.vendored_frameworks = 'AdWhaleSDK.xcframework', 'ios/CaulySDK.xcframework'
    s.platform = :ios
    s.swift_version = "4.0"
    s.ios.deployment_target  = '13.0'

    s.frameworks = [
        'AVKit',
        'UIKit',
        'Foundation',
        'CoreGraphics',
        'QuartzCore',
        'SystemConfiguration',
        'MediaPlayer',
        'CFNetwork',
        'MessageUI',
        'EventKit',
        'AdSupport'
    ]

    s.pod_target_xcconfig = { 
        'ENABLE_BITCODE' => 'NO', 
        'OTHER_LDFLAGS' => '-ObjC',
    }

    s.default_subspecs = 'Base'

    s.subspec 'Base' do |base|
        base.dependency 'Google-Mobile-Ads-SDK', '12.12.0'
        base.dependency 'GoogleMobileAdsMediationInMobi', '11.0.0.0'
        base.dependency 'GoogleMobileAdsMediationAppLovin', '13.5.0.0'
        base.dependency 'GoogleMobileAdsMediationVungle', '7.6.1.0'
        base.dependency 'GoogleMobileAdsMediationFyber', '8.4.1.0'
        base.dependency 'GoogleMobileAdsMediationMintegral', '7.7.9.1'
        base.dependency 'GoogleMobileAdsMediationPangle', '7.7.0.6.0'
        base.dependency 'GoogleMobileAdsMediationUnity', '4.16.3.0'
        base.dependency 'GoogleMobileAdsMediationIronSource', '9.0.0.0.0'
        base.dependency 'GoogleMobileAdsMediationMoloco', '4.1.0.0'
    end

    s.subspec 'Lite' do |lite|
        lite.dependency 'Google-Mobile-Ads-SDK', '12.12.0'
        lite.dependency 'GoogleMobileAdsMediationAppLovin', '13.5.0.0'
        lite.dependency 'GoogleMobileAdsMediationMoloco', '4.1.0.0'
    end

end