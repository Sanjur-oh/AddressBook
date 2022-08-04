class Address < ApplicationRecord
  belongs_to :person

  # validates_with AddressValidator
  validates :salutation, inclusion: { in: %w(USA Canada) ,
    message: "%{value} is not a valid salutation" }

end
