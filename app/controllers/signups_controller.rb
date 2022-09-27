class SignupsController < ApplicationController
    def create
        signup = Signup.create!(signup_params)
        render json: signup, status: :created
    end

    def update
        signup = Signup.find(params[:id]).update!(signup_params)
        render json: signup, status: :ok
    end
private
    def signup_params
        params.permit(:camper_id, :activity_id, :time)
    end
end
