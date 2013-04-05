require 'facter'

Facter.add(:f0005) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0005.sh")
  end
end
