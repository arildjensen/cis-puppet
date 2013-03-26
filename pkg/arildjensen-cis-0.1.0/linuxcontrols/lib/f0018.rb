require 'facter'

Facter.add(:f0018) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/dup_gid.sh")
  end
end
