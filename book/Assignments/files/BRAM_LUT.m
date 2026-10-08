% BRAM_LUT:  Create a vivado BRAM LUT containing 1024 samples of one cycle
%            of a sinusoid for DSS.
% Author:  George York
Data_Size = 16; % 16-bit
Num_Samples = 1024;
Amplitude = 2^(Data_Size-1)-0.5;  %don't want to overflow 16-bit range
Array_of_Samples(1:Num_Samples) = Amplitude*sin(((2*pi)/1024).*(0:(Num_Samples-1)))+Amplitude;
my_min = min(Array_of_Samples)

my_max = max(Array_of_Samples)

%now save to textfile in LUT init format
fileID = fopen('BRAM_LUT.txt','w');


last_k = 1;
for i = 1:64   % 64 INIT Rows
    if i < 10
        fprintf(fileID, 'INIT_0%d => X"',i);
    else
        fprintf(fileID, 'INIT_%2d => X"',i);
    end

    for j = 1:16  % 16 hex values per Row, in reverse order
        k = last_k + (16-j);
        if Array_of_Samples(k) < 2^4   % then only one hex digits so add 3 leading zeros
            fprintf(fileID, '000%X',uint32(Array_of_Samples(k)));
        elseif Array_of_Samples(k) < 2^8   % then only two hex digits so add 2 leading zeros
            fprintf(fileID, '00%X',uint32(Array_of_Samples(k)));       
        elseif Array_of_Samples(k) < 2^12   % then only three hex digits so add 1 leading zero
            fprintf(fileID, '0%X',uint32(Array_of_Samples(k)));
        else % has 4 hex digits so add 0 leading zeros
            fprintf(fileID, '%X',uint32(Array_of_Samples(k)));
        end
    end
    if i < 64
        fprintf(fileID, '",\r\n');
    else   % do last line
        fprintf(fileID, '")\r\n');
    end
    last_k = last_k + 16;
end

fclose(fileID);