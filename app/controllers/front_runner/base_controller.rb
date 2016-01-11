class FrontRunner::BaseController < ApplicationController
  before_filter :authenticate_front_runner!
  def index
  end
end
