class TaskDecorator < Draper::Decorator
  delegate_all

  def deadline
    object.deadline ? l(object.deadline, format: :dmy) : 'no date available'
  end
end
