class Complement
  def self.of_dna(strand)
    val = ""
    strand.each_char { |x| val << find_dna_complement(x) }
    val
  end

  def self.of_rna(strand)
    val = ""
    strand.each_char { |x| val << find_rna_complement(x) }
    val
  end

  def self.find_dna_complement(nucleotides)
    # case nucleotides
    # when 'C'
    #   'G'
    # when 'G'
    #   'C'
    # when 'T'
    #   'A'
    # when 'A'
    #   'U'
    # when 'U'
    #   ''
    # when 'X'
    #   ''
    # end
    { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U', 'U' => '', 'X' => ''}[nucleotides]
  end

  def self.find_rna_complement(nucleotides)
    # case nucleotides
    # when 'C'
    #   'G'
    # when 'G'
    #   'C'
    # when 'U'
    #   'A'
    # when 'A'
    #   'T'
    # end
    {'C' => 'G', 'G' => 'C', 'U' => 'A', 'A' => 'T'}[nucleotides]
  end

end