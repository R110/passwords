class PasswordChecker

  def check_length(password)
    if password.length > 7
      true
    else
      @error = "Password is less than 7 characters"
      false
    end
  end

  def contains_num_letter_symbol(password)
    if (password !~ /\d/)
      @error = "Missing a number"
      false
    elsif (password !~ /[A-Z]/)
      @error = "Missing an Uppercase letter"
      false
    elsif (password !~ /[a-z]/)
      @error = "Missing a lowercase letter"
      false
    elsif (password !~ /\W/)
      @error = "Missing a symbol"
      false
    else
      true
    end
  end

  def contains_email_user(email, password)
    email_arr = (email.tr("@", ".")).split(".")
    pw = password
    if pw.include?(email_arr[0]) ||  pw.include?(email_arr[1])
      @error = "Password includes part of email"
      false
    else
      true
    end

  end

  def check_password(email,password)
      if check_length(password) && contains_num_letter_symbol(password) && contains_email_user(email,password)
        puts "valid"
      else
        @error
      end
  end


end
