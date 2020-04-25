date +"%d %B %Y-го года в %T" >> update-log
zenity --info --title="Debupdater" --text="$USER, приветствуем вас в Debupdater! Сейчас мы обновим вашу систему и пакеты." --ok-label="Обновить систему"
apt update >> update-log && apt-get update >> update-log #updating dbs 
apt-get upgrade -y >> update-log && apt upgrade -y >> update-log #updating progs
apt autoremove -y  >> update-log
echo "-------------------------------" >> update-log
zenity --info --title="Debupdater" --text="Обновления выполнены успешно." --ok-label="Спасибо"
