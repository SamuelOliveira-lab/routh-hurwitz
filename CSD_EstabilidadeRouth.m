close all
clear
clc

%coeficientes = [1, 6, 11, 6];   %Estavel
coeficientes = [3, 9, 6, 4, 7, 8, 2, 6];   % Instável



tabela = [];


%------------------------------------------------------------------------------
primeira_linha = [];

for i = 1:2:length(coeficientes)
    primeira_linha = [primeira_linha, coeficientes(i)];
end

while length(primeira_linha) <= 2
    primeira_linha = [primeira_linha, 0];
end

tabela = [tabela; primeira_linha];

%------------------------------------------------------------------------------


segunda_linha = [];
for i = 2:2:length(coeficientes)
    segunda_linha = [segunda_linha, coeficientes(i)];
end
while length(segunda_linha) < length(primeira_linha)
    segunda_linha = [segunda_linha, 0];
end

tabela = [tabela; segunda_linha];


%------------------------------------------------------------------------------

numeroDeColunas = length(primeira_linha);
linhasRestantes = length(coeficientes) - 2;

%------------------------------------------------------------------------------

for linha = 1:linhasRestantes
    novaLinha = [];
    divisor = tabela(linha + 1, 1);
    esquerda = tabela(linha:linha + 1, 1);
    
    for coluna = 1:numeroDeColunas
        if coluna == numeroDeColunas
            direita = [0; 0];
        else
            direita = tabela(linha:linha + 1, coluna + 1);
        end
        
        determinante = [esquerda, direita];
        valor = -det(determinante) / divisor;
        novaLinha = [novaLinha, valor];
    end
    tabela = [tabela; novaLinha];
end

%------------------------------------------------------------------------------

disp(tabela);
disp('')

%------------------------------------------------------------------------------

primeiraColuna = tabela(:, 1);
sinal = sign(primeiraColuna(1));
instavel = 0;
mudancas_de_sinal = 0;  

for i = 2:length(primeiraColuna)
    valor = primeiraColuna(i);
    if sinal ~= sign(valor)
        mudancas_de_sinal = mudancas_de_sinal + 1;
        sinal = sign(valor); 
    end
end

%------------------------------------------------------------------------------

if mudancas_de_sinal > 0
    disp(['Pólos semiplano direito: ', num2str(mudancas_de_sinal)]);
    disp('Instável');
else
    disp('Estável');
end
