# vim: filetype=neomuttrc

######## yash.3997@gmail.com account options ########
set spoolfile = "+yash.3997@gmail.com/inbox"
set record = "+yash.3997@gmail.com/sent"
set trash = "+yash.3997@gmail.com/trash"
set from = "yash.3997@gmail.com"
set realname = "Yashasvi Sriram"
set sendmail = "/bin/msmtp -a yash.3997@gmail.com"
