require "guess_the_number"

describe "Guess the number game" do 

    before do 
        @output = StringIO.new
    end 

    it " Start the game and asks the player to guess a number from 0 - 100" do 
        @input = StringIO.new("7")
        game.start
        expect(@output.string.chomp).to start_with("Guess a number from 0 - 100")
    end

    it "returns message -attempt- is wrong try again" do 
        @input = StringIO.new("6")
        game.guess_one
        expect(@output.string.chomp).to end_with("6 is wrong, try again")
    end

    it "returns -attempt- is the right answer" do 
        @input = StringIO.new("7")
        game.guess_one
        expect(@output.string.chomp).to start_with("7 is the right answer, you won!")
    end

    it "asks the user to guess twice if the @input is wrong" do 
        @input = StringIO.new("6\n7")
        game.guess
        expect(@output.string.chomp).to end_with("6 is wrong, try again\n7 is the right answer, you won!")
    end

    it "asks the user to guess once if the @input is right" do 
        @input = StringIO.new("7")
        game.guess
        expect(@output.string.chomp).to eq("7 is the right answer, you won!")
    end

    it "asks the user to guess three times if the @input is wrong the first two" do
        @input = StringIO.new("6\n5\n7")
        game.guess
        expect(@output.string.chomp).to end_with("7 is the right answer, you won!")
    end

    def game
        GuessingGame.new(@input,@output,7)
    end

end












