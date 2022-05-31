# Create a script that lets a user enter an amount of cents and shows the smallest number of quarters,
#  dimes, nickels, and pennies needed to make that change. You may want to use an until loop for this
#   project. Make sure to use TDD and unit test your code extensively.


def get_user_input
    print 'Please, enter the change amount: '
    gets.chomp.to_i
end

def coin_combinations (change_total = get_user_input())
    
    quarter = 0
    dime = 0
    nickel = 0
    pennie = 0

    pi_quarter = 25
    until pi_quarter > change_total  
        quarter += 1
        pi_quarter += 25
     end 
     
     change_remainder_dime = change_total - quarter * 25
     pi_dime = 10
     until pi_dime > change_remainder_dime  
        dime += 1
        pi_dime += 10
     end 
     
     change_remainder_nickel = change_total - quarter * 25 - dime * 10
     pi_nickel = 5
     until pi_nickel > change_remainder_nickel  
        nickel += 1
        pi_nickel += 5
     end 
     
     change_remainder_pennie = change_total - quarter * 25 - dime * 10 - nickel * 5
     pi_pennie = 1
     until pi_pennie > change_remainder_pennie  
        pennie += 1
        pi_pennie += 1
     end 
    

 p " Change ammount: #{change_total}  is  quarters (#{quarter}),  dimes (#{dime}), nickels (#{nickel}), and pennies (#{pennie}) "
end
