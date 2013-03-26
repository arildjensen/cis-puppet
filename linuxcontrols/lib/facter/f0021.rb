require 'facter'

Facter.add(:f0021) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/netrc_exist.sh")
  end
end
