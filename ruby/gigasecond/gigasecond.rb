class Gigasecond
  def self.from(day)
    day + GIGA_SECOND
  end

  # def self.gigasecond
  #   10**9
  # end

  GIGA_SECOND = 10**9 # 1kkk seconds == 1 gSecond (giga second)

end