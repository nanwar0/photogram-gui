class PhotosController < ApplicationController
  def list
    @list_of_photos = Photo.all
    render({:template => "photos/photo_list"})
  end

  def show
    @the_id = params.fetch("photo_id")
    @photo = Photo.find(@the_id)
    render({:template => "photos/show"})
  end

  def update
    @the_id = params.fetch("photo_id")
    @photo = Photo.find(@the_id)

    @photo.image = params.fetch("new_image")
    @photo.caption = params.fetch("new_caption")

    render({:template => "photos/show"})
  end
end
