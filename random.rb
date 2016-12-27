def generate_activation_code(size)
  charset = %w{ 0 1 2  3 4  5 6 7 8 9 A C D E F G H J K M N P Q R T V W X Y Z}
  (0...size).map{ charset.to_a[rand(charset.size)] }.join
end
puts generate_activation_code(50)
