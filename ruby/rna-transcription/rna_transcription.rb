class Complement
  def self.of_dna(strand) 
    
    return '' if strand.split('').any? { |letter| !['C', 'G', 'T', 'A'].include?(letter) } 
    # return '' if strand.split('').any? { |x| x != ['C', 'G', 'T', 'A'] }

    # strand.split('').map { |e|
    # case e
    # when 'C'
    #   'G'
    # when 'G'
    #   'C' 
    # when 'T' 
    #   'A'
    # when 'A' 
    #   'U'
    # else ''
    # end
    # }.join('')



    if strand.each_char { |x| x == 'CGTA'}
      strand.tr('CGTA', 'GCAU')
    else
      strand.clear
    end
  end
end