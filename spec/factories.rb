FactoryGirl.define do
  factory(:user) do
    email('aa@aa')
    password('123')
  end

  factory(:admin, class: User) do
    email('admin@admin')
    password('123')
  end


end
