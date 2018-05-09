class ProductPolicy < ApplicationPolicy

  def index?
    true
  end

  def edit?
    true
  end

end
