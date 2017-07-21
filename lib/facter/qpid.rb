require 'facter'

result = %x{/bin/rpm -qa |grep wget}

Facter.add('qpid') do
    setcode do
	result
    end
end
