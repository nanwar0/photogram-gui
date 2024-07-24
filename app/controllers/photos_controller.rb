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

    @photo.save

    redirect_to("/photos/" + @the_id.to_s)
  end

  def add
    @photo = Photo.new
    @photo.image = params.fetch("new_image")
    @photo.caption = params.fetch("new_caption")
    @photo.owner_id = params.fetch("new_owner_id")
    @photo.save

    @the_id = @photo.id

    redirect_to("/photos/" + @the_id.to_s)
  end

  def add_comment
    @the_id = params.fetch("photo_id")
    @photo = Photo.find(@the_id)

    @comment = Comment.new
    @comment.photo_id = @the_id
    @comment.author_id = params.fetch("author_id")
    @comment.body = params.fetch("comment_body")

    @comment.save

    redirect_to("/photos/" + @the_id.to_s)
  end

  def delete
    @the_id = params.fetch("photo_id")
    @photo = Photo.find(@the_id)

    @photo.destroy

    redirect_to("/photos")
  end

end
