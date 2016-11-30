Pod::Spec.new do |s|

  s.name         = "AGFramework"
  s.version = "1.0.0"
  s.summary      = "AGFramework."

  s.description  = <<-DESC
                    Dyanmic Framework assignment
                   DESC

  s.homepage     = "https://github.com/AnoopAGunaga/AGFramework/"

  # Licence documenting goes here
    s.license           = {
        :type => 'MIT',
        :file => 'LICENSE'
    }

  s.author       = { "AnoopAG' => 'anoop.gunaga@robosoftin.com" }
  s.platform     = :ios, "8.0"
  s.ios.deployment_target = "8.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/AnoopAGunaga/AGFramework.git", :tag => "1.0.0" }

  # The product of the vendor
  s.ios.vendored_frameworks = 'AGFramework.framework'

  s.ios.exclude_files = '.git', '.gitignore'

  s.xcconfig = {'OTHER_LDFLAGS' => "-ObjC"}

end
