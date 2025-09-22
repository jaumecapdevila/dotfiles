on run argv
  if (count of argv) is 0 then
    return "Error: Please provide the path to an image file."
  end if

  set imagePath to item 1 of argv

  tell application "System Events"
    -- Tell every desktop directly to change its picture
    tell every desktop to set picture to (POSIX file imagePath)
  end tell
end run
