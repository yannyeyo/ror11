module PalindromsHelper
    def result_array(num)
      (2..num).map do |elem|
        c = 0;
        (2..elem).each do |i|
          if (elem.to_i) % i == 0 then c+=1
          end
        end
        if c == 1 then elem.to_i
        end
      end.compact
    end
  
    def add_to_database(number)
      row = []
      row << { num: number.to_i, 
               result: result_array(number).compact.join(' '),
               count: result_array(number).size,
               squares: result_array(number).map { |el| (2**el) - 1 }.join(' ') 
             }
      Palindrom.insert_all(row)
    end
  
    def exists(value)
      obj = Palindrom.find_by(num: value)
      arr = obj[:result].split.map(&:to_i)
      sqr = obj[:squares].split.map(&:to_i)
      Hash[arr.zip sqr]
    end
  end