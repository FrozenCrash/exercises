class Complement
  def self.of_dna(strand)
    if strand.match(/[^BD-FH-SU-Z]/)
      strand.gsub(/[CGTA]/, 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U')
    else
      ""
    end    
  end
end