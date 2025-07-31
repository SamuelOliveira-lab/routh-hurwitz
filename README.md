# 📚 Conceito
O Critério de Routh-Hurwitz determina a estabilidade de um sistema sem precisar calcular explicitamente as raízes do polinômio característico. A estabilidade é garantida se não houver mudanças de sinal na primeira coluna da tabela.

# 🎯 Analisador de Estabilidade com Routh-Hurwitz – MATLAB

Este projeto implementa o **Critério de Routh-Hurwitz** em MATLAB para determinar a estabilidade de sistemas lineares representados por equações diferenciais com coeficientes constantes.

---

## 📌 Funcionalidade

- Constrói automaticamente a **tabela de Routh-Hurwitz** a partir dos coeficientes do polinômio característico.
- Identifica se o sistema é **estável** ou **instável**, com base em mudanças de sinal na primeira coluna da tabela.
- Informa o número de **raízes com parte real positiva** (pólos no semiplano direito).

---

## 🛠️ Tecnologias

- MATLAB / Octave
- Álgebra linear
- Engenharia de controle

---

## 🔢 Exemplo

```matlab
% Polinômio estável:
coeficientes = [1, 6, 11, 6];

% Polinômio instável:
coeficientes = [3, 9, 6, 4, 7, 8, 2, 6];

Saída esperada:

Tabela de Routh-Hurwitz exibida no console.
Pólos semiplano direito: 2
Instável
```
Realizado por  
Samuel Oliveira Ferraz Porto  
CEFET-MG – Engenharia de Computação  
Ano: 2024

## ✅ Status  
✔️ Finalizado e funcional.
