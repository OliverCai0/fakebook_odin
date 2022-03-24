class DashboardsController < ApplicationController
	def show
		@users_all = User.all
	end
end
