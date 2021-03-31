require 'rubygems'
require 'selenium-webdriver'
require 'appium_lib'

env = ENV['PLATFORM_NAME'].downcase

case env
when 'android'
  caps = {}
  caps['app'] = "#{Dir.pwd}/apps/android/app-android-calculator.apk"
  caps['platformName'] = 'Android'
  caps['appPackage'] = 'com.example.leonardomenezes.simplecalculatorandroid'
  caps['appActivity'] = 'com.example.leonardomenezes.simplecalculatorandroid.MainActivity'
  caps['automationName'] = 'UiAutomator2'

when 'ios'
  caps = {}
  caps['app'] = "#{Dir.pwd}/apps/ios/SimpleCalculator.app"
  caps['platformName'] = 'iOS'
  caps['platformVersion'] = '14.4'
  caps['deviceName'] = 'iPhone 11'
  caps['automationName'] = 'XCUITest'
else
  raise("Plataforma não suportada #{ENV['PLATFORM_NAME']}")
end

=begin
$driver = Selenium::WebDriver.for(:remote,
                                  :url => "http://localhost:4725/wd/hub",
                                  :desired_capabilities => caps)
=end

$driver = Appium::Driver.new({
                               'caps' => caps,
                               'appium_lib' => {
                                 :server_url => "http://localhost:4725/wd/hub"
                               }},true)

# Appium::Driver.new(caps, true )
# Appium.promote_appium_methods Object


