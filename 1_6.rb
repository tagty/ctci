s = 'aabcccccaaa'
# s = 'abca'

n = 1
count = 1
ans = ''
while n <= s.length
  unless s[n] == s[n - 1]
    ans.concat s[n - 1]
    ans.concat count.to_s
    count = 0
  end
  count += 1
  n += 1
end
puts ans.length < s.length ? ans : s