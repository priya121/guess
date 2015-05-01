class GuessingGame 

    def initialize(input,output,number)
        @number = number
        @input = input
        @output = output
    end

    def start
        @output.puts "Guess a number from 0 - 100"
    end  

    def guess
        while guess_one != :correct_answer
        end
    end

    def guess_one 
        attempt = @input.gets.to_i
        if attempt == @number
            @output.puts "#{attempt} is the right answer, you won!"
            return :correct_answer
        else 
            @output.puts "#{attempt} is wrong, try again"
        end
    end

end

