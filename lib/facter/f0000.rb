require 'facter'

Facter.add(:f0000) do
  setcode do
    begin
      grubconf = '/boot/grub/grub.conf'
      if File.open(grubconf).grep(/^password/) then
        puts "pass"
      else
        puts "fail"
      end
    rescue
      puts "fail"
    end
  end
end
