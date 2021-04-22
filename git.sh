printf "Enter user name: "
read user_name
git config --global user.name $user_name
printf "Enter email: "
read user_email
git config --global user.email $user_email
printf "Save user name and password? \n 1 - save \n\n Enter choice: "
read choice
if [ $choice == 1 ]
then
	git config --global credential.helper store
else
	git config --global credential.helper
fi
