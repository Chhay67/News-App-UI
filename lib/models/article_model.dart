import 'package:equatable/equatable.dart';

class ArticleModel extends Equatable {
  final String id;
  final String title;
  final String subTitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const ArticleModel({
    required this.id,
    required this.title,
    required this.subTitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });
  static List<ArticleModel> articles = [
    ArticleModel(
        id: '1',
        title:
            'North Korea’s food shortage is about to take a deadly turn for the worse, experts say',
        subTitle: 'North Korea’s food shortage',
        body:
            'Concerns about North Korea’s chronic food shortages are growing, with multiple sources suggesting this week that deaths due to starvation are likely.Some experts say the country has hit its worst point since a 1990s famine known as the “Arduous March” caused mass starvation and killed hundreds of thousands of people, or an estimated 3-5% of what was then a 20 million-strong population.Trade data, satellite images and assessments by the United Nations and South Korean authorities all suggest the food supply has now “dipped below the amount needed to satisfy minimum human needs,” according to Lucas Rengifo-Keller, a research analyst at the Peterson Institute for International Economics.',
        author: 'Preet Uday',
        authorImageUrl:
            'https://media.cnn.com/api/v1/images/stellar/prod/150703102759-paul-hancocks-new.jpg?c=16x9&q=h_270,w_480,c_fill/c_thumb,g_face,w_100,h_100',
        category: 'food',
        imageUrl:
            'https://media.cnn.com/api/v1/images/stellar/prod/230303021949-01-nk-90s-famine-050697-file.jpg?c=16x9&q=h_720,w_1280,c_fill',
        views: 1202,
        createdAt: DateTime.now().subtract(const Duration(hours: 10))),
    ArticleModel(
        id: '2',
        title:
            'Newly discovered chemicals are so deadly to fungi they are named after Keanu Reeves',
        subTitle:
            'It’s not every day that effective fungus-killing compounds are discovered',
        body:
            'It’s not every day that effective fungus-killing compounds are discovered, so researchers in Germany knew their recent find needed a special name. Identifying and testing three natural compounds that proved lethal to fungi, they were so impressed they’ve named the chemicals after actor Keanu Reeves, a nod to how he eliminates villains in movies such as John Wick and The Matrix.',
        author: 'Taylor Nicioli',
        authorImageUrl: '',
        category: 'fashion',
        imageUrl:
            'https://media.cnn.com/api/v1/images/stellar/prod/230302135454-01-keanu-reeves-fungus-treatment-restricted.jpg?c=16x9&q=h_720,w_1280,c_fill',
        views: 1201,
        createdAt: DateTime.now().subtract(const Duration(hours: 15))),
    ArticleModel(
        id: '3',
        title:
            'Ukraine latest: Numerous Bakhmut attacks still being repelled, says Kyiv',
        subTitle: 'Russia-Ukraine war',
        body:
            'Numerous attacks have been repelled in the area of eastern Donetsk over the last 24 hours, Ukraine is military says.Russian forces claim they are about to take the eastern city of Bakhmut - the focus of intense fighting for many months.The head of Russia Wagner private army claims it is "practically encircled" with limited routes out.The deputy mayor of the city told the BBC there was street fighting between Russian and Ukrainian forces.But Oleksandr Marchenko said Russia was not yet in control, despite constant shelling."They have no goal to save the city... their only goal is killing people and the genocide of the Ukrainian people," Mr Marchenko told the Today programme.The UK Ministry of Defence said Bakhmut  under "increasingly severe" pressure.According to the UK intelligence, Russian forces and Wagner troops have made further advances into northern suburbs, making the Ukraine-held section of the city vulnerable to Russian attacks on three sides.The commander of Ukraine ground forces, Col Gen Oleksandr Syrskyi, visited Bakhmut on Friday for meetings with local commanders on how to bolster front-line forces.',
        author: 'Jaroslav Lukiv & Sam Hancock',
        authorImageUrl: '',
        category: 'war',
        imageUrl:
            'https://ichef.bbci.co.uk/news/976/cpsprodpb/A108/production/_128842214_ukraine_howitzer_getty.jpg.webp',
        views: 1205,
        createdAt: DateTime.now().subtract(const Duration(hours: 20))),
    ArticleModel(
        id: '4',
        title: 'Half of world on track to be overweight by 2035',
        subTitle: 'More than half the world population will be classed as obese or overweight by 2035 if action is not taken, the World Obesity Federation warns.',
        body: 'More than four billion people will be affected, with rates rising fastest among children, its report says.Low or middle-income countries in Africa and Asia are expected to see the greatest rises.The report predicts the cost of obesity will amount to more than \$4tn (£3.3tn) annually by 2035.The president of the federation, Prof Louise Baur, described the report\'s findings as a clear warning to countries to act now or risk repercussions in the future.The report in particular highlights the rising rates of obesity among children and teenagers, with rates expected to double from 2020 levels among both boys and girls.Prof Baur said the trend was "particularly worrying", adding that "governments and policymakers around the world need to do all they can to avoid passing health, social, and economic costs on to the younger generation" by assessing "the systems and root factors" that contribute to obesity.The effects of obesity\'s prevalence on lower-income countries is also highlighted in the report. Nine of the 10 countries with the greatest expected increases in obesity globally are low or lower-middle income states in Africa and Asia.',
        author: 'Alys Davies',
        authorImageUrl: 'https://media.licdn.com/dms/image/C4D03AQFlyyHdCfsiag/profile-displayphoto-shrink_800_800/0/1588790427530?e=2147483647&v=beta&t=M20aGl09SX6OwmSDDqrI8AWJHumLFSAK--EUxXOUqZk',
        category: 'health',
        imageUrl: 'https://ichef.bbci.co.uk/news/976/cpsprodpb/85D7/production/_128836243_gettyimages-1001048332.jpg.webp',
        views: 1206,
        createdAt: DateTime.now().subtract(const Duration(hours: 22)))
  ];
  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        title,
        subTitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt
      ];
}
