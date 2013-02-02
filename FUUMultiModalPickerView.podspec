Pod::Spec.new do |s|
  s.name = "FUUMultiModalPickerView"
  s.version = "0.0.2"
  s.summary = "Creates an UIPickerView nested within an UIActionSheet with Done/Cancel Toolbar."
  s.description  = <<-DESC
  In comparision to BSModalPickerView it supports multiple components.
  DESC
  s.homepage     = "https://github.com/hijolan/FUUMultiModalPickerView"

  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { "Constantin Lebrecht" => "constantin@monavari.de" }
  s.source = {
    :git => "https://github.com/hijolan/FUUMultiModalPickerView.git",
    :tag => "0.1"
  }

  s.platform = :ios, '4.0'
  s.source_files = '*.{h,m}'
  s.requires_arc = true

  s.dependency 'BSModalPickerView', '~> 0.1'
end