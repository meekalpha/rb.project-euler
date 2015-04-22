def solve(n)
    a = ((n-1)/3).floor    #number of multiples of 3
    s1 = a*(a+1)/2 * 3  #sum of these
    b = ((n-1)/5).floor    #num multiples of 5
    s2 = b*(b+1)/2 * 5  #sum of these
    c = ((n-1)/15).floor   #num multiples of 15
    s3 = c*(c+1)/2 * 15 #sum of these
    sum = s1 + s2 - s3  #inclusion/exclusion
    return sum      #return solution
end


input = STDIN.read.split("\n")
input.shift
input.each do |x| 
    print solve(x.to_i).to_s + "\n"
end