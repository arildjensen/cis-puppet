require 'facter'

Facter.add(:f0022) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/forward_exist.sh")
  end
end
