require_relative '../coin_combinations'

RSpec.describe '#coin_combinations' do
    describe 'coin_combinations' do
    it ('returns smallest number of quarters, dimes, nickels, and pennies needed to make that change') do
        expect(coin_combinations(14)).to(eq(" Change ammount: 14  is  quarters (0),  dimes (1), nickels (0), and pennies (4) "))
    end
    it ('returns smallest number of quarters, dimes, nickels, and pennies needed to make that change') do
        expect(coin_combinations(93)).to(eq(" Change ammount: 93  is  quarters (3),  dimes (1), nickels (1), and pennies (3) "))
    end
    it ('returns smallest number of quarters, dimes, nickels, and pennies needed to make that change') do
        expect(coin_combinations(50)).to(eq(" Change ammount: 50  is  quarters (2),  dimes (0), nickels (0), and pennies (0) "))
    end
    end
end