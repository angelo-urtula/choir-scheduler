class ChoirMember < ApplicationRecord
    has_secure_password

    def self.create_from_omniauth(auth)
        user = ChoirMember.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(16)
        end
    end
end
