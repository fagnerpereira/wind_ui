# frozen_string_literal: true

class ButtonComponentPreview < Lookbook::Preview
  # @!group Types

  # @param size [Symbol] select { choices: [ ":sm", ":md", ":lg" ] }
  def default(size: :md)
    render ButtonComponent.new(size:) do
      'Text example'
    end
  end

  def elevated
    render ButtonComponent.new(elevated: true) do
      'Text example'
    end
  end

  def disabled
    render ButtonComponent.new(disabled: true) do
      'Text example'
    end
  end
  # @!endgroup
end
