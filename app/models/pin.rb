class Pin < ApplicationRecord
  has_one_attached :image

  def width
    image = MiniMagick::Image.read(self.image.download)
    return image.width
  end

  def thumbnail
    return self.image.variant(resize: '200x200!').processed
  end

  def banner
    return self.image.variant(resize: '1200x300!').processed
  end
end
