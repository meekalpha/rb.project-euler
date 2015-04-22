def is_prime?(n)
    max = Math.sqrt(n).ceil
    for i in 2..max do
        if n%i==0 then
            return false
        end
    end
    return true
end
            
            
def solve(n)
    for i in 1..n do
        if n%i==0 and is_prime?(n/i) then
            return n/i
        end
    end
    return 0
end
    
    
input = STDIN.read.split("\n")
input.shift
input.each do |x| 
    print solve(x.to_i).to_s + "\n"
end