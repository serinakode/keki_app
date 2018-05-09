class ProfilePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

def edit?
  record == user.profile 
end

#user == current_user 
#record == what ever you pass it 
# so when in controller - authorize @profile - record will be equal to @profile 
# the individual profile 
# always looking for true :D 
end
