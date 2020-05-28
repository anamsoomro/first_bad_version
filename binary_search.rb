# require 'pry'

# def binary_search(target, arr)
#   low = 0 
#   mid = arr.length/2
#   high = arr.length - 1

#   while low < high 
#     if arr[mid] == target # found it 
#       puts "its there"
#       return true 
#     elsif arr[mid] < target # look at the right half 
#       low = mid + 1
#       mid = (high+low)/2 + 1
#     else # look at the left half 
#       high = mid - 1 
#       mid = (high+low)/2
#     end
#   end
#   puts "its not there"

#   return false
# end

# binary_search(8, [1,2,3,4,5,6,7])



def first_bad_version(n)
  bad = n
  good = 0

  low = 1 
  high = n

  until bad - good == 1 do
    mid = (low + high) / 2
    v_bad = is_bad_version(mid)
    case v_bad 

    when true # it is bad, go lower
        bad = mid
        return bad if bad == 1
        high = mid

    when false # it is good go higher
        good = mid 
        low = mid
    end
  end 
  return bad
end

# up to 5
def is_bad_version(v)
  versions = [false, false]
  return versions[v-1]
end

first_bad_version(2)