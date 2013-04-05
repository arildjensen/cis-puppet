require 'facter'

Facter.add(:f0015) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0015.sh")
  end
end
