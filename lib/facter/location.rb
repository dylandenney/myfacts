require 'facter'
Facter.add(:datacenter) do
  location = Facter.value(:hostname)
  setcode do
    if location[0..1] == 'G1' then datacenter = 'ATL'
    elsif location[0..1] == 'V1' then datacenter = 'RIC'
    else
    datacenter = 'unknown'
    end
  end
end
