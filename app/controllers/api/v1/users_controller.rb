class Api::V1::UsersController < Api::V1::BaseController
	def index
		respond_with User.all
	end

	def create
		respond_with :api, :v1, User.create(user_params)
	end

	def destroy
		respond_with User.destroy(params[:id])
	end

	def update
		user = User.find(params["id"])
		user.update_attributes(user_params)
		respond_with, json: user
	end

	private

	def item_params
		params.require(:user).permit(:id, :name, :age, :gender, :summary)
	end
end