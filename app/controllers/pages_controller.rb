class PagesController < ApplicationController
  before_action :authenticate_user!, :except => [:home, :contact_us]

  def home
  end
  

  def contact_us
  end
end
