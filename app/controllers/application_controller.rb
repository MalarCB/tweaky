class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def restrict_admin_tool_access_by_ipaddress
    whitelist = ['5.175.83.30' ,'127.0.0.1','0.0.0.0','192.168.0.30']
    unless whitelist.include?(request.remote_ip)
      p request.remote_ip
     # redirect_to controller: 'produits', action: 'display'
    end
  end
end
