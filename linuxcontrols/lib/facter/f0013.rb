require 'facter'

Facter.add(:f0013) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/check_groups.sh")
  end
end
