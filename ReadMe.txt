Android2Linux                                   [ gr ]

Αυτόματη ρύθμιση του scrcpy για σύνδεση της Android συσκευής στο Η/Υ με Linux.

    I use the application scrcpy https://github.com/Genymobile/scrcpy - Thank Genymobile

    Ευχαριστώ billniakas για την βοήθεια στο script ( https://github.com/CerebruxCode/Bash-Lessons ).

Το scrcpy είναι ένα "ανοιχτού" κώδικα λογισμικό, όπου κάνει screen cast από όλες τις android συσκευές σε Η/Υ, έτσι ότι βλέπεις στην android συσκευή το βλέπεις ταυτόχρονα και στην οθόνη του Η/Υ, ενώ μπορείς να ελέγχεις το κινητό από τον Η/Υ με ποντίκι και πληκτρολόγιο.

Η ρύθμισή του για τον μέσο και αρχάριο χρήστη είναι αρκετά δύσκολη. Εδώ ακριβώς έρχεται να δώσει λύση το "ανοιχτού" κώδικα Android2Linux για όλους τους χρήστες του Linux. Το Android2Linux αναλαμβάνει αυτόματα να κάνει όλες τις ρυθμίσεις, ώστε να συνδέσει το κινητό με τον Η/Υ την πρώτη φορά, όπου χρειάζεται να δώσεις την Διεύθυνση IP του κινητού σου, ενώ θα πρέπει να είναι συνδεδεμένο με USB καλώδιο και στο ίδιο τοπικό δίκτυο (LAN) με τον Η/Υ. Αυτά μόνο την πρώτη φορά.

Μετά χωρίς σύνδεση USB καλωδίου, αλλά μόνο με ασύρματη σύνδεση, κάθε φορά με το Android2Linux βλέπεις και ελέγχεις στην οθόνη του Η/Υ ότι βλέπεις και ελέγχεις στο κινητό σου, όπως βίντεο, παιχνίδια και όλες τις εφαρμογές με πλήρες έλεγχο από το ποντίκι και το πληκτρολόγιο.
ΠΡΟΫΠΟΘΕΣΕΙΣ:

    Συσκευή με λειτουργικό σύστημα Android.
    Ηλεκτρονικός Υπολογιστής με λειτουργικό σύστημα Linux.
    Συνδεδεμένες και οι δύο συσκευές στο ίδιο τοπικό δίκτυο (LAN).
    Εγκατεστημένα στον Ηλεκτρονικό Υπολογιστή τα:
        adb
        scrcpy
        zenity

Εγκατάσταση του Android2Linux:

Δώσε στο τερματικό:

git clone https://github.com/astrolavos1998/android2linux.git

και κατεβαίνει αυτόματα στον φάκελο /home/username/Android2Linux/ ή κατεβάστε το από το: https://github.com/astrolavos1998/android2linux/archive/master.zip

και βάλτε το σε όποιον φάκελο θέλετε. Μετά πηγαίνετε σε αυτό το φάκελο, ανοίξτε ένα τερματικό και γράψτε:

$ sh android2linux.sh

Επίσης μπορείτε να φτιάξετε τη δική σας συντόμευση δίνοντας την εντολή: sh /διαδρομή/φακέλου/αποσυμπίεσης/android2linux.sh Για εικονίδιο μπορείτε να κάνετε χρήση του android2linux.png που βρίσκεται μέσα στον φάκελο του Android2Linux.

See you to the other monitor :)

___________________________________________________________
Android2Linux                                   [ en ]

Setup and run the scrcpy for all androids device at linux.

First install the "scrcpy" and "adb" on your linux distro.
Download from github the android2linux and after open the
terminal in the same folder to extract the Android2Linux
and run the commands:

'''$ sh android2linux.sh'''

You can create shortcut with command: sh android2linux.sh


See you to the other monitor :)

Petros Andrianos (Astrolavos)
