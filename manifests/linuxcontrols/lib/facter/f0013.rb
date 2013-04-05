require 'facter'

Facter.add(:f0013) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0013.sh")
  end
end
