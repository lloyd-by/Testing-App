module UsersHelper
  def display_name(user)
    user.email.split('@').first.capitalize
  end
end

