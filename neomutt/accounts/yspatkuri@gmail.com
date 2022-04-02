# vim: filetype=neomuttrc

######## yspatkuri@gmail.com ########
set spoolfile = "+yspatkuri@gmail.com/inbox"
set record = "+yspatkuri@gmail.com/sent"
set trash = "+yspatkuri@gmail.com/trash"
set from = "yspatkuri@gmail.com"
set realname = "Yashasvi Sriram"
set sendmail = "/bin/msmtp -a yspatkuri@gmail.com"
