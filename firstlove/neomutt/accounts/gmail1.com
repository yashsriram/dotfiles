# vim: filetype=neomuttrc

######## gmail1 account options ########
set spoolfile = "+gmail1/inbox"
set record = "+gmail1/sent"
set trash = "+gmail1/trash"
set from = "yash.3997@gmail.com"
set realname = "Yashasvi Sriram"
set sendmail = "/bin/msmtp -a gmail1"
