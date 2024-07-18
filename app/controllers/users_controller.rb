class UsersController < ApplicationController
  def list
    render({:template => "users/user_list"})
  end
end
