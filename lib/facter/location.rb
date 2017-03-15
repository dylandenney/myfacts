require 'facter'
Facter.add(:datacenter) do
  setcode do
    case location = Facter.value(:hostname)
    when location[0..1] == 'G1' then datacenter = 'ATL'
    when location[0..1] == 'V1' then datacenter = 'RIC'
    else 'unknown'
    end
  end
end
