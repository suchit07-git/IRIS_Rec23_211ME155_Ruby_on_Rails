class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role == 'student'
      can :read, :student_dashboard
      cannot :read, :faculty_dashboard
    elsif user.role == 'faculty'
      can :read, :faculty_dashboard
      cannot :read, :student_dashboard
    else
      can :manage, :all
      can :read, :student_dashboard
      can :read, :faculty_dashboard
    end
  end
end
