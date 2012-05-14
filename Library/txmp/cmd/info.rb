command :'info' do |c|
  c.syntax = "txmp info [package]"
  c.description = 'Returns information about the package'
  c.action do |args, options|
    package = "Packages/" + args.first + ".rb"
    require package
    puts "Name: " + PACKAGE_NAME
    puts "Type: " + PACKAGE_CATAGORY
    puts "Description: " + PACKAGE_DESCRIPTION
    puts "URL: " + PACKAGE_URL
  end
end