class Person < ApplicationRecord
    has_many :telephones
    has_many :addresses
    has_many :emails

    # enum salutation: [:mr, :ms, :mrs]
    
    # validates_with FullNameValidator
    # validates_with SalutationValidator
    # validates :salutation, presence: true
    validates :salutation, inclusion: { in: %w(Mr Ms Mrs) ,
        message: "%{value} is not a valid salutation" }
    # validates :salutation, inclusion: ["Mr", "Ms", "Mrs"]
    validates :first_name, :last_name, presence: true
    # validates :first_name, :last_name, presence: true, full_name: true
    
    # validate :permitted_salutation
    # validate :full_name
        
    # def full_name
    #     "#{full_name}: #{first_name} + #{last_name}"
    # end

    # def permitted_salutation

    # end

end
