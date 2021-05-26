module SharedValidations
    extend ActiveSupport::Concern
    include ActiveModel::Validations

    included do
        has_secure_password
        #validates :password, length: {minimum: 6}
        validates :name, presence: true
        validates :voice, :inclusion => %w(soprano alto tenor base), :allow_nil => true
        validates :phone_number, :numericality => true, :length => { :minimum => 10, :maximum =>10 }, :allow_nil => true
        validates :email, presence: true, uniqueness: true
    end
end