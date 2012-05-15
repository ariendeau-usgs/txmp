command :edit do |c|
  c.syntax = "txmp edit <package>"
  c.description = "Allows you to edit a package file"
  c.action do |args, options|
    package = args.first
    result = File.exists?("Packages/#{args.first}.rb")
    if result == false
      puts "There is no package named #{args.first}."
      puts "`Try txmp create #{args.first}`"
      exit
    end
    set_editor()
    system("#{@editor} #{TXMP_PACKAGES}/#{package}.rb")
  end  
end