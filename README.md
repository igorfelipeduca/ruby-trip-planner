# Ruby Trip Planner

### O <b>Ruby Trip Planner</b> é um projeto que desenvolvi no dia <b>21/05/2023</b> com o propósto de aprender sobre a nova tecnologia e melhorar cada vez mais o meu domínio sobre as possibilidades de um bom back-end.

### Usando como base o vídeo feito pelo [@deyvin](https://github.com/deyvin), construí essa aplicação que é responsável por fornecer informações sobre uma viagem, como um roteiro de atividades turísticas para serem desenvolvidas durante os x dias de viagem, como o clima da cidade é na época do ano de sua viagem, informações sobre a taxa criminal da cidade e também a melhor forma de se locomover da sua cidade até lá.

## Instalação
`gem install sinatra dotenv-rails ruby-openai`

`bundle`

## Usagem

Crie um arquivo `.env` e adicione a sua API key do OpenAI API. <br><br>Exemplo:
```.env
OPENAI_KEY=YOUR_KEY
```

Inicie a aplicação com o comando: <br>
```shell
ruby app.rb
```

## Rotas

- (GET) / -> Retorna uma string contendo o texto "Hello!"
- (POST) /plan -> Retorna os parâmetros `travel_itinerary, weather, criminality_rate, best_way`

Exemplo de retorno:

``` json
{
    "travel_itinerary": "Dia 1: Chegada em Vitória da Conquista\n\n- Visite o Centro Cultural Glauber Rocha, onde são apresentados filmes, exposições e peças teatrais.\n- Conheça o Mercado Municipal, onde é possível comprar frutas, legumes, artesanatos locais e doces típicos.\n- Passeie pela Praça Tancredo Neves, um dos cartões-postais da cidade.\n\nDia 2: Cachoeiras e natureza\n\n- Faça um passeio até a Cachoeira do Rio Mucugezinho, a cerca de 45 km da cidade.\n- Visite o Parque Municipal da Serra do Periperi, que tem trilhas, mirantes e nascentes de água.\n- Aproveite para contemplar o pôr do sol no Cristo de Mário Cravo, uma estátua de Jesus com braços abertos, localizada no alto de uma colina.\n\nDia 3: Cultura e história\n\n- Visite o Museu Regional, que apresenta a história da região por meio de objetos, fotos e documentos.\n- Conheça a Casa Memorial Régis Pacheco, que homenageia um dos principais líderes políticos de Vitória da Conquista.\n- Passeie pelo Centro Histórico da cidade, que possui diversas construções antigas e charmosas.\n\nDia 4: Gastronomia e compras\n\n- Experimente pratos típicos da região em restaurantes locais, como o famoso \"bode guisado\".\n- Faça compras na Feira de Artesanato, onde é possível encontrar diversos tipos de artesanato baiano.\n- Visite o Shopping Conquista Sul, que conta com diversas lojas e uma praça de alimentação. \n\nDia 5: Partida de Vitória da Conquista\n\n- Desfrute da manhã para fazer um último passeio pela cidade, visitar pontos turísticos que ainda não tenha conhecido.\n- Deixe a cidade em tempo hábil para pegar o voo ou outro meio de transporte de deslocamento.",
    "weather": "De acordo com dados históricos, o clima em Vitória da Conquista-BA durante os meses de junho a agosto é frio e seco. As temperaturas podem variar entre 10ºC e 25ºC, com pouca chance de chuva. Por isso, é recomendável levar roupas mais quentes, como casacos, jaquetas, blusas de manga longa, calças jeans e sapatos fechados. Lembre-se também de trazer protetor solar e hidratante para o rosto e lábios, já que o clima seco pode ressecar a pele.",
    "criminality_rate": "Como assistente virtual, não tenho acesso a dados atualizados sobre as taxas de violência em Vitória da Conquista-BA. Contudo, de forma geral, posso afirmar que toda cidade tem suas áreas mais seguras e outras com maiores índices de criminalidade. É importante que você faça uma pesquisa prévia sobre a região que pretende visitar, procure informações sobre a segurança nos bairros, evite áreas conhecidas como perigosas, use o seu bom senso e não deixe de seguir as recomendações das autoridades locais e de seus anfitriões. Além disso, é sempre importante estar atento e manter-se vigilante em qualquer lugar que você esteja, principalmente em locais públicos movimentados.",
    "best_way": "A melhor forma de se locomover de Guanambi a Vitória da Conquista é de carro, já que as duas cidades estão relativamente próximas e têm boa ligação por rodovias pavimentadas. No entanto, se você não tiver veículo próprio, algumas opções são:\n\n- Ônibus: Há ônibus diários que fazem o trajeto Guanambi-Vitória da Conquista, com diversas opções de horários e empresas operadoras. Verifique junto às rodoviárias locais ou sites de venda de passagens de ônibus para mais informações.\n\n- Táxi: Se preferir, é possível alugar um táxi para fazer o trajeto entre as duas cidades. Este tipo de serviço pode ser encontrado facilmente em Guanambi, mas é recomendável tentar negociar um preço justo antes de fechar o negócio.\n\n- Carona: Se você tiver amigos ou conhecidos que viajam frequentemente entre Guanambi e Vitória da Conquista, tente conseguir uma carona com eles. Além de ser uma opção mais econômica, também pode ser mais agradável e divertida do que viajar sozinho."
}
```

Saiba mais sobre mim pelo meu LinkedIn: https://
