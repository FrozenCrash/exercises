class Raindrops
  CONST = {
      3 => 'Pling',
      5 => 'Plang',
      7 => 'Plong'
    }
  def self.convert(val)
    msg = ''

    CONST.each do |(num, str)|
      msg << str if val % num == 0
    end

    if msg.empty?
      val.to_s
    else
      msg
    end

  end
end