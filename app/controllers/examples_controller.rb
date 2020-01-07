class ExamplesController < ApplicationController
  def index
  	@examples = Example.all
  end

  def show
  	@example = Example.find(params[:id])
  end
end
