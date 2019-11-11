class UsersController < ApplicationController
 before_action :set_user, only: [:edit, :update,:show]
	def show	
	end

	def edit  	
	end

	def update
		if @user.update(list_params)
		   render :index
		else
			render :edit
		end
	end

	private
	def list_params
		params.require(:user).permit(:email,:name,:phone,:users_image,:gender,:bio,:website)	
	end
	def set_user
		@user = User.find(params[:id])	
	end
end
