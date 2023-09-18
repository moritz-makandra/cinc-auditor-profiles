control 'open network ports' do

  input('ports').each do |port_number, args|
    describe port(port_number) do
      it { should be_listening}
      if args.has_key?('protocols')
        its('protocols') { should eq args['protocols']}
      end
    end
  end

end
