### Identificação:
Ana Paula Militz Dorneles

### Exemplos de imagens de saída: 
1.
![Imagem 1](images/output.svg)

2. 
![Imagem 2](images/output(1).svg)

3. 
![Imagem 3](images/output(2).svg)

4. 
![Imagem 4](images/output(3).svg)

5. 
![Imagem 5](images/output(4).svg)

5. 
![Imagem 6](images/output(5).svg)

### Explicação sobre como executar o programa:
Em Python, para executar o programa Main.py:

1. Abra o arquivo no [Replit](https://replit.com).

2. Abra o shell do Replit.

3. Digite o comando "python Main.py"

Em Haskell, para executar o programa Main.hs:

1. Abra o arquivo no [Replit](https://replit.com).

2. Abra o shell do Replit.

3. Digite o comando "ghci Main.hs"

4. Espere o arquivo carregar e chame a função main, pelo comando "main".

### Análise comparativa dos códigos:
1. Objetivo: Tanto em python quanto em haskell, visa-se criar, através de formas geométricas, uma imagem SVG que busca se assemelhar com o Sistema Solar (embora não de maneira precisa). Para tal, são criadas as seguintes funções (de mesmo nome em ambos códigos):

**svgBegin:** define o início da imagem SVG e suas dimensões (largura e altura). 

**svgEnd:** retorna uma string que define o fim da imagem SVG. 

**svgTriangle:** cria um triângulo utilizando a tag `<polygon>`, recebe coordenadas x e y e cor como argumentos e é utilizada, depois, para criar as estrelas do sistema solar.

**svgCircle:** cria um círculo, utilizando a tag `<circle>`, recebe coordenadas x e y, o raio do círculo, a cor do círculo, a cor da borda e a espessura da borda. Depois, é utilizada para criar o sol e os planetas. 
 
**svgRect:** cria um retângulo utilizando a tag `<rect>`, recebe coordenadas x e y e uma cor de preenchimento e é utilizada como uma maneira de criar o background da imagem.
  
**svgAll:** recebe coordenadas das posições dos elementos da imagem (planetas e estrelas) e uma string que representa suas cores. É utilizada para criar estes elementos da imagem e utiliza as funções svgBegin para criar a imagem e svgEnd para finalizá-la.  
  
**getRandomCoords:** utiliza a função randomRIO da biblioteca System.Random para gerar coordenadas aleatórias entre 0 e 500 a serem utilizadas como parâmetros nas funções svgCircle e svgTriangle (e fazer os planetas e estrelas serem posicionados em locais diferentes da imagem quando o código é executado).
  
**main:** é utilizada para definir as coordenadas aleatórias dos planetas e estrelas do código, chamar a função svgAll para que estes planetas e estrelas sejam criados e escrever o resultado em um arquivo .svg chamado "output".
  


### Créditos para sites/pessoas que ajudaram:
https://www.w3schools.com/graphics/svg_rect.asp

https://www.w3schools.com/graphics/svg_circle.asp

https://www.w3schools.com/graphics/svg_polygon.asp
