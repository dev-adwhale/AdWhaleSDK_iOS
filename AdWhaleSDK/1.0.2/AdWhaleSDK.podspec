Pod::Spec.new do |s|
    s.name         = "AdWhaleSDK"
    s.version      = "1.0.2"
    s.summary      = "AdWhaleSDK for iOS"
    s.description  = "AdWhaleSDK for iOS"
    s.homepage     = "https://www.cauly.net/index.html#/"
    s.license = { :type => 'MIT', :text => 'LICENSE' }
    s.author             = { "dev-adwhale" => "adwhale_sdk@fsn.co.kr" }
    s.source       = { :git => 'https://github.com/dev-adwhale/AdWhaleSDK_iOS.git', :tag => s.version.to_s }
    s.vendored_frameworks = 'AdWhaleSDK.xcframework', 'ios/CaulySDK.xcframework'
    s.platform = :ios
    s.swift_version = "4.0"
    s.ios.deployment_target  = '12.0'

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
        base.dependency 'Google-Mobile-Ads-SDK', '11.13.0'
        base.dependency 'GoogleMobileAdsMediationInMobi', '10.8.0.0'
        base.dependency 'GoogleMobileAdsMediationAppLovin', '13.1.0.0'
        base.dependency 'GoogleMobileAdsMediationVungle', '7.4.4.0'
        base.dependency 'GoogleMobileAdsMediationFyber', '8.3.5.0'
        base.dependency 'GoogleMobileAdsMediationMintegral', '7.7.5.0'
        base.dependency 'GoogleMobileAdsMediationPangle', '6.4.1.2.0'
        base.dependency 'GoogleMobileAdsMediationUnity', '4.13.1.0'
        base.dependency 'GoogleMobileAdsMediationIronSource', '8.6.1.0.0'
        base.dependency 'GoogleUserMessagingPlatform', '2.7.0'
    end

    s.subspec 'Lite' do |lite|
        lite.dependency 'Google-Mobile-Ads-SDK', '11.13.0'
    end

end