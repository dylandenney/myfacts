require 'facter'
Facter.add(:shortdcname) do
  setcode do
    location = Facter.value(:hostname)[1]
    case location
    when '1' then shortdcname = 'atl'
    when '3','gl' then shortdcname = 'ss'
    else 'unknown'
    end
  end
  end

