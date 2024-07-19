class UsersController < ApplicationController
  def list
    render({:template => "users/user_list"})
  end

  def show
    @username = params.fetch("username")
    render({:template => "users/show"})
  end
end
