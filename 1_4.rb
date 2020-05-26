s = 'Tact Coa'
# s = 'Tact Cob'

s = s.gsub(' ', '')
s = s.downcase

h = {}
s.each_char { |e| h[e] ? h[e] += 1 : h[e] = 1 }

n = 0
h.each { |_k, v| v % 2 == 1 && n += 1 }

puts n < 2 ? true : false
