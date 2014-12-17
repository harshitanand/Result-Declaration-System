        zenity --forms --title="Add Your Data" \
	--text="Enter Your Information" \
	--separator="," \
	--add-entry="Name" \
	--add-entry="Percentage in 12th" \
	--add-entry="Email" \
	--add-calendar="Date Of Birth" \
	--add-entry="math" \
	--add-entry="physics" \
	--add-entry="chemistry"\
	--add-entry="Gender(eg:M/F)" \
	--add-entry="Category(eg:GEN/SC/ST/OBC)">> addr.csv
check=$?
if [ "$check" = "1" -o "$check" = "5" ]
then 
	zenity  --info \
		--text="OOPS! You are not registered !"
else
	zenity  --info \
		--text="You are successfully registered !"
fi
