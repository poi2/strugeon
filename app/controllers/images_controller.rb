class ImagesController < ApplicationController
  def show
    image = Image.find(params[:id])
    send_data image.img
  end
end
