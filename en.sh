date +"%B %d %Yth year at %T" >> ~/update-log
zenity --info --title="Debupdater" --text="$USER, welcome to Debupdater! We will update your system and packages." --ok-label="Start!"
apt update >> ~/update-log && apt-get update >> ~/update-log #updating dbs 
apt-get upgrade -y >> ~/update-log && apt upgrade -y >> ~/update-log #updating progs
apt autoremove -y >> ~/update-log
echo "-------------------------------" >> ~/update-log
zenity --info --title="Debupdater" --text="All packages updated sucessfuly." --ok-label="Thanks"
