class SecretCode < ApplicationRecord
  has_one :user
  scope :available_codes, ->{ where('id NOT IN (SELECT (secret_code_id) FROM users)')}

  def user_email
  	user.present? ? user.email : '-'
  end
end
