require_relative "../lib/passwordchecker.rb"

RSpec.describe "Password Checker" do
  let(:new_pass) {PasswordChecker.new}

  it "Checks for Uppercase" do
    expect( new_pass.check_password("mike@gmai.com","abc1234@") ).to eq("Missing an Uppercase letter")
  end

  it "Checks for lowercase" do
    expect( new_pass.check_password("mike@gmai.com","ABC1234@") ).to eq("Missing a lowercase letter")
  end

  it "Checks for number" do
    expect( new_pass.check_password("mike@gmai.com","abcsWWA@") ).to eq("Missing a number")
  end

  it "Checks for symbol" do
    expect( new_pass.check_password("mike@gmai.com","aAbcS1234") ).to eq("Missing a symbol")
  end

  it "Checks for Uppercase" do
    expect( new_pass.check_password("mike@gmai.com","abS2A@mike") ).to eq("Password includes part of email")
  end


end
