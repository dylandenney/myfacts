require 'facter'
Facter.add(:shortdcname) do
  setcode do
    location = Facter.value(:hostname)[0..1]
    case location
    when 'g1' then shortdcname = 'atl'
    when 'g3','gl' then shortdcname = 'ss'
    when 'v1' then shortdcname = 'ric'
    else 'unknown'
    end
  end
  end

