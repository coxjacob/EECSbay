class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
  
  def authenticate
  	  authenticate_or_request_with_http_basic do |user_name, password|
  	  	  user_name == 'poster' && password == 'GoEECS'
  	  end
  end
  def user_authenticate
  	  authenticate_or_request_with_http_basic do |user_name, password|
  	  	  user_name == 'editor' && password == '12EECS!@'
  	  end
  end
  
  def admin_authenticate
  	  authenticate_or_request_with_http_basic do |user_name, password|
  	  	  user_name == 'eecsbay_admin' && password == '!@SCEE34'
  	  end
  end
  	  
end
