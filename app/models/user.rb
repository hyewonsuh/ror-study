class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  after_destroy :ensure_an_admin_remains

  # bcrypt-ruby gem : password와 password 확인 필드가 같은지도 검증
  has_secure_password

  private
    def ensure_an_admin_remains
      if User.count.zero?
        raise "Can't delete last user"
      end
    end
end
