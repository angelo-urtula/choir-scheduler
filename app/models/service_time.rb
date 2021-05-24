class ServiceTime < ApplicationRecord
    belongs_to :choir_member
    belongs_to :choir_leader
    scope :todays_services, -> {where(time: DateTime.now.beginning_of_day..DateTime.now.end_of_day)}
end
