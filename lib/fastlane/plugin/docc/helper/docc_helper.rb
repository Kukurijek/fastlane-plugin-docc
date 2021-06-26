require 'fastlane_core/ui/ui'

module Fastlane
  UI = FastlaneCore::UI unless Fastlane.const_defined?("UI")

  module Helper
    class DoccHelper
      # class methods that you define here become available in your action
      # as `Helper::DoccHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the docc plugin helper!")
      end
    end
  end
end
