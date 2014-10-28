class ShoutsController < ApplicationController
  def create
  	@user = User.find(params[:user_id])
  	@shout = @user.shouts.create(shout_params)
  	redirect_to user_path(@user)
  end

  private
  def shout_params
  	params.require(:shout).permit(:shouter, :body)
  	
  end
end
