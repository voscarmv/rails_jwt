class SessionsController < Devise::SessionsController
    respond_to :json
    private
    def respond_with(resource, _opts = {})
        if !resource.id.nil?
            render json: resource
        else
        render json: {
            status: 401,
            message: "Bad credentials."
        }, status: :unauthorized
        end
    end 
    def respond_to_on_destroy
        if current_user
            render json: {
                status: 200,
                message: "Logged out."
            }, status: :ok
        else
            render json: {
                status: 401,
                message: "No active session."
            }, status: :unauthorized
        end
    end
end
