#
# Be sure to run `pod lib lint MultiActionDemoViewController.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MultiActionDemoViewController'
  s.version          = '1.0.0'
  s.summary          = 'A simple view controller with buttons and associated actions to simplify testing.'
  s.description      = <<-DESC
I have a frequent need for loading an app that does a number of specified actions upon clicking a 
button. To simplify this process for future use, just subclass `MultiActionDemoViewController`
(or instantiate one and add some `Action`s). It will handle all the boilerplate layout of the
buttons for you.

That's really all there is to it.
                       DESC

  s.homepage         = 'https://github.com/jonstaff/MultiActionDemoViewController'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Jonathon Staff' => 'jon@nplexity.com' }
  s.source           = { :git => 'https://github.com/jonstaff/MultiActionDemoViewController.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'MultiActionDemoViewController/Classes/**/*'
end
