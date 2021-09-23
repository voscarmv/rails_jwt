class ApplicationController < ActionController::API
    # skip_before_action :verify_authenticity_token
    def authenticate_user
        if request.headers['Authorization'].present?
            authenticate_or_request_with_http_token do |token|
                begin
                    jwt_payload = JWT.decode(token, Rails.application.credentials.jwt_secret).first
                    @current_user_id = jwt_payload['jti']
                rescue JWT::ExpiredSignature, JWT::VerificationError, JWT::DecodeError
                    head :unauthorized
                end
            end
        else
            head :unauthorized
        end
    end
end
