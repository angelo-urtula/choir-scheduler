class ChoirMember < ApplicationRecord
    has_secure_password
    validates :name, presence: true
    validates :voice, presence: true, :inclusion => %w(soprano alto tenor base)
    validates_format_of :phone_number, :with => /[0-9]{10}/
    validates :email, uniqueness: true
    validates :height, presence: true, :inclusion => 91..243
    validates :age, presence: true, :inclusion => 14..99

    def self.create_from_omniauth(auth)
        user = ChoirMember.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(16)
        end
    end
end
