class TelephonesController < ApplicationController

    
    def index
        render json: Telephone.all, status: :ok
    end

    def show
        telephone = find_telephone
        render json: telephone, status: :ok
    end

    def create
        telephone = Telephone.create!(telephone_params)
        render json: telephone, status: :created
    end

    def update
        telephone = find_telephone
        telephone.update!(telephone_params)
        render json: telephone, status: :ok
    end

    def destroy
        telephone = find_telephone
        telephone.destroy
        head :no_content, status: :ok
    end


    private

    def find_telephone
        Telephone.find(params[:id])
    end

    def telephone_params
        params.permit(:phone_number)
    end
end
