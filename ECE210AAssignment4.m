% Julie Hum 
% ECE210A Assignment 4

clc;

%1. 
dotprod = @(value1, value2) value1' * value2;

%2.
function result = is_orthonormal(twoDarray, func_handle)
    result = false;

    for i = 1:size(twoDarray, 2)

        for j = i+1:size(twoDarray, 2)
            if abs(func_handle(twoDarray(:, i), twoDarray(:, j))) > 1000 * eps
                return
            end
        end

        if abs(func_handle(twoDarray(:, i), twoDarray(:, i)) - 1) > 1000 * eps
            return
        end
    end

    result = true;
end

%3.
function result = gram_schmidt(TDA, func_handle) 
    if is_orthonormal(TDA, func_handle) 
        result = TDA; 
        return 
    end 
    
    for i = 1:size(TDA, 2) 
        v = TDA(:, i); 
        
        for j = 1:i-1 
            v = v - func_handle(TDA(:, j), TDA(:, i)) * TDA(:, j); 
        end 
        
        TDA(:, i) = v / sqrt(func_handle(v, v)); 
    end
    result = TDA; 
end

%4.
M = randi(15, 4, 4) + 1j * randi(15, 4, 4);
x = gram_schmidt(M, dotprod)
is_orthonormal(x, dotprod)
    

