class User < ActiveRecord::Base
  has_secure_password

  def self.confirm(params)
    @user = User.find_by({email: params[:email]})
    @user.try(:authenticate, params[:password])
  end

  # Validations
  validates :first_name, :last_name, :email, :password_digest,
  presence: true,
  length: { maximum: 255,
    message: "has exceeded maximum length of 255 characters"}

  validates_uniqueness_of :email

  validates :email, format: { with: /@/,
    message: "must be a valid"}

  validates_length_of :password, minimum: 8

  validates :password,
    format: { with: /\A[a-zA-Z1-9]+\z/,
      message: "only allows letters and numbers" }


end
