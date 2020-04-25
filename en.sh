echo Name the window:
read title
echo Enter the text on your window:
read text
echo Name the button on bottom:
read button
echo """
zenity --info --text=\"$text\" --title=\"$title\"  --ok-label=\"$button\"""" > /home/$USER/windower/code
zenity --info --text="$text" --title="$title"  --ok-label="$button"
