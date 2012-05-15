def set_editor()
  if which_s "mate"
    @editor = "/usr/local/bin/mate" 
  elsif which_s "edit"
    @editor = "/usr/local/bin/edit"
  else
    @editor = "/usr/bin/vi"
  end
end
