class ApplicationController < ActionController::Base
  #protect_from_forgery
  layout 'application'
  before_filter :check_login

  include ApplicationHelper

  def self.consumer
    OAuth::Consumer.new(
      "9LW1gS1FgwkxEdVQV6Aug",
      "GQZKypcKJTGI0iRz4s7B24B0u8JkMl91zUxmCc6E",
      { :site => "http://twitter.com" }
    )
  end


  private
  def check_login
    logged?
  end
end
