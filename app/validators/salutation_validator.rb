class SalutationValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        unless (value === "Mr") || (value === "Ms") || (value === "Mrs")
            record.errors.add(attribute, "must be Mr, Ms, or Mrs")
        end
    end

end