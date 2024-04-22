a = dir;
for i = 1:numel(a)
    if ~a(i).isdir % Check if the element is not a directory
        disp(['File ', a(i).name, ' contains ', num2str(a(i).bytes), ' bytes']); % Display the file name and number of bytes
    end
end