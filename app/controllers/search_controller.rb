class SearchController < ApplicationController
  def index
    @searchs = Car.all
  end
end
