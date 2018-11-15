class EventPolicy < ApplicationPolicy

  def create
    !user.is_host?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
