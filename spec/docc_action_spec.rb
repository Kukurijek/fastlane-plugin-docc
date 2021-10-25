describe Fastlane::Actions::DoccAction do
  describe '#run' do
    it 'generate docc without optinal arguments' do
      expect(Fastlane::UI).to receive(:message).with("xcodebuild docbuild -scheme testScheme")

      Fastlane::Actions::DoccAction.run(scheme: "testScheme")
    end

    it 'generate docc with specific derived data path' do
      expect(Fastlane::UI).to receive(:message).with("xcodebuild docbuild -scheme test -derivedDataPath testPath")

      Fastlane::Actions::DoccAction.run(scheme: "test", derived_data_path: "testPath")
    end

    it 'generate docc with specific destination' do
      expect(Fastlane::UI).to receive(:message).with("xcodebuild docbuild -scheme test -destination generic/platform=macOS")

      Fastlane::Actions::DoccAction.run(scheme: "test", destination: "generic/platform=macOS")
    end

    it 'generate docc with specific derived data path and destination' do
      expect(Fastlane::UI).to receive(:message).with("xcodebuild docbuild -scheme test -derivedDataPath testPath -destination generic/platform=macOS")

      Fastlane::Actions::DoccAction.run(scheme: "test", derived_data_path: "testPath", destination: "generic/platform=macOS")
    end
  end
end
