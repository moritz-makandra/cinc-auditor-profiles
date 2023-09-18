control 'installed system packages' do

  input('debian-packages').each do |package|
    describe package(package) do
     it { should be_installed }
    end
  end

end
