Pod::Spec.new do |s|

    s.name              = 'AGFramework'
    s.version           = '1.0.1'
    s.summary           = 'Assignment Dynamic framework'
    s.homepage          = 'https://github.com/AnoopAGunaga/AGFramework'
    s.license           = {
        :type => 'MIT',
        :file => 'LICENSE'
    }
    s.author            = {
        'YOURNAME' => 'anoop.gunaga@robosoftin.com'
    }
    s.source            = {
        :git => 'https://github.com/AnoopAGunaga/AGFramework/tree/1.0.1',
        :tag => '1.0.1'
    }
    s.source_files      = 'AGFramework/*.{m,h}', 'AGFramework/*/*.{m,h}', 'AGFramework/*/*/*.{m,h}'

    s.requires_arc      = true
    s.framework    = 'SystemConfiguration'
    s.ios.deployment_target  = '8.0'
    s.ios.framework  = 'UIKit'
end
