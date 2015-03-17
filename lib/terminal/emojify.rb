require "terminal/emojify/version"
require "terminal/emojify/maybe"
require "gemoji"

module Terminal
  module Emojify
    def self.call(text)
      text.gsub(/:([\w+-]+):/) do |match|
        emoji = Maybe.wrap Emoji.find_by_alias($1)
        (emoji.raw + " ").value || match
      end
    end
  end
end
