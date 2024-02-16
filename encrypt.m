%3. Encryption Algorithm
original = 'This is my top secret message';
v = randperm(length(original)); % Vector of the indices original from 1 to the lenght of original string
encoded = original(v); % Encode the original string
m = (1:length(original))';
mv = [v', m]; % Temporary matirx 
sort = sortrows(mv); % Sort the tempoary matrix
ex = sort(:, 2); % Extract the second column of the temporary matrix
dm = encoded(ex); % Decoded message
disp(['Original:' original; 'Encoded: ' encoded; 'Decoded: ' dm]); % Display the result in 3 lines
correct.correct = strcmp(original, dm); % Compare the original and decoded message are the same
disp(['Decoded correctly(1 true, 0 flase): ' num2str(correct.correct)]) % Display final output