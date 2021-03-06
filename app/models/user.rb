# Model representing the User Table.
class User < ApplicationRecord
  before_save(:normalize_attributes)

  validates(:name, { presence: true, length: { maximum: 50 } })

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates(:email, { presence: true, length: { maximum: 100 },
                      format: { with: VALID_EMAIL_REGEX },
                      uniqueness: { case_sensitive: false } })

  has_secure_password
  validates(:password, { presence: true, length: { minimum: 6 } })

  private

  def normalize_attributes
    self.email = self.email.downcase
  end
end
