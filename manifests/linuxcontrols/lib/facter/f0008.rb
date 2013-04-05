require 'facter'

Facter.add(:f0008) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0008.sh")
  end
end
