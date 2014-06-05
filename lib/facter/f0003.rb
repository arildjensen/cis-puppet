require 'facter'

if File.exist?('/var/log/control_f0003')
  Facter.add(:f0003) do
    setcode do
      Facter::Util::Resolution.exec("cat /var/log/control_f0003")
    end
  end
end
