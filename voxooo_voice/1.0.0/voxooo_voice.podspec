Pod::Spec.new do |s|
	s.name                  = "voxooo_voice"
	s.version               = "1.0.0"
	s.summary               = "voxooo voice helper for iOS"
	s.description           = "voxooo With Opus."
	s.homepage              = "http://www.vox.ooo"

	s.license      		= { 
   				 	:type => "Commercial", 
    				 	:text => "Copyright © 2011-2017 voxooo, Inc. All rights reserved."
				  }
	s.author                = { "Volkan UGUR" => "volkanugr@gmail.com" }

	
	s.source       		= { :http => "https://dl.dropbox.com/s/lkgpserdjdgqftx/voxooo_voice.tar.bz2" }

	s.platform              = :ios, "9.0"
	s.requires_arc          = false

	s.preserve_paths        = "voxooo_voice.framework/*"
	s.public_header_files   = "voxooo_voice.framework/Versions/A/Headers/**/*.{h,hpp}"
	s.source_files		= "voxooo_voice.framework/Versions/A/Headers/**/*.{h,hpp}"
	s.vendored_frameworks   = "voxooo_voice.framework"
	
	s.libraries 		= 'stdc++'
	s.frameworks            = "AudioToolbox", "AVFoundation", "CFNetwork",  "CoreMedia"

  	s.xcconfig = {
        'GCC_PREPROCESSOR_DEFINITIONS' => 'PJ_AUTOCONF=1',
  	}
end
