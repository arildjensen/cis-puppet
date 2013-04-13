require 'facter'

Facter.add(:f0022) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0022.sh")
  end
end
