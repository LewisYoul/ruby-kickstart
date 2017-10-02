class Phone
  def initialize(brand, price, color)
    @brand=brand
    @price=price
    @color=color
  end

  def summarise
    puts "Your phone's brand is #{@brand}, it cost you a whopping #{@price}, at least it's #{@color} though!"
  end

  attr_accessor 'brand', 'price', 'color'
end

moto = Phone.new 'Motorola', '£200', 'Grey'
iphone = Phone.new 'Apple', '£800', 'White'

iphone.summarise
moto.summarise
