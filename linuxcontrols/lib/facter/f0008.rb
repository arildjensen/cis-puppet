require 'facter'

Facter.add(:f0008) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/uid_zero.sh")
  end
end
