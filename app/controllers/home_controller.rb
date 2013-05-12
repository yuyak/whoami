require 'whois'

class HomeController < ApplicationController

  def index
    @ua = request.env['HTTP_USER_AGENT']
    ua = AgentOrange::UserAgent.new(@ua)
    @ip = request.remote_ip
    @os = ua.device.operating_system
    @browser = ua.device.engine.browser
  end

  def whois
    render :json => Whois.whois(request.remote_ip)
  end

end
