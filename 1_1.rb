a = ['a', 'b', 'c']
# a = ['a', 'b', 'a']

# puts a.uniq == a ? true : false

h = {}
a.each do |e|
  if h[e]
    puts false
    return
  else
    h[e] = true
  end
end
puts true
