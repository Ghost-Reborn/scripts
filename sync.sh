clear
printf "Enter Threads: "
read threads
clear
repo sync -j$threads --force-sync --no-clone-bundle --no-tags -v
