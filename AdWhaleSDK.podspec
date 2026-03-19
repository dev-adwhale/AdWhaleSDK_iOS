Pod::Spec.new do |s|
    s.name         = "AdWhaleSDK"
    s.version      = "1.0.4"
    s.summary      = "AdWhaleSDK for iOS"
    s.description  = "AdWhaleSDK for iOS"
    s.homepage     = "https://www.cauly.net/index.html#/"
    s.license = { :type => 'MIT', :text => 'LICENSE' }
    s.author             = { "dev-adwhale" => "adwhale_sdk@fsn.co.kr" }
    s.source       = { :git => 'https://github.com/dev-adwhale/AdWhaleSDK_iOS.git', :tag => s.version.to_s }
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

    s.subspec 'Core' do |core|
        core.vendored_frameworks = 'AdWhaleSDK.xcframework', 'ios/CaulySDK.xcframework'
        core.dependency 'Google-Mobile-Ads-SDK', '13.0.0'
        core.dependency 'GoogleMobileAdsMediationAppLovin', '13.5.1.0'
    end

    s.subspec 'Base' do |base|
        base.dependency 'AdWhaleSDK/Core'
        base.dependency 'GoogleMobileAdsMediationInMobi', '11.1.1.1'
        base.dependency 'GoogleMobileAdsMediationVungle', '7.7.0.0'
        base.dependency 'GoogleMobileAdsMediationFyber', '8.4.4.1'
        base.dependency 'GoogleMobileAdsMediationMintegral', '8.0.7.0'
        base.dependency 'GoogleMobileAdsMediationPangle', '7.9.0.6.0'
        base.dependency 'GoogleMobileAdsMediationUnity', '4.16.6.1'
        base.dependency 'GoogleMobileAdsMediationIronSource', '9.3.0.0.1'
        base.dependency 'GoogleMobileAdsMediationMoloco', '4.4.1.0'
    end

end