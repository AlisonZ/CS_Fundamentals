def mergesort(a)
    # if the array size is 0|1 then the list is considered sorted, return sorted array
    if a.length == 0 || a.length == 1
        a
    end

    # split the list into two halves
    left, right = split_array(a)
    # merge sort each half
    left = mergesort(left)
    right = mergesort(right)
    # combine the sorted halves
    combine(left,right)

def split_array(a)
    # find the middle index
    middle = a.length/2
    # split the array in half - take a look at take and drop in the ruby docs, or use ranges
    l = [0...middle]
    r = [middle..a.length]
    # return left and right halves of array as separate arrays - did you know a method can return multiple arrays? look it up
    return l,r
end

# precondition: a and b are sorted
def combine(a, b)
    # create a results array
    results = []
    # counters pointing to the index of the smallest elements in each array - you may not need to do this step if you use some fancy ruby methods
    

    # check that we have elements to compare (neither array can be empty)
        # push the smaller element onto the result array
    # if there are elements left over in a, move them to result
    # if there are elements left over in b, move them to result
    # return the results array
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
