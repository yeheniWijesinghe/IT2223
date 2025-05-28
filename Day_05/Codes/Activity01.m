disp('ATM Simulation Program')
balance = 1000;

while true
    fprintf('\nATM Menu:\n');
    fprintf('1. Deposit\n');
    fprintf('2. Withdraw\n');
    fprintf('3. Balance Inquiry\n');
    fprintf('4. Exit\n');
    
    
    choice = input('Please enter your choice (1-4): ');
    
    
    switch choice
        case 1  
            deposit_amount = input('Enter the amount to deposit: ');
            
            if deposit_amount > 0
                balance = balance + deposit_amount;
                fprintf('Successfully deposited %.2f. Your new balance is %.2f.\n', deposit_amount, balance);
            else
                fprintf('Invalid deposit amount. Please enter a positive amount.\n');
            end
            
        case 2  
            withdraw_amount = input('Enter the amount to withdraw: ');
            
            if withdraw_amount > 0
                if withdraw_amount <= balance
                    balance = balance - withdraw_amount;
                    fprintf('Successfully withdrew %.2f. Your new balance is %.2f.\n', withdraw_amount, balance);
                else
                    fprintf('Insufficient funds. Your balance is %.2f.\n', balance);
                end
            else
                fprintf('Invalid withdraw amount. Please enter a positive amount.\n');
            end
            
        case 3  
            fprintf('Your current balance is %.2f.\n', balance);
            
        case 4  
            fprintf('Thank you for using the ATM. Goodbye!\n');
            break;  
            
        otherwise
            fprintf('Invalid choice. Please enter a number between 1 and 4.\n');
    end
end