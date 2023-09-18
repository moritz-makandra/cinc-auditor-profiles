control 'open network ports' do

  input('ports').each do |port_number, args|
    describe port(port) do
     it { should be_listening}
    end
  end

end
