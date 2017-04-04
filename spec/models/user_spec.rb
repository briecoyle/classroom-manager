require 'rails_helper'

RSpec.describe User, type: :model do
  it "has a valid user factory"

  it 'is valid with a first_name, last_name, username, email, and password'

  it 'is invalid without a username'

  it 'is invalid without an email'

  it 'in invalid without a valid email (ex. user@gmail.com)'

  it 'is invalid without a password'

  it 'is only valid when the password is a minimum of 8 characters'

  it 'encrypts the password upon saving'

end
