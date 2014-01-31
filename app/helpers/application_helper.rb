module ApplicationHelper
  def administrator?(user)
    user.email == "pyluftig@gmail.com" || user.email == "carla13cruz@gmail.com"
  end
end
