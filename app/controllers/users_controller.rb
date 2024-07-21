class UsersController < ApplicationController
  def list
    @list_of_users = User.all.order({ :username => :asc })
    render({:template => "users/user_list"})
  end

  def show
    @username = params.fetch("username")
    @user = User.where({:username => @username}).at(0)
    render({:template => "users/show"})
  end

  def update
    @username = params.fetch("username")
    @user = User.where({:username => @username}).at(0)

    @user.username = params.fetch("new_username")
    @username = @user.username
    render({:template => "users/show"})
  end
end
