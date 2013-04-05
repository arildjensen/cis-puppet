require 'facter'

Facter.add(:f0019) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0019.sh")
  end
end
