# frozen_string_literal: true

class ButtonComponentPreview < Lookbook::Preview
  # @param size [Symbol] select { choices: [ ":sm", ":md", ":lg" ] }
  def default(size: :md)
    render ButtonComponent.new(size: size) do
      'Text example'
    end
  end
end
