class OmniauthCallbacksController < Devise::OmniauthCallbacksController
	def linkedin
		auth = env["omniauth.auth"]
		@user = User.connect_to_linkedin(request.env["omniauth.auth"], current_user)

		if @user.persisted?
			sign_in_and_redirect @user, :event => :authentication
		else
			session["devise.linkedin_uid"] = request.env["omniauth.auth"]
			redirect_to new_user_registration_url
		end
	end

	def twitter
    auth = env["omniauth.auth"]
    @user = User.find_for_twitter_oauth(request.env["omniauth.auth"], current_user)
    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
    else
      session["devise.twitter_uid"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end