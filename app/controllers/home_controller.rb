class HomeController < ApplicationController
  def index
    # require 'rouge'

    # make some nice lexed html
    source = '<div><button class="inline-flex items-center justify-center h-10 gap-2 px-5 text-sm font-medium tracking-wide text-white transition duration-300 rounded focus-visible:outline-none whitespace-nowrap bg-emerald-500 hover:bg-emerald-600 focus:bg-emerald-700 disabled:cursor-not-allowed disabled:border-emerald-300 disabled:bg-emerald-300 disabled:shadow-none">Button</button></div>'
    formatter = Rouge::Formatters::HTML.new
    linewise_formatter = Rouge::Formatters::HTMLLinewise.new(formatter, class: 'line-%i')
    lexer = Rouge::Lexers::Shell.new
    @html_code = linewise_formatter.format(lexer.lex(source)).html_safe
  end
end
