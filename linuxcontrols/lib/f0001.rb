require 'facter'

Facter.add(:f0001) do
  setcode do
    Facter::Util::Resolution.exec("bash -c \"if [ `egrep -v \"^\+\" /etc/passwd | awk -F: '($1!=\"xroot\" && $1!=\"sync\" && $1!=\"shutdown\" && $1!=\"halt\" && $3<500 && $7!=\"/sbin/nologin\") {print $1}'`x==x ]; then echo pass; else echo fail; fi\"")
  end
end
