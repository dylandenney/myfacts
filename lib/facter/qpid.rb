require 'facter'

result = %x{/bin/rpm -qa |grep qpid | grep server.*client.*qmf}

Facter.add('qpid') do
    setcode do
	result
    end
end
