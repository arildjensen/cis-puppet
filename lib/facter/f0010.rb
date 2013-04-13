require 'facter'

Facter.add(:f0010) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0010.sh")
  end
end
