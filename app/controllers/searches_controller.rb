class SearchesController < ApplicationController
  def create
    @posts = SearchService.search(params[:search])
    if @posts
      respond_to do |format|
        format.html
        format.js
      end
    end
  end
end
