class UserDecorator < Draper::Decorator
  def user_name
    object.name.presence || object.email
  end
end
