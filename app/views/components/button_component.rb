# frozen_string_literal: true

class ButtonComponent < ApplicationComponent
  SIZES = {
    sm: 'h-8 px-4 text-xs',
    md: 'h-10 px-5 text-sm',
    lg: 'h-12 px-6 text-sm'
  }

  def initialize(size: :md)
    @size = size
  end

  def view_template
    button(
      class: [
        'inline-flex items-center justify-center gap-2',
        'font-medium tracking-wide text-white',
        'transition duration-300 rounded focus-visible:outline-none whitespace-nowrap',
        'bg-emerald-500 hover:bg-emerald-600 focus:bg-emerald-700',
        'disabled:cursor-not-allowed disabled:border-emerald-300 disabled:bg-emerald-300 disabled:shadow-none',
        SIZES[@size]
      ]
    ) do
      span do
        if block_given?
          yield
        else
          'Text example'
        end
      end
    end
  end
end
