class ApplicationController < ActionController::Base
    def check_guest
        if current_customer.email == 'guest@example.com'
            redirect_back(fallback_location)
        else

        end
    end

    def after_sign_in_path_for(resource)
        mypage_path 
      end
end
