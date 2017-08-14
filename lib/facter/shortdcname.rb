require 'facter'
Facter.add(:shortdcname) do
  setcode do
    location = Facter.value(:hostname)[1]
    case location
    when '1' then shortdcname = 'd1'
    when '3','gl' then shortdcname = 'd3'
    else 'unknown'
    end
  end
  end

