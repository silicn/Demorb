#! /usr/bin/ruby -w
puts "This is a test"

class Customer
    @@no_of_customers=0
    def initialize(id, name, addr)
        @cust_id=id
        @cust_name=name
        @cust_addr=addr
    end
    def display_info()
        puts "#@cust_name #@cust_addr"
    end
end

cust1=Customer.new('1',"xiaoming","djsa")
cust2=Customer.new('2',"xiaohua","dsadasdsa")

cust2.display_info

class Sample
    def hello
        puts "hello ruby!"
    end
end

sa = Sample.new
sa.hello

$global_var=10
class Class1
    def print_global()
        puts "全局宝变量:#$global_var"
    end
end

class Class2
    def print_global()
        puts "全集包:#$global_var"
    end
end

obj1 = Class1.new
obj2 = Class2.new
obj1.print_global

i = 0
num = 5
while i < num do 
    puts("循环语句 i = #{i}")
    i +=1
end

until i > 10 do
    puts("在until语句中 i= #{i}")
    i += 1
end

(0..5).each do |i|
    puts("局部变量 #{i}")
end

puts("外部变量 i = #{i}")

for i in 0..5
    if i > 2 then
        break
    end
    puts("局部变量 #{i}")
end

def students_name (var1,var2)
    puts("name = #{var1}  #{var2}")
end

students_name "消化","xiaoming"
# 多参数方法
def test (*vars)
    for i in 0...vars.length
        puts "多参数打印: #{i} = #{vars[i]}"
    end
end

test "是撒","haoba","你水","你在哪"
# Block
def blocks 
    puts "block 内"
    yield
    puts "又回到block内"
    yield
end

blocks { puts "你在哪里"}

def aBlock (&block)
    puts("执行1")
    block.call
    puts "执行2"
end
aBlock{ puts "Hello,World"}
# module
module Week
    Fist_Day = "Sunday"
    def Week.week_in_month
        puts "you have month"
    end
    def Week.week_in_year
        puts "you have year"
    end
end

y = Week.week_in_year
puts y

class Decade
    include Week
    def no_of_month
        puts Week::Fist_Day
    end
end
# 引用module
d = Decade.new
Week.week_in_month
d.no_of_month
# string
name1 = "silicn"
name2 = "xiaming"

puts "name is #{name1} #{name2}"
# 创建4个值数组
names = Array.new(4,"mac")
puts names
# 创建数组
students = ["xiaming","nali","hehehda"]

puts students
puts students.at(1)

# 返回更改值
arr =  students.map {
    |item|
    item += "ss"
}

puts arr

#更改students
students.map! {
    |item|
    item += "ii"
}
puts students
#移除nil
students.compact

# Hash
h = Hash["a" => 100,"b" => 200]
puts "#{h['a']}"

time1 = Time.new
puts "当前时间: #{time1}"
puts "时间: 年:#{time1.year} 月:#{time1.month} 时:#{time1.hour}"

students.each do |i|
    puts i 
end
# 输入
# puts "输入一个值:"
# var = gets
# puts var


# File
aFile = File.new("te.txt","r+")
if aFile
    content = aFile.sysread(20)
    puts content
else
    pust "read file error"
end

aFile.syswrite('huozhe nishuo de dui')
aFile.rewind

puts aFile.sysread(40)

if File::exist?('tes.txt')
    File.rename('tes.txt','test.txt')
else
    if File.readable?('test.txt')
        cFile = File.new("test.txt")
        puts "file can read #{cFile.size}"
    end
    puts 'file not exist'
end



