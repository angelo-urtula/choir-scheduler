class PracticeTime < ApplicationRecord
    belongs_to :choir_member, optional: true
    belongs_to :choir_leader, optional: true
    scope :todays_practices, -> {where(time: DateTime.now.beginning_of_day..DateTime.now.end_of_day)}
    scope :scheduled_practices, -> {where('time > ?', DateTime.now.end_of_day)}
    scope :available_practices, -> {where(choir_member_id: nil)}
    scope :reserved_practices, -> {where('choir_member_id != ?', 'nil')}
    validates :time, presence: true
    validates :language, presence: true    
end
