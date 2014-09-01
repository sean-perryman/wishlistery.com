class LandingController < ApplicationController
  def index
  	@games = Games.all;
  end
end
