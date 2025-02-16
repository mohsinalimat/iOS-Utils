Pod::Spec.new do |s|

  s.name = "SurfUtils"
  s.version = "10.0.0"
  s.summary = "Contains a set of utils in subspecs"
  s.description  = <<-DESC
  Contains:
    - Extension for easy use NSAttributedString
    - Method for detection JailBreak
    - Manager for easily use vibration features
    - Extension for building query string from dictionary
                   DESC

  s.homepage  = "https://github.com/surfstudio/ios-utils"
  s.license  = { :type => "MIT", :file => "LICENSE" }
  s.author  = { "Alexander Kravchenkov" => "akravchenkov@surfstudio.co" }
  s.source = { :git => "https://github.com/surfstudio/ios-utils.git", :tag => "#{s.version}" }
  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'

  s.subspec 'StringAttributes' do |sp|
    sp.source_files = 'Utils/Utils/String/*.swift'
    sp.framework = 'Foundation', 'UIKit'
  end

  s.subspec 'BrightSide' do |sp|
    sp.source_files = 'Utils/Utils/BrightSide/BrightSide.swift'
    sp.framework = 'Foundation'
  end

  s.subspec 'VibrationFeedbackManager' do |sp|
    sp.source_files = 'Utils/Utils/VibrationFeedbackManager/*.swift'
    sp.framework = 'AudioToolbox'
  end

  s.subspec 'QueryStringBuilder' do |sp|
    sp.source_files = 'Utils/Utils/Dictionary/Dictionary+QueryStringBuilder.swift'
    sp.framework = 'Foundation'
  end

  s.subspec 'BlurBuilder' do |sp|
    sp.source_files = 'Utils/Utils/UIView/UIView+BlurBuilder.swift'
    sp.framework = 'UIKit'
  end

  s.subspec 'RouteMeasurer' do |sp|
    sp.source_files = 'Utils/Utils/RouteMeasurer/RouteMeasurer.swift'
    sp.framework = 'MapKit'
  end

  s.subspec 'SettingsRouter' do |sp|
    sp.source_files = 'Utils/Utils/SettingsRouter/SettingsRouter.swift'
    sp.framework = 'Foundation'
  end

  s.subspec 'AdvancedNavigationStackManagement' do |sp|
    sp.source_files = 'Utils/Utils/UINavigationController/UINavigationController+AdvancedNavigationStackManagement.swift'
    sp.framework = 'UIKit'
  end

  s.subspec 'WordDeclinationSelector' do |sp|
    sp.source_files = 'Utils/Utils/WordDeclinationSelector/WordDeclinationSelector.swift'
    sp.framework = 'Foundation'
  end

  s.subspec 'ItemsScrollManager' do |sp|
    sp.source_files = 'Utils/Utils/ItemsScrollManager/ItemsScrollManager.swift'
    sp.framework = 'UIKit'
  end

  s.subspec 'KeyboardPresentable' do |sp|
    sp.source_files = 'Utils/Utils/KeyboardPresentable/*.swift'
    sp.framework = 'UIKit'
  end

  s.subspec 'SkeletonView' do |sp|
    sp.source_files = 'Utils/Utils/SkeletonView/*.swift', 'Utils/Utils/UIView/UIView+Masking.swift'
    sp.framework = 'UIKit'
  end

  s.subspec 'OTPField' do |sp|
    sp.source_files = 'Utils/Utils/OTPField/*.swift', 'Utils/Utils/OTPField/*.xib', 'Utils/Utils/UIView/UIView+XibSetup.swift'
    sp.framework = 'UIKit'
  end

  s.subspec 'XibView' do |sp|
    sp.source_files = 'Utils/Utils/UIView/UIView+XibSetup.swift'
    sp.framework = 'UIKit'
  end

  s.subspec 'UIImageExtensions' do |sp|
    sp.source_files = 'Utils/Utils/UIImage/UIImageExtensions.swift'
    sp.framework = 'UIKit'
  end

  s.subspec 'CommonButton' do |sp|
    sp.source_files = 'Utils/Utils/CommonButton/CommonButton.swift', 'Utils/Utils/UIImage/UIImageExtensions.swift'
    sp.framework = 'UIKit'
  end

end
