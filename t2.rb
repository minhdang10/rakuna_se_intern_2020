# I never use Ruby so this might be a problem.

STDOUT.sync = true
_,w,_,e,o,_,_,n=gets.split.map(&:to_i)
l={}
n.times{f,x=gets.split.map(&:to_i);l[f]=x}
loop{f,c,d=gets.split;f,c=f.to_i,c.to_i;x= f==e ? o : l[f];puts (c<1 || c>=w-1) || ((d <=> "N") > 0) ? "BLOCK" : "WAIT"}

# Formatted code
STDOUT.sync = true
_,w,_,e,o,_,_,n = gets.split.map(&:to_i)
l={}

n.times{
    f,
    x=gets.split.map(&:to_i);
    l[f]=x
}

loop{
    f,c,d=gets.split;
    f,c=f.to_i,c.to_i;
    x= f==e ? o : l[f];
    puts (c<1 || c>=w-1) || ((d <=> "N") > 0) ? "BLOCK" : "WAIT"}

# The problem is at line 24 --> fix the code like below:
puts (c<1 || c>=w-1) || ((d <=> "N") > 0) ? "BLOCK" : "WAIT"}