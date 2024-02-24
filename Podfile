# Uncomment the next line to define a global platform for your project
 platform :ios, '11.0'

#source 'https://github.com/auzankyu/PrivateSpecRepo.git'
source 'https://cdn.cocoapods.org/'

def remote_pods
  pod 'Language', :git => 'https://github.com/auzankyu/LocaleFramework.git', :branch => 'main'
  pod 'Core', :git => 'https://github.com/auzankyu/dummy-core.git', :tag => '1.0.0'
  pod 'CoreNavigation', :git => 'https://github.com/auzankyu/dummy-core-nav.git', :tag => '1.0.0'
end

def local_pods
  pod 'Language', :path => '../LocaleFramework'
  pod 'Core', :path => '../dummy-core'
  pod 'CoreNavigation', :path => '../dummy-core-nav'
end

target 'MainApps' do
  use_frameworks!

  # Pods for MainApps
  remote_pods
end

post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '11.0'
               end
          end
   end
end

