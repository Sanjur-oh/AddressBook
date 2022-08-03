class AddressesController < ApplicationController

    class AddressesController < ApplicationController

        def index
            render json: Address.all, status: :ok
        end
    
        def show
            address = find_address
            render json: address, status: :ok
        end
    
        def create
            address = Address.create!(address_params)
            render json: address, status: :created
        end
    
        def update
            address = find_address
            address.update!(address_params)
            render json: address, status: :ok
        end
    
        def destroy
            address = find_address
            address.destroy
            head :no_content, status: :ok
        end
    
    
        private
    
        def find_address
            Address.find(params[:id])
        end
    
        def address_params
            params.permit(:street, :town, :zip)
        end
    
    end
    
end
