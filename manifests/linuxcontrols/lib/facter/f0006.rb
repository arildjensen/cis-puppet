require 'facter'

Facter.add(:f0006) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0006.sh")
  end
end
