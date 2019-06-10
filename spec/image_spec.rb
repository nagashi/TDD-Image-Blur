require 'spec_helper'

RSpec.describe Image, type: :model do
  describe 'blurring should work' do
    it 'Image Blur 1 standard image' do
      input = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0],
        [0, 0, 0, 0]
      ]

      expected = [
        [0, 0, 0, 0],
        [0, 0, 0, 0],
        [0, 1, 0, 0],
        [1, 1, 1, 0],
        [0, 1, 0, 0],
        [0, 0, 0, 0]
      ]
      image = Image.new(input)
      expect(image.output_image).to eq expected
    end
  end
end
