command :'delete' do |c|
  c.syntax = "txmp delete <package>"
  c.description = "Deletes a txmp package"
  c.action do |args, options|
    package = args.first + ".rb"
    FileUtils.cd(TXMP_PACKAGES)
    FileUtils.rm(package)
    puts "deleted Test"
  end
end