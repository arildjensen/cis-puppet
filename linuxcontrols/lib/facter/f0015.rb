require 'facter'

Facter.add(:f0015) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/check_home_exist.sh")
  end
end
