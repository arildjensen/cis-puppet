require 'facter'

Facter.add(:f0002) do
  setcode do
    Facter::Util::Resolution.exec("cat /var/log/control_f0002")
  end
end
