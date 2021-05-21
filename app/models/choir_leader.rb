class ChoirLeader < ApplicationRecord
    validates :name, presence: true
    validates :voice, :inclusion => %w(soprano alto tenor base), :allow_nil => true
    validates_format_of :phone_number, :with => /[0-9]{10}/, :allow_nil => true
    validates :email, presence: true, uniqueness: true
    has_many :service_times
    has_many :choir_members, through: :service_times
end
