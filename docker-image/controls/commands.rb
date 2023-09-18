control 'docker entrypoint' do
  describe command(input('docker-entrypoint')) do
    it { should exist }
  end
end


control 'running processes' do
  input('processes').each do |process|
    describe processes(process) do
      it { should be_running }
    end
  end
end
