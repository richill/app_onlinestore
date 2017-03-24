class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: "hello Mummy, This is Girl, This is where you will see all the live updates for your website - This is FirstChoice Website Page"
  end
end
