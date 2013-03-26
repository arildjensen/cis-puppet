require 'facter'

Facter.add(:f0009) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/home_dir.sh")
  end
end
