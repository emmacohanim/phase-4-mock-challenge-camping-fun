class ActivitiesController < ApplicationController
    def index 
        activities = Activity.all
        render json: activities
    end

    def show
        activity = Activity.find(params[:id])
        render json: activity
    end

    def destroy
        activity = Activity.find(params[:id])

        if activity 
            activity.destroy
            head :no_content
        else
            render json: { error: "Activity not found" }
        end
    end
end
