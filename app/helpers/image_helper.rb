module ImageHelper
  def display_image(user)
    unless user.image.nil?
      image_tag(user.image.file_name)
    else
      image_tag("/assets/images/waddle_penguin.png")
     end
  end
  ## ...
end