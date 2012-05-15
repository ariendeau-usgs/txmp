command :'install' do |c|
  c.syntax = 'txmp install <name>'
  c.description = 'Installs a package for Textmate'
  c.action do |args, options|
    check_install(args.first)
    if @catagory == 'Theme'
      FileUtils.cd(TXMP_SUPPORT_PATH + '/Themes')
      download(@url, @filename)
      puts "The monkeys have installed " + args.first   
    elsif @catagory == 'Bundle'
      FileUtils.cd(TXMP_SUPPORT_PATH + '/Bundles')
      system("git clone #{@url} #{args.first}.tmbundle")
      puts "The monkeys have installed " + args.first  
    end
  end
end