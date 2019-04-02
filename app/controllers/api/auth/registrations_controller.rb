module Api
  module Auth
    class RegistrationsController < DeviseTokenAuth::RegistrationsController
      
      private
      # :pointを追加できるようにprivateメソッドに修正を加える
      def sign_up_params
        params.permit(:nickname, :email, :password, :password_confirmation)
      end

      def account_update_params
        params.permit(:nickname, :email)
      end

    end
  end
end
