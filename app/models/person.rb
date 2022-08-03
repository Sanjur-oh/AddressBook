class Person < ApplicationRecord
    has_many :telephones
    has_many :addresses
    has_many :emails
end
