def download full_url, to_here
  writeOut = open(to_here, "wb")
  writeOut.write(open(full_url).read)
  writeOut.close
end