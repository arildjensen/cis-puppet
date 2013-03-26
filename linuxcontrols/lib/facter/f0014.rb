require 'facter'

Facter.add(:f0014) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/check_home_assigned.sh")
  end
end
