class PhotosController < ApplicationController
  def list
    @list_of_photos = Photo.all
    render({:template => "photos/photo_list"})
  end

  def show
    @the_id = params.fetch("photo_id")
    render({:template => "photos/show"})
  end
end
