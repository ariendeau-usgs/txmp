#
# Lists all the currently installed bundles
#
command :list do |c|
  c.syntax = 'txmp list [options]'
  c.description = 'Lists currently installed bundles and themes'
  c.option '--bundles', 'shows only the bundles'
  c.option '--themes', 'shows only the themes'
  c.action do |args, options|
    if options.bundles
      FileUtils.cd(TXMP_SUPPORT_PATH + "/bundles")
      @bundles = Dir.glob("*.tmbundle")
      @bundles.each do |bundle|
        puts bundle
      end
    elsif options.themes
      FileUtils.cd(TXMP_SUPPORT_PATH + "/themes")
      @themes = Dir.glob("*.tmTheme")
      @themes.each do |theme|
        puts theme
      end
    else
      puts "** BUNDLES **"
      FileUtils.cd(TXMP_SUPPORT_PATH + "/bundles")
      @bundles = Dir.glob("*.tmbundle")
      @bundles.each do |bundle|
        puts bundle
      end
      puts " "
      puts "** THEME **"
      FileUtils.cd(TXMP_SUPPORT_PATH + "/themes")
      @themes = Dir.glob("*.tmTheme")
      @themes.each do |theme|
        puts theme
      end
    end
  end
end
alias_command :'list themes', :'list', '--themes'
alias_command :'list bundles', :'list', '--bundles'