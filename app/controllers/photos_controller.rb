class PhotosController < ApplicationController
  def list
    render({:template => "photos/photo_list"})
  end
end
