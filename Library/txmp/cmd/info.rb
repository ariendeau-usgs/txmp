command :'info' do |c|
  c.syntax = "txmp info [package]"
  c.description = 'Returns information about the package'
  c.action do |args, options|
    check_package(args.first)
    puts "Name: " + @name
    puts "Author: " + @author
    puts "Type: " + @catagory
    puts "Description: " + @description
    puts "URL: " + @url
  end
end