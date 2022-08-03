class PeopleController < ApplicationController

    # def index
    # end
    
    def index
        render json: Person.all, status: :ok
    end

    def show
        person = find_person
        render json: person, status: :ok
    end

    def create
        person = Person.create!(person_params)
        render json: person, status: :created
    end

    def update
        person = find_person
        person.update!(person_params)
        render json: person, status: :ok
    end

    def destroy
        person = find_person
        person.destroy
        head :no_content, status: :ok
    end


    private

    def find_person
        Person.find(params[:id])
    end

    def person_params
        params.permit(:first_name, :last_name)
    end

end
