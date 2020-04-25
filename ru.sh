echo Введите название окна:
read title
echo Введите текст в окне:
read text
echo Введите название кнопки:
read button
echo """
zenity --info --text=\"$text\" --title=\"$title\"  --ok-label=\"$button\"""" > /home/$USER/windower/code
zenity --info --text="$text" --title="$title"  --ok-label="$button"
