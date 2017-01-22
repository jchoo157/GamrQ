class ApplicationController < ActionController::Base
	# because we're requesting json
  protect_from_forgery with: :null_session
end