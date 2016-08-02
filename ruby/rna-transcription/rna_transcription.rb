class Complement
  def self.of_dna(strand)
    # if strand.match(/[^BD-FH-SU-Z]/)
    #   strand.gsub(/[CGTA]/, 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U')
    # else 
    #   ''
    # end    
    alphabet = {
      'C' => 'G', 
      'G' => 'C',
      'T' => 'A',
      'A' => 'U',
      }

    strand.split('').map do |x|
      case strand
        when !alphabet[x] then ''
        when x.include?(nil) then ''
        else alphabet[x]
      end
    end.join('')
  end
end