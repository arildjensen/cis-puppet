require 'facter'

Facter.add(:f0006) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/legacy_shadow.sh")
  end
end
