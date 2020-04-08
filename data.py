import statistics
def payment(arr):
  diff = arr[0]
  for i in range(1, len(arr)):
    diff += abs(arr[i] - arr[i-1])

  return diff


from itertools import permutations
lists = list(permutations(range(1, 21)))
output = []
for l in lists:
  perm = list(l)
  result = payment(perm)
  output.append(result)


print("The mean of my total payments for N=20: % s "
        % (statistics.mean(output)))

print("The Standard Deviation of my total payments for N=20 % s "
                % (statistics.stdev(output)))





