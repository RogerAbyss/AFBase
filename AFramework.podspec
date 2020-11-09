#
# Be sure to run `pod lib lint AFramework.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AFramework'
  s.version          = '0.1.0'
  s.summary          = 'A short description of AFramework.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/roger_ren@qq.com/AFramework'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'roger_ren@qq.com' => 'roger_ren@qq.com' }
  s.source           = { :git => 'https://github.com/roger_ren@qq.com/AFramework.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.static_framework = true
  # s.ios.deployment_target = '8.0'
  s.ios.deployment_target = '10.0'

  s.source_files = 'AFramework/Classes/**/*'

  s.dependency 'Moya', '14.0.0'
  s.dependency 'Moya/RxSwift', '14.0.0'
  s.dependency 'RxCocoa', '5.1.1'
  s.dependency 'SwiftyUserDefaults', '4.0.0'
  s.dependency 'SwiftyJSON'
  s.dependency 'Kingfisher'
  s.dependency 'IQKeyboardManagerSwift'
  s.dependency 'CryptoSwift', '1.3.2'
  s.dependency 'SwiftyRSA', '1.5.0'
  s.dependency 'ReachabilitySwift'
  s.dependency 'SVProgressHUD'
  s.dependency 'Yams'
  s.dependency 'SnapKit', '5.0.1'
  s.dependency 'MJRefresh'
  s.dependency 'SwifterSwift', '5.2.0'

  s.dependency 'Cache', '5.3.0'
  s.dependency 'Sheeeeeeeeet', '3.1.1'
  # 多语言切换
  s.dependency 'Localize-Swift', '3.1.0'
  # 控制台
  s.dependency 'SwiftyBeaver', '1.9.2'
  s.dependency 'EmptyDataSet-Swift', '4.2.0'

  # 计划优化
  s.dependency 'PopupDialog', '1.1.1' # ios-10

   s.resource_bundles = {
     'AFramework' => ['AFramework/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
