describe Fastlane::Actions::DoccAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("xcodebuild docbuild -scheme test")

      Fastlane::Actions::DoccAction.run(scheme: "test")
    end
  end
end
