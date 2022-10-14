class PagesController < ApplicationController
  before_action :authenticate_user!, except: :index
  def home; end
end
