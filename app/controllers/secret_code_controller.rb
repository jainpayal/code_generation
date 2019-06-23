class SecretCodeController < ApplicationController
	load_and_authorize_resource

	def index
		@secret_codes=SecretCode.paginate(page: params[:page], per_page: 5)
	end

	def create
		GenerateTokenJob.perform_later secret_code_params[:code]
		flash[:success] = "#{secret_code_params[:code]} code generated sucessfully"
		redirect_to secret_code_index_path
	end

	private
	def secret_code_params
		params.require(:secret_code).permit(:code)
	end
end
