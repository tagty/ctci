first, second = 'pale', 'paaale' # false
# first, second = 'pale', 'bale' # true
# first, second = 'pale', 'bake' # false
# first, second = 'pale', 'pales' # true
# first, second = 'pale', 'paale' # true
# first, second = 'pale', 'ple' # true

if (first.length - second.length).abs > 1
  puts false
  return
end

if first.length < second.length
  s1, s2 = first, second
else
  s1, s2 = second, first
end

index1, index2, found = 0, 0, false
while index1 < s1.length && index2 < s2.length
  if s1[index1] != s2[index2]
    if found
      puts false
      return
    end
    found = true
    index1 += 1 if s1.length == s2.length
  else
    index1 += 1
  end
  index2 += 1
end
puts true
