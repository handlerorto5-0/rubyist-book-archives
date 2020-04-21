maps_company_owed = {}
File.foreach("collections.txt").with_index(1) do |line, i|
  unless i == 1
    rgx_name = /^[A-Za-z-]+/
    rgx_owed = /(?<=\$)[0-9,]+/
    key = rgx_name.match(line)
    value = rgx_owed.match(line)
    maps_company_owed[key[0]]= "$#{value[0]}"
  end
end

puts maps_company_owed
