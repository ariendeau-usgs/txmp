#
# Download files
#
def download full_url, to_here
  writeOut = open(to_here, "wb")
  writeOut.write(open(full_url).read)
  writeOut.close
end

#
# Change Directory to Textmate Themes
#
def go_themes
  FileUtils.cd(TXMP_SUPPORT_PATH + "/themes")
end

#
# Change Directory to Textmate Bundles
#
def go_bundles
  FileUtils.cd(TXMP_SUPPORT_PATH + "/bundles")
end

#
# Check if package is supported
#

def check_package(item)
  package = "Packages/"+ item +".rb"
  result = File.exists?(package)
  if result == true
    require package
  else
    puts "the monkeys can't find your package"
    exit
  end
end

#
# Check if package is installed
#
def check_install(item)
  check_package(item)
  if @catagory == 'Theme'
    item_location = '/Themes'
  elsif @catagory == 'Bundle'
    item_location = '/Bundles'
  end
  FileUtils.cd(TXMP_SUPPORT_PATH + item_location)
  result = File.exists?(@filename)
  if result == true
    puts "The monkeys found that this package is currently installed"
    exit
  end
end

#
# which command
# Adapted from the guys @homebrew.
#
def which cmd, silent=false
  cmd += " 2>/dev/null" if silent
  path = `/usr/bin/which #{cmd}`.chomp
  if path.empty?
    nil
  else
    Pathname.new(path)
  end
end

#
# which silent
#
def which_s cmd
  which cmd, true
end

