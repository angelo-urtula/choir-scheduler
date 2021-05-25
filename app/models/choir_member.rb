class ChoirMember < ApplicationRecord
    has_secure_password
    #validates :password, length: {minimum: 6}
    validates :name, presence: true
    validates :voice, :inclusion => %w(soprano alto tenor base), :allow_nil => true
    validates :phone_number, :numericality => true, :length => { :minimum => 10, :maximum =>10 }, :allow_nil => true
    validates :email, presence: true, uniqueness: true
    validates :height, :inclusion => 91..243, :allow_nil => true
    validates :age, :inclusion => 14..99, :allow_nil => true
    has_many :practice_times
    has_many :choir_leaders, through: :practice_times

    def self.create_from_omniauth(auth)
        ChoirMember.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
            u.name = auth['info']['name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(16)
        end
    end

end
