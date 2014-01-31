module ApplicationHelper
  def cp(path)
    "active" if current_page?(path)
  end
  
  def administrator?(user)
    user.email == "pyluftig@gmail.com" || user.email == "carla13cruz@gmail.com"
  end
end
