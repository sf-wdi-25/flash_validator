class User < ActiveRecord::Base
  has_secure_password

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

  # Validations
  # TODO: Enter validations for:
  # 1. first name is present
  # 2. last name is present
  # 3. email is present
  # 4. all three must not be over 255 characters
  # 5. email must be unique
  # 6. email must have an @ symbol
  # 7. password must be at least 8 characters
  # 8. password can only be letters and numbers



end
