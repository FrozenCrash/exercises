class Complement
  def self.of_dna(strand)
    val = ""
    strand.each_char { |x| val << find_dna_complement(x) }
    val
  end

  def self.find_dna_complement(nucleotides)
    case nucleotides
    when 'C'
      'G'
    when 'G'
      'C'
    when 'T'
      'A'
    when 'A'
      'U'
    when 'U'  #
      ''      
    end     
  end
end