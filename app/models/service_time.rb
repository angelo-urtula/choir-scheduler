class ServiceTime < ApplicationRecord
    belongs_to :choir_member, optional: true
    belongs_to :choir_leader, optional: true
    scope :todays_services, -> {where(time: DateTime.now.beginning_of_day..DateTime.now.end_of_day)}
    scope :scheduled_services, -> {where('time > ?', DateTime.now.end_of_day)}
end
