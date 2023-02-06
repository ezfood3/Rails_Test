class HomeController < ApplicationController
  def index
    name = params[:name]
    @name = name ? name : 'dev-yakuza'
  end
end
