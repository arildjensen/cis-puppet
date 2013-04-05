require 'facter'

Facter.add(:f0011) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0011.sh")
  end
end
