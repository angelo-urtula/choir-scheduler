class ChoirLeader < ApplicationRecord
    has_many :service_times
    has_many :choir_members, through: :service_times
end
