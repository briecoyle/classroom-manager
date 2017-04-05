require 'rails_helper'

RSpec.describe User, type: :model do
  describe "test" do
    it "has a valid user factory with a first_name, last_name, username, email, and password" do
      expect(build(:user)).to be_valid
    end
  end

  describe "validations" do

    it 'is invalid without a username' do
      expect(build(:user, username: nil)).not_to be_valid
    end

    it 'requires a unique username' do
      create(:user, username: 'gitflow')
      user = build(:user, username: 'gitflow')
      user.valid?
      expect(user.errors.full_messages).to include("Username has already been taken")
    end

    it 'is invalid without an email' do
      expect(build(:user, email: nil)).not_to be_valid
    end

    it 'in invalid without a valid email (ex. user@gmail.com)' do
      expect(build(:user, email: "Am I an email?")).not_to be_valid
    end

    it 'requires a unique email' do
      create(:user, email: 'test@email.com')
      user = build(:user, email: 'test@email.com')
      user.valid?
      expect(user.errors.full_messages).to include("Email has already been taken")
    end

    it 'is invalid without a password' do
      expect(build(:user, email: nil)).not_to be_valid
    end

    it 'is only valid when the password is a minimum of 8 characters' do
      expect(build(:user, password: "1234567")).not_to be_valid
      expect(build(:user, password: "12345678")).to be_valid
    end

    it 'encrypts the password upon saving' do
      user = build(:user)
      user.save
      expect(user.encrypted_password).to be_truthy
      expect(user.encrypted_password).not_to eq(user.password)
    end
  end

  describe 'relationships' do


  end

  describe 'class methods' do


  end

  describe 'instance methods' do

  end

end
