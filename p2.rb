def solve(n)
    a = 1
    b = 2
    sum = 2
    temp = 0
    while temp <= n do
        temp = a + b
        if temp < n then
            a = b
            b = temp
            if b%2==0 then 
                sum += b 
            end
        end
    end
    return sum
end

input = STDIN.read.split("\n")
input.shift
input.each do |x| 
    print solve(x.to_i).to_s + "\n"
end