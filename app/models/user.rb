class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  # bcrypt-ruby gem : password와 password 확인 필드가 같은지도 검증
  has_secure_password

end
