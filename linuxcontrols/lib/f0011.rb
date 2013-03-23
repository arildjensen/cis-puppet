require 'facter'

Facter.add(:f0011) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/netrc.sh")
  end
end
