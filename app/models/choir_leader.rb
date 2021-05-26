class ChoirLeader < ApplicationRecord
    include SharedValidations
    has_many :practice_times
    has_many :choir_members, through: :practice_times
end
