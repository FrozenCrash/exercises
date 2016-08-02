class Complement
  def self.of_dna(strand)
    a = /[BD-FH-SU-Z]/
    b = /[^BD-FH-SU-Z]/
    if strand.match(a)
      strand = ""
    elsif strand.match(b)
      strand.gsub(/[CGTA]/, 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U')
    else 
      ''
    end
  end
end