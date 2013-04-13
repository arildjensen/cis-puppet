require 'facter'

Facter.add(:f0012) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0012.sh")
  end
end
