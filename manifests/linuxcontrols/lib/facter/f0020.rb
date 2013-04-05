require 'facter'

Facter.add(:f0020) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0020.sh")
  end
end
