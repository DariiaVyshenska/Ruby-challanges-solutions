def swapcase(str)
  str.tr('A-Za-z','a-zA-Z')
end

p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
