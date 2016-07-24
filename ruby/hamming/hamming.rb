class Hamming
  def self.compute(string1, string2)
    string1 = string1.upcase
    string2 = string2.upcase
    arr1 = string1.each_char.to_a
    arr2 = string2.each_char.to_a
    count = 0
    i = 0 

    arr1.count.times do |i|
      if arr1[i] != arr2[i]
        count += 1
      end
    end
    raise ArgumentError if arr1.count != arr2.count
    count
  end
end