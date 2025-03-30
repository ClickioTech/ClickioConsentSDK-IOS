#

Pod::Spec.new do |spec|

  spec.name         = "ClickioConsentSDKManager"
  
  spec.version      = "1.0.4"
  
  spec.summary      = "Native SDK for managing user consents, integrating a WebView-based consent dialog into iOS apps for streamlined privacy compliance."
  
  spec.description  = <<-DESC
                      ClickioConsentSDK is a robust privacy-focused toolkit designed to simplify GDPR, CCPA, and global compliance for iOS apps. It features a fully customizable WebView-based consent dialog that seamlessly integrates with your app's UI while dynamically adapting to regional regulations. Key capabilities include:

                      * ATT-CMP Flow Orchestration: Optional App Tracking Transparency (ATT) pre-permission prompts with logic to conditionally display consent dialogs based on user choices.
                      * Real-Time Compliance: Automatic updates for consent texts/purposes via centralized configurations without app store resubmissions.
                      * Granular Control: Capture user preferences for ads, analytics, and data sharing with purpose/VendorID-level consent tracking.
                      * Cross-Platform Sync: Export standardized TC/AC Strings and Google Consent Mode signals for backend/services alignment.
                      * Developer-Centric: Objective-C, SwiftUI, UIKit support and extensible web-to-native communication layer.

                      Ideal for apps requiring scalable privacy management with minimal code footprint, ensuring audit-ready compliance across jurisdictions.'
                      DESC
  
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  spec.authors      = { 'Clickio' => 'app-dev@clickio.com' }
  
  spec.homepage     = "https://clickio.com/"
  
  spec.platform     = :ios, "15.0"
  
  spec.source       = { :git => "https://github.com/ClickioTech/ClickioConsentSDK-IOS.git", :tag => "#{spec.version}" }
  
  spec.vendored_frameworks = 'ClickioConsentSDKManager.xcframework'
  
  spec.weak_frameworks = "AppTrackingTransparency", "Combine", "WebKit", "UIKit", "Foundation"
  
  spec.pod_target_xcconfig = { 'SWIFT_VERSION' => '5.0' }

end
