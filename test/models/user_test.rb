require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new({ name: 'Example User', email: 'user@example.com',
                       password: 'foobar', password_confirmation: 'foobar' })
  end

  test 'should be valid' do
    assert(@user.valid?)
  end

  test 'name should be present' do
    @user.name = ' '
    assert_not(@user.valid?)
  end

  test 'email should be present' do
    @user.email = ' '
    assert_not(@user.valid?)
  end

  test 'name should not be larger than 50 characters' do
    @user.name = 'a' * 51
    assert_not(@user.valid?)
  end

  test 'should allow 50 character names' do
    @user.name = 'a' * 50
    assert(@user.valid?)
  end

  test 'email should not be larger than 100 characters' do
    username = 'a' * 89
    @user.email = "#{username}@example.com"
    assert_not(@user.valid?)
  end

  test 'should allow 100 character emails' do
    username = 'a' * 88
    @user.email = "#{username}@example.com"
    assert(@user.valid?)
  end

  test 'email should accept valid email addresses' do
    valid_emails = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                      first.last@foo.jp alice+bob@baz.cn]

    valid_emails.each do |valid_email|
      @user.email = valid_email
      assert(@user.valid?, "#{valid_email} should be valid")
    end
  end

  test 'email should reject invalid email addresses' do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com]

    invalid_addresses.each do |invalid_email|
      @user.email = invalid_email
      assert_not(@user.valid?, "#{invalid_email} should not be valid")
    end
  end

  test 'email addresses should be unique' do
    duplicate_user = @user.dup
    @user.save
    assert_not(duplicate_user.valid?)
  end

  test 'email addresses should be case-insensitive for uniqueness' do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not(duplicate_user.valid?)
  end

  test 'should save emails as lower-case' do
    mixed_case_email = 'Foo@ExAMPle.CoM'
    @user.email = mixed_case_email
    @user.save
    assert_equal(mixed_case_email.downcase, @user.reload.email)
  end

  test 'password should exist' do
    password = ' ' * 6
    @user.password = password
    @user.password_confirmation = password
    assert_not(@user.valid?)
  end

  test 'password should be atleast 6 characters' do
    password = 'a' * 5
    @user.password = password
    @user.password_confirmation = password
    assert_not(@user.valid?)
  end
end
