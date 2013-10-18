# Método que calcula el máximo común divisor (greatest common divisor)

def gcd(u, v)
  u, v = u.abs, v.abs
  while v != 0
    u, v = v, u % v
  end
  u
end

#puts gdc(2,2)


#def gcd2(u, v)
#  u, v = u.abs, v.abs
#  while v != 0
#    u, v = v, u % v
#  end
#  u
#end

#puts gdc2(4,7)
