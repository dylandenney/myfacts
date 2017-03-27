require 'facter'
Facter.add(:datacenter) do
  setcode do
    location = Facter.value(:hostname)[0..1]
    case location
    when 'g1' then datacenter = 'AtlantaMetro'
    when 'g3' then datacenter = 'SandySprings'
    when 'v1' then datacenter = 'Richmond'
#  (I was testing this in azure)  when 'pu' then datacenter = 'azurepup'
    else 'unknown'
    end
  end
  end
