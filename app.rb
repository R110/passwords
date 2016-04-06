require_relative "lib/passwordchecker.rb"

PasswordChecker.new.check_password("mike@gmai.com","abc1234@")
PasswordChecker.new.check_password("mike@gmai.com","abcd1234")
PasswordChecker.new.check_password("mike@gmail.com","mike@1234Alib/")
PasswordChecker.new.check_password("mike@gmail.com","mike@alfonso")
PasswordChecker.new.check_password("mike@gmail.com","Ana123@gmail")
PasswordChecker.new.check_password("mike@gmail.com","123asdfsfdcom")
