command :search do |c|
  c.syntax = 'txmp search <package>'
  c.description = 'Searches through the current avalible packages'
  c.action do |args, options|
    FileUtils.cd(TXMP_LIBRARY_PATH)
    search = args.first
    @packages = Dir.glob('Packages/*.rb')
    @packages.each do |package|
      if package.match(/(?i)(.*)#{search}(.*)/)
        require package
        puts @name
      end
    end
  end
end