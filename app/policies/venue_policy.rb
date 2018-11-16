class VenuePolicy < ApplicationPolicy

  def new?
    user.is_host?
  end

  def create?
    user.is_host?
  end

  def update?
    user.is_host?
  end

  def destroy?
    user.is_host?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
