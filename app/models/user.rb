class User < ApplicationRecord
    has_secure_password
    
    # 必須チェック
    validates :email, presence: true
    validates :password_digest, presence: true
end
