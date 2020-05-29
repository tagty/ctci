matrix = [
  ['00', '01', '02', '03'],
  ['10', '11', '12', '13'],
  ['20', '21', '22', '23'],
  ['30', '31', '32', '33'],
]

puts false && return if matrix.length == 0 || matrix.length != matrix[0].length

n = matrix.length
layer = 0
while layer < n / 2
  first = layer
  last = n - 1 - layer

  i = first
  while i < last
    offset = i - first
    top = matrix[first][i]

    matrix[first][i]             = matrix[last - offset][first]
    matrix[last - offset][first] = matrix[last][last - offset]
    matrix[last][last - offset]  = matrix[i][last]
    matrix[i][last]              = top

    i += 1
  end

  layer += 1
end
pp matrix
