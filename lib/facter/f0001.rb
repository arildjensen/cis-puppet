require 'facter'

Facter.add(:f0001) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0001.sh")
  end
end
