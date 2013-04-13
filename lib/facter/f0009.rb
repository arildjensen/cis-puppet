require 'facter'

Facter.add(:f0009) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0009.sh")
  end
end
