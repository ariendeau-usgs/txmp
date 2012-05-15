command :'doctor' do |c|
  c.syntax = 'txmp doctor'
  c.description = 'visit if things are not working'
  c.action do |args, options|
    if which_s "ruby"
      puts "You have ruby!"
    else
      puts "******You need to install ruby.******"
      puts "Usually this means you have not installed xCode."
      puts "You can download it from the app store or developer.apple.com"
    end
    if which_s "git"
      puts "You have git!"
    else
      puts "******You need to install git.******"
      puts "Usually this means you have not installed xCode."
      puts "You can download it from the app store or developer.apple.com"
    end
    if File.directory?(TXMP_SUPPORT_PATH + "/Bundles") == false
      puts "There is no Bundles directory in #{TXMP_SUPPORT_PATH}."
    else
      puts "You have a Bundles directory in #{TXMP_SUPPORT_PATH}"
    end
    if File.directory?(TXMP_SUPPORT_PATH + "/Themes") == false
      puts "There is no Themes directory in #{TXMP_SUPPORT_PATH}."
    else
      puts "You have a Themes directory in #{TXMP_SUPPORT_PATH}"
    end
  end
end