module ApplicationHelper
  def trancate_description description, length=30
    truncate description, length: length
  end
end
