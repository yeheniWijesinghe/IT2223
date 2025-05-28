fprintf('Student Club Voting System \n')
num_voters = input('Enter the total number of voters: ');
votes = [0, 0, 0, 0];

for i = 1:num_voters
    fprintf('\nVoter %d: Please choose a candidate:\n', i);
    fprintf('1. Candidate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');
    
    vote = input('Enter your choice (1-4): ');
    
    switch vote
        case 1
            votes(1) = votes(1) + 1;  
        case 2
            votes(2) = votes(2) + 1;  
        case 3
            votes(3) = votes(3) + 1;  
        case 4
            votes(4) = votes(4) + 1;  
        otherwise
            fprintf('Invalid vote! Please enter a number between 1 and 4.\n');
    end
end

%Vote count
fprintf('\nVote counts:\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));

%Winner
[~, winner_index] = max(votes);
switch winner_index
    case 1
        winner = 'Candidate A';
    case 2
        winner = 'Candidate B';
    case 3
        winner = 'Candidate C';
    case 4
        winner = 'Candidate D';
end

fprintf('\nThe winner is: %s\n', winner);

while true
    fprintf('\nVisualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot (Creative Visualization)\n');
    fprintf('4. Exit\n');

    choice = input('Enter your choice (1-4): ');
    
    switch choice
        case 1
            figure;
            bar(votes);
            title('Vote Counts for Each Candidate');
            xlabel('Candidates');
            ylabel('Votes');
            set(gca, 'xticklabel', {'A', 'B', 'C', 'D'});
            grid on;
        
        case 2
            figure;
            pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Vote Distribution');
        
        case 3
            figure;
            scatter(1:4, votes, 'o', 'filled');
            title('Vote Counts for Each Candidate (Scatter Plot)');
            xlabel('Candidates');
            ylabel('Votes');
            set(gca, 'xtick', 1:4, 'xticklabel', {'A', 'B', 'C', 'D'});
            grid on;
        
        case 4
            fprintf('Exiting program.\n');
            break;
        
        otherwise
            fprintf('Invalid choice! Please choose between 1 and 4.\n');
    end
end


