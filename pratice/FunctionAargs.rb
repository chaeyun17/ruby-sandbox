@ary = []

def func(*args)
  @ary.push(*args)
  puts @ary
end

func('a', 'b', 'c')

