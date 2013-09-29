require 'facter'

Facter.add(:f0001) do
  setcode do
    begin
      pwfile = '/etc/passwd'
      File.open(pwfile, 'r') do |f|
        f.each_line do |line|
          entry_data = line.split(':')
          if entry_data[0] != /^\+/ &&
            entry_data[0] != "root" &&
            entry_data[0] != "sync" &&
            entry_data[0] != "shutdown" &&
            entry_data[0] != "halt" &&
            entry_data[2].to_i < 500 &&
            entry_data[6] != "/sbin/nologin" then
            puts "fail"
            exit
          end
        end
        puts "pass"
      end
    rescue
      puts "fail"
    end
  end
end
