class EmailsController < ApplicationController


    def index
        render json: Email.all, status: :ok
    end
    
    def show
        email = find_email
        render json: email, status: :ok
    end
    
    def create
        email = Email.create!(email_params)
        render json: email, status: :created
    end
    
    def update
        email = find_email
        email.update!(email_params)
        render json: email, status: :ok
    end
    
    def destroy
        email = find_email
        email.destroy
        head :no_content, status: :ok
    end
    
    
    private
    
    def find_email
        email.find(params[:id])
    end
    
    def email_params
        params.permit(:email_address)
    end

    
end
