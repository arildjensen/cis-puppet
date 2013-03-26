require 'facter'

Facter.add(:f0000) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0000.sh")
  end
end
