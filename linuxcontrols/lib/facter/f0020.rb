require 'facter'

Facter.add(:f0020) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/dup_group.sh")
  end
end
