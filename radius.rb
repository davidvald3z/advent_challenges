class Radius
    def program
        loop do
            puts "Escriba la palabra:"
            word = gets.chomp

            if palindromo(word)
                puts "La palabra en orden inverso es : #{sort_pal(word)}"
                break
            end
        end
    end

    def palindromo(pal)
        is_pal = true
        pal_arr = pal.split("")
        last_pos = apl_arr.size - 1

        apl_arr.each_with_index do |c, i|
            is_pal = false if c != apl_arr[last_pos]
            last_pos -=  1
            break if last_pos < i
        end

        is_pal
    end

    def palindromo_shorter_way(pal)
        pal_arr = pal.split("")
        pal == pal_arr.reverse.join
    end

    def sort_pal(pal)
        pal.split("").sort.reverse.join
    end
end