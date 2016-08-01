class Complement
  def self.of_dna(strand)
    raise ArgumentError if strand.chars != (/^CGTA/)

    strand.gsub(/[CGTA]/, 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U')
  end
end