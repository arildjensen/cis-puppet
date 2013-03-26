require 'facter'

Facter.add(:f0016) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/check_home_ownership.sh")
  end
end
