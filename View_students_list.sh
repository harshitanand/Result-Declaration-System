
a=$(zenity --entry \
    --title="Entry" \
    --text="Select the branch to display the list :
	    1.co for Computer Science
	    2.st for Statistics
	    3.ph for Physics
	    4.ch for Chemistry
	    5.ma for Mathematics
	    6.ge for Geophysics")

case $a in
        "co") libreoffice /var/lib/mysql/Computer_students.csv;;
        "st") libreoffice /var/lib/mysql/Statistics_students.csv;;
        "ph") libreoffice /var/lib/mysql/Physics_students.csv;;
        "ch") libreoffice /var/lib/mysql/Chemistry_students.csv;;
        "ma") libreoffice /var/lib/mysql/Mathematics_students.csv;;
        "ge") libreoffice /var/lib/mysql/Geophysics_students.csv;;
	   *) zenity --info \
	      --text="please enter a valid subject name..";;
esac

