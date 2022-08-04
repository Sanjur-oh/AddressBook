class AddressValidator < ActiveModel::Validator
    def validate_each(record, attribute, value)
        unless (value === "United States") || (value === "Canada")
            record.errors.add(attribute, "must be United States or Canada")
        end
    end



end