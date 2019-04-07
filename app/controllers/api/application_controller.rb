module Api
        class ApplicationController < ActionController::API
        include DeviseTokenAuth::Concerns::SetUserByToken
        end
end