Pod::Spec.new do |s|

    s.name              = 'AGFramework'
    s.version           = '1.0.2'
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
        :git => 'https://github.com/AnoopAGunaga/AGFramework.git',
        :tag => '1.0.2'
    }
    s.source_files      = 'AGFramework/*.{m,h}', 'AGFramework/*/*.{m,h}', 'AGFramework/*/*/*.{m,h}'
    s.public_header_files =  'AGFramework/*.h', 'AGFramework/FrameworkEvent/*.h'
    s.private_header_files = 'AGFramework/FrameworkException/*.h', 'AGFramework/FrameworkUtilities/*.h', 'AGFramework/FrameworkUtilities/*/*.h'

    s.requires_arc      = true
    s.framework    = 'SystemConfiguration'
    s.ios.deployment_target  = '8.0'
    s.ios.framework  = 'UIKit'
end
