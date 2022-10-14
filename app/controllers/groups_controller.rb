class GroupsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_client

  def index
    if current_user.nil?
      redirect_to get_started_path
      return
    end
    @groups = current_user.groups
  end

  def new
    @group = Group.new
  end

  def create
    @user = current_user
    @group = Group.new(group_params)
    @group.user = @user

    respond_to do |format|
      if @group.save
        format.html { redirect_to groups_path, notice: 'Group was successfully created.' }
        format.json { render :index, status: :created, location: @group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  # Only allow a list of trusted parameters through.

  def group_params
    params.require(:group).permit(:name, :icon).merge(user_id: @client.id)
  end
end
