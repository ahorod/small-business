FactoryGirl.define do
  factory(:product) do
    name('product1')
    description('1234567890' * 10)
    price(123)
  end
end
