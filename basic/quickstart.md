# 20분 퀵 스타트
https://www.ruby-lang.org/ko/documentation/quickstart/

## 출력
```ruby
puts "Hello World!"
```

## 연산
- `1+1` => 2
- `3*2` => 6
- `3**2` => 9 

## 모듈 사용
- `Math.sqrt(9)` => 3.0

## 함수
함수 정의
```ruby
def greeting
  puts "Hello World!"
end
```
함수 호출은 괄호 없이 메소드 이름으로도 호출이 가능합니다.
```ruby
greeting
greeting() 
```

## 문자열 템플릿 literal
```ruby
def greeting(name = "unknown")
  puts "Hello #{name.capitalize}"
end
```

결과
- `greeting` -> `Hello Unknown`
- `greeting("yun")` -> `Hello Yun`

## 클래스
```ruby
class Greeter
  def initialize(name = "World")
    @name = name
  end
  def say_hi
    puts "Hi #{@name}!"
  end
  def say_bye
    puts "Bye #{@name}, come back soon."
  end
end
```

### 클래스 생성
```ruby
g1 = Greeter.new("Jane")
```

### 메서드 호출
```ruby
g1.say_hi
g1.say_bye
```

인스턴스 변수에는 바로 접근이 안됩니다. `g1.@name` 는 컴파일 에러를 발생시킵니다.

### 객체 들여다보기 

객체에 있는 메서드들을 보려면 `Greeter.instance_methods`를 호출합니다. 

```
=> [:say_hi, :say_bye, :h, :greeting, :instance_variable_defined?, :remove_instance_variable, :instance_of?, :kind_of?, 
:is_a?, :tap, :methods, :singleton_methods, :protected_methods, :instance_variables, :instance_variable_get, :instance_variable_set, :private_methods, :public_methods, :method, :singleton_method, :public_send, :public_method, :define_singleton_method, :extend, :to_enum, :enum_for, :<=>, :===, :=~, :!~, :eql?, :respond_to?, :freeze, :inspect, :object_id, :send, :to_s, :display, :nil?, :hash, :class, :singleton_class, :clone, :dup, :itself, :yield_self, :then, :taint, :tainted?, :untaint, :trust, :frozen?, :untrust, :untrusted?, :equal?, :!, :__id__, :==, :instance_exec, :!=, :instance_eval, :__send__]
```

모든 상속된 메서드들까지 출력이 되어서 많습니다.

`Greeter.instance_methods(false)`를 호출하면 해당 클래스에서 정의한 메서드들만 볼 수 있습니다.

```
=> [:say_hi, :say_bye]
```

### 클래스 인스턴스 변수 변경 가능하게 하기
이미 정의된 Greeter 정의를 변경할 수 있습니다. 이미 존재하는 객체(인스턴스)
에도 영향을 줍니다.

```ruby
class Greeter
  attr_accessor :name
end
```

```ruby
g1 = Greeter.new("Jane")
g1.name = "John"
```


## 주석처리
```ruby
# Hello world
puts "Hello World!"
```

## nil
루비에 있는 특별한 객체입니다. “empty” 또는 “default” 값을 표현합니다.
```ruby
name = nil
if name == nil
  puts "name is nil"
end
```

## iteration 순환과 반복
```ruby
names = ['alice','bob', 'john']
names.each do |name|
  puts "Hello #{name}!"
end
```
do와 end 사이의 코드는 블록입니다. 블록은 익명함수 또는 람다와 유사합니다.


## 루비에서의 전가의 보도, 블록

```ruby
# Say bye to everybody
def say_bye
  if @names.nil?
    puts "..."
  elsif @names.respond_to?("join")
    # Join the list elements with commas
    puts "Goodbye #{@names.join(", ")}.  Come back soon!"
  else
    puts "Goodbye #{@names}.  Come back soon!"
  end
end
```

이처럼 단지 어떤 메서드만을 가지고 있는지에 의존하는 것을 덕 타이핑(Duck Typing)이라고 부릅니다. “만약 오리처럼 걷고 오리처럼 꽥꽥거리면…”에서처럼 말입니다. 이런 방식의 장점은 어떤 타입의 변수를 지원할 것인지를 제한할 필요가 없다는 것입니다. 만약 누군가가 새로운 종류의 list 클래스를 정의했다고 해도, 거기에 join 메서드만 정의되어 있으면 잘 동작 할 것입니다.