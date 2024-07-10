# frozen_string_literal: true

class ButtonComponent < ApplicationComponent
  SIZES = {
    sm: 'h-8 px-4 text-xs',
    md: 'h-10 px-5 text-sm',
    lg: 'h-12 px-6 text-sm'
  }

  def initialize(size: :md, elevated: false, badge: nil, disabled: false)
    @size = size
    @elevated = elevated
    @badge = badge
    @disabled = disabled
  end

  def view_template
    button(
      class: button_classes, disabled: @disabled
    ) do
      if block_given?
        yield
      else
        span { 'Text example' }
      end
    end
  end

  private

  def button_classes
    classes = [
      'inline-flex items-center justify-center gap-2',
      'font-medium tracking-wide text-white',
      'transition duration-300 rounded focus-visible:outline-none whitespace-nowrap',
      'bg-emerald-500 hover:bg-emerald-600 focus:bg-emerald-700',
      'disabled:cursor-not-allowed disabled:border-emerald-300 disabled:bg-emerald-300 disabled:shadow-none',
      SIZES[@size]
    ]
    classes << 'shadow-md shadow-emerald-200 hover:shadow-sm hover:shadow-emerald-200 focus:shadow-sm focus:shadow-emerald-200' if @elevated
    classes.join(' ')
  end
end
