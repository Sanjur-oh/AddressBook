class PersonSerializer < ActiveModel::Serializer
    attributes :id, :first_name, :last_name

    has_many :telephones
    has_many :addresses
    has_many :emails

end