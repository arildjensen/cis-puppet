require 'facter'

Facter.add(:f0016) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0016.sh")
  end
end
