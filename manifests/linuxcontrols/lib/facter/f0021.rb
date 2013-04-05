require 'facter'

Facter.add(:f0021) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0021.sh")
  end
end
