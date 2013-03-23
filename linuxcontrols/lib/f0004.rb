require 'facter'

Facter.add(:f0004) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/empty_passwords")
  end
end
