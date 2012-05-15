command :'create' do |c|
  c.syntax = 'txmp create <name> [options]'
  c.description = 'Creates a txmp package'
  c.option "--bundle", "selects the bundle template"
  c.option "--theme", "selects the theme option"
  c.action do |args, options|
    package = args.first
    result = File.exists?("Packages/#{args.first}.rb")
    if result == true
      puts "There is package named #{args.first}."
      puts "Try txmp edit #{args.first}."
      exit
    end
    if options.bundle
      template = "#{TXMP_RESOURCES}/Templates/bundle.rb"
    elsif options.theme
      template = "#{TXMP_RESOURCES}/Templates/theme.rb"
    else
      template = "#{TXMP_RESOURCES}/Templates/blank.rb"
    end
    set_editor()
    FileUtils.cp(template, TXMP_PACKAGES + "/#{package}.rb")
    system("#{@editor} #{TXMP_PACKAGES}/#{package}.rb")
  end
end
alias_command :'create theme', :'create', '--theme'
alias_command :'create bundle', :'create', '--bundle'