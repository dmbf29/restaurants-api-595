class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    # user ( is current_user)
    # record ( is whatever you authorized)
    user == record.user
  end

  def create?
    user
  end

  def destroy?
    user == record.user
  end
end
