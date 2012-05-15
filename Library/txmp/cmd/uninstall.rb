command :'uninstall' do |c|
  c.syntax = 'txmp uninstall <package>'
  c.description = 'Removes packages that are currently installed'
  c.action do |args, options|
    check_package(args.first)
    if @catagory == 'Theme'
      item_location = '/Themes'
    elsif @catagory == 'Bundle'
      item_location = '/Bundles'
    end
    FileUtils.cd(TXMP_SUPPORT_PATH + item_location)
    result = File.exists?(@filename)
    if result == true
      FileUtils.rm(@filename)
      puts "The monkeys have uninstalled " + args.first
    else
      puts "The monkeys can't find this package! It must not be installed!"
      exit
    end
  end
end