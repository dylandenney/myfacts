require 'facter'

result = %x{/bin/rpm -qa |grep qpid}

Facter.add('qpid') do
    setcode do
	result
    end
end
