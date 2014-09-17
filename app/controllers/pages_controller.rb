class PagesController < ApplicationController
	include SessionsHelper
	skip_before_action :require_login
	
	def home
		redirect_to statuses_path if current_user
	end

	def logout
		session[:user_id] = nil
		redirect_to root_path
	end

	def feedback
		
	end

end