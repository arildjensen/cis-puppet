require 'facter'

Facter.add(:f0007) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/legacy_group.sh")
  end
end
