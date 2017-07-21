require 'facter'

result = %x{/bin/rpm -qa |grep qpid | grep -vE 'python|ssl|tools'}

Facter.add('qpid') do
    setcode do
	result
    end
end
