require 'facter'

Facter.add(:f0017) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/dup_uid.sh")
  end
end
