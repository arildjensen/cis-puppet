require 'facter'

Facter.add(:f0010) do
  setcode do
    Facter::Util::Resolution.exec("/usr/local/sbin/dot_files.sh")
  end
end
