require 'fastlane/action'
require_relative '../helper/docc_helper'

module Fastlane
  module Actions
    class DoccAction < Action
      def self.run(params)
        UI.message("The docc plugin is working!")
      end

      def self.description
        "Automate docc - documentation for swift frameworks and packages"
      end

      def self.authors
        ["Kukurijek"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Xcode 13 has new features to build, write, and browse documentation for Swift frameworks and packages. With this plugin you can automate building of your documentation (e.g. in CI), so you can deploy the new docs automatically."
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "DOCC_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
