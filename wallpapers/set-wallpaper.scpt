on run argv
  if (count of argv) is 0 then
    return "Error: Please provide the path to an image file."
  end if

  set imagePath to item 1 of argv

  tell application "System Events"
    -- Get a list of all desktops
    set theDesktops to a reference to every desktop

    -- Loop through each desktop and set the wallpaper individually
    repeat with aDesktop in theDesktops
      set picture of aDesktop to (POSIX file imagePath)
    end repeat
  end tell
end run
