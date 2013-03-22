require 'facter'

Facter.add(:f0000) do
  setcode do
    Facter::Util::Resolution.exec("bash -c \"if [ `grep ^password /etc/grub.conf`x == x ]; then echo fail; else echo pass; fi\"")
  end
end
