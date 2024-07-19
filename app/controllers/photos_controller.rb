class PhotosController < ApplicationController
  def list
    render({:template => "photos/photo_list"})
  end

  def show
    @the_id = params.fetch("photo_id")
    render({:template => "photos/show"})
  end
end
