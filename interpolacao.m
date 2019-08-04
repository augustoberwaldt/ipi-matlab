

I = imread('C:\Users\Harley\Desktop\lenacolormenor2.jpg');

result = interpolate(I , 2);
imshow(result);


function HR = interpolate(I, ratio)

    [h, w, z] = size(I);
    %novos tamanho da imagem
    H  = (ratio * h);
    W  = (ratio * w); 
   
    % filtros
    M1 = (1/(4*sqrt(2))) * [-1 0 0; 0 0 0; 0 0 1];
    M2 = (1/(4*sqrt(2))) * [0 0 -1; 0 0 0; 1 0 0];
    M3 = [];
    M4 = [];
    
    % HR  imagem maior
    HR = zeros(H,W);
    HR = cast(HR, 'like', I);
    
    %alpha
    %beta
    alpha = 0;
    beta = 0;
    %aqui replicamos os valores dos pixes para matriz maior
    
    hs = (h/H);
    ws = (w/W);
    for x = 1 : h
        y = (hs * x) + (0.5 * (1 - 1/ratio));
        for y = 1 : w
              x = (ws * y) + (0.5 * (1 - 1/ratio));
            
              HR(x , y ) = I(x, y);
         
        end 
    end 
    %aqui vamos comecar a intepolacao
    
end

function sum = somatorio(mat , k)
    

end