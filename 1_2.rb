a1 = ['a', 'b', 'c']
a2 = ['a', 'c', 'b']
# a1 = ['a', 'b', 'c']
# a2 = ['a', 'd', 'b']

# puts a1.sort == a2.sort ? true : false

def hash(a)
  h = {}
  a.each do |e|
    h[e] ? h[e] += 1 : h[e] = 1
  end
  h
end

h1, h2 = hash(a1), hash(a2)
puts h1 == h2 ? true : false
