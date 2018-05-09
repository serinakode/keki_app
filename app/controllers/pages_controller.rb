class PagesController < ApplicationController
  before_action :authenticate_user!, :except => [:home]

  def home
  end
  

  def contact_us
  end
end
