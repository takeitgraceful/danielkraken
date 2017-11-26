class CharacterNameController < ApplicationController
  before_action :correct_user,   only: [:edit, :update]


def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  if @user.update_attributes(user_params)
    # Handle a successful update.
  else
    render 'edit'
  end
end


# Confirms the correct user.
def correct_user
  @user = User.find(params[:id])
  redirect_to(root_url) unless @user == current_user
end
