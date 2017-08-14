require 'facter'
Facter.add(:datacenter) do
  setcode do
    location = Facter.value(:hostname)[1]
    case location
    when '1' then datacenter = 'DataCenter1'
#  (I was testing this in azure)  when 'pu' then datacenter = 'azurepup'
    else 'unknown'
    end
  end
  end
