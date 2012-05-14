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
# Change Directory to Textmate packages
#
def go_packages
  FileUtils.cd(TXMP_LIBRARY_PATH + "/Packages")
end

