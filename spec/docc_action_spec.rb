describe Fastlane::Actions::DoccAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The docc plugin is working!")

      Fastlane::Actions::DoccAction.run(nil)
    end
  end
end
