require 'facter'

Facter.add(:f0014) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0014.sh")
  end
end
