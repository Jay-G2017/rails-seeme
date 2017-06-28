class MeetingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user:  user)
    end
  end

  def index?
    true
  end

  def update?
    user == record.user
  end

  def destroy?
    user == record.user
  end

  def create?
    true
  end
end
