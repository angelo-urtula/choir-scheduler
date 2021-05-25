class ChoirLeader < ApplicationRecord
    has_secure_password
    validates :password, length: {minimum: 6}
    validates :name, presence: true
    validates :voice, :inclusion => %w(soprano alto tenor base), :allow_nil => true
    validates :phone_number, :numericality => true, :length => { :minimum => 10, :maximum =>10 }, :allow_nil => true
    validates :email, presence: true, uniqueness: true
    has_many :practice_times
    has_many :choir_members, through: :practice_times
end
