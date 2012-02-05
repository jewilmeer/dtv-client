class ProgramsController < ApplicationController
  respond_to :json
  def index
    respond_with @demo[:series]
  end
end