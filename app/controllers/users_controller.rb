# frozen_string_literal: true

class UsersController < ApplicationController
  skip_before_action :authenticate_user!
  def splash
    @client = current_user
  end
end
