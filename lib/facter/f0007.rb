require 'facter'

Facter.add(:f0007) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0007.sh")
  end
end
