Pod::Spec.new do |s|

    s.name              = 'AGFramework'
    s.version           = '1.0.0'
    s.summary           = 'Assignment Dynamic framework'
    s.homepage          = 'https://github.com/AnoopAGunaga/AGFramework'
    s.license           = {
        :type => 'MIT',
        :file => 'LICENSE'
    }
    s.author            = {
        'iOS Dev team' => 'anoop.gunaga@robosoftin.com'
    }
    s.platform = :ios, '8.0'
    s.ios.deployment_target = '8.0'
    s.source            = {
        :git => 'https://github.com/AnoopAGunaga/AGFramework.git',
        :tag => '1.0.0'
    }
    s.source_files      = 'AGFramework/*.{h}', 'AGFramework/*/*.{h}', 'AGFramework/*/*/*.{h}'
    
    s.frameworks = 'AGFramework.framework'
    s.requires_arc      = true
    s.framework    = 'SystemConfiguration'
    s.ios.deployment_target  = '8.0'
    s.ios.framework  = 'UIKit'
    s.xcconfig = {'OTHER_LDFLAGS' => '-ObjC'}

end
