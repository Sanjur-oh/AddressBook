class FullNameValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        if value.split(" ").count < 2
            record.errors.add :name, message: "Provide full name"
        end
    end

end