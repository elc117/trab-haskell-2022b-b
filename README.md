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

6. 
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
**1. Objetivo:** Tanto em python quanto em haskell, visa-se criar, através de formas geométricas, uma imagem SVG que busca se assemelhar com o Sistema Solar (embora não de maneira precisa). Para tal, são criadas as seguintes funções (de mesmo nome em ambos códigos):

**svgBegin:** define o início da imagem SVG e suas dimensões (largura e altura). 

**svgEnd:** retorna uma string que define o fim da imagem SVG. 

**svgTriangle:** cria um triângulo utilizando a tag `<polygon>`, recebe coordenadas x e y e cor como argumentos e é utilizada, depois, para criar as estrelas do sistema solar.

**svgCircle:** cria um círculo, utilizando a tag `<circle>`, recebe coordenadas x e y, o raio do círculo, a cor do círculo, a cor da borda e a espessura da borda. Depois, é utilizada para criar o sol e os planetas. 
 
**svgRect:** cria um retângulo utilizando a tag `<rect>`, recebe coordenadas x e y e uma cor de preenchimento e é utilizada como uma maneira de criar o background da imagem.
  
**svgAll:** recebe coordenadas das posições dos elementos da imagem (planetas e estrelas) e uma string que representa suas cores. É utilizada para criar estes elementos da imagem e utiliza as funções svgBegin para criar a imagem e svgEnd para finalizá-la.  
  
**getRandomCoords:** gera coordenadas aleatórias entre 0 e 500 a serem utilizadas como parâmetros nas funções svgCircle e svgTriangle (e fazer os planetas e estrelas serem posicionados em locais diferentes da imagem quando o código é executado). Em haskell, é utilizada a função randomRIO da biblioteca System.Random para este propósito, já em Python, é utilizada a função random.randint do módulo random.
  
**main:** é utilizada para definir as coordenadas aleatórias dos planetas e estrelas do código, chamar a função svgAll para que estes planetas e estrelas sejam criados e escrever o resultado em um arquivo .svg chamado "output".
  
**2. Legibilidade:** Na função, svgAll, por exemplo, por possuir muitos argumentos, pode-se argumentar que a versão da função em Python é um pouco mais legível, uma vez que não possuir as tipagens explícitas de Haskell torna o código mais sucinto. Por outro, lado, em geral, também pode ser mais fácil entender um código em haskell, pois as tipagens mostram para programadores que estão tentando entender o código de outra pessoa que tipo de dado é esperado em cada função ou variável.

**3. Tecnologias e bibliotecas:** Um dos códigos é escrito na linguagem Python e importa o módulo random para gerar coordenadas de números inteiros aleatórios. O outro é escrito em Haskell e utiliza a biblioteca Text.Printf para formatar e imprimir strings e a biblioteca System.Random para gerar coordenadas de números inteiros aleatórios, assim como no código em Python. Ambos utilizam a linguagem de marcação SVG para gerar gráficos vetoriais. Então, foi necessário utilizar 2 bibliotecas em Haskell, em comparação com um módulo em Python. Além disso, o uso da biblioteca System.Random em Haskell precisa de alguns passos adicionais no website Replit para que possa ser utilizado, em comparação com o módulo random de Python, que pode só ser importado com uma linha "import random".

**4. Semelhanças: As principais semelhanças são que ambos os códigos estão estruturados da mesma maneira, possuem uma mesma quantidade de funções, cujas quais estão nomeadas da mesma forma e são declaradas numa mesma sequência no código. As funções em ambos os códigos cumprem as mesmas funcionalidades e ambos os códigos têm uma mesma finalidade geral.  

**5. Diferenças gerais:** No geral, as principais diferenças entre os códigos foram:

- Os tipos: todas as funções do código na sua versão em Haskell tiveram assinaturas de tipo, enquanto em Python, não.
- A sintaxe: como consequência da forte tipagem de Haskell, a declaração de funções acaba sendo diferente de uma linguagem pra outra. Em Haskell, a função inclui o nome da função, os tipos de entrada e de saída. Em Python, inclui só o nome da função e seus argumentos. Para atribuir valor, também foi utilizado o símbolo "=" em todas as funções do código em Haskell, em comparação com a palavra return, em Python. Além disso, foi utilizado o operador ++ para concatenar as strings de formato SVG retornadas pelas funções svgBegin, svgRect, svgCircle, etc. Já, em Python, foi utilizado o operador +. Dentre outras diferenças.
- Abertura do arquivo: Em Haskell, para escrever no arquivo foi utilizada a função writeFile, quanto em Python, foi utilizado o comando with open.
- O gerador de números aleatórios: conforme citado anteriormente, ambos são gerenciados por módulos/bibliotecas diferentes. 
- O IO: Em haskell, a saída e entrada de dados são gerenciados pelo mecanismo Monads IO, enquanto em Python, é por meio de funções como print e input.

### Créditos para sites/pessoas que ajudaram:

-Código de exemplo apresentado na disciplina de Paradigmas de Programação (que mostra a estrutura de criação de um arquivo SVG, com as funções svgBegin, svgEnd, svgAll, etc, para criar dois círculos).

https://www.w3schools.com/graphics/svg_rect.asp

https://www.w3schools.com/graphics/svg_circle.asp

https://www.w3schools.com/graphics/svg_polygon.asp

https://www.portugal-a-programar.pt/forums/topic/66599-função-randomrio-de-systemrandom/

https://www.softwarefactory-project.io/haskell-for-python-developers.html

etc.
