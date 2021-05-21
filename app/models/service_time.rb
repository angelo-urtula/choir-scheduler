class ServiceTime < ApplicationRecord
    belongs_to :choir_member
    belongs_to :choir_leader
end
