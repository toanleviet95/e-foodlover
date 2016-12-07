class Slider < ApplicationRecord
  def get_sliders
    Slider.last(4)
  end
end
