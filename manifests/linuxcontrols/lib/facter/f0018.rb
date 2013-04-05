require 'facter'

Facter.add(:f0018) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/f0018.sh")
  end
end
