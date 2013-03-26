require 'facter'

Facter.add(:f0019) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/dup_user.sh")
  end
end
