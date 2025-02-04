import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Burger Queen"),
        centerTitle: true,
        leading: const Icon(Icons.restaurant_menu),
        actions: const [
          Icon(Icons.person),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Theme.of(context).colorScheme.inversePrimary,
              height: 150,
              child: Center(
                child: Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.location_on),
                            const Text(
                              "Mon restaurant le plus proche",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            Text(
                              "4 km",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.pink,
                          ),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.touch_app,
                                color: Colors.white,
                              ),
                              SizedBox(width: 16),
                              Text(
                                "Commander",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              "En ce Moment",
              style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Card(
                      elevation: 6,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/layer-burger.jpg",
                                    width:
                                        MediaQuery.of(context).size.width * 0.7,
                                    fit: BoxFit.cover,
                                  ),
                                  const Positioned(
                                    top: 16,
                                    child: Text(
                                      "Une petite faim ?",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ],
                              ))),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              "Chaud devant",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const Text("Le meilleur de nos burgers à portée de clic"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  customCard(
                      image: "assets/images/twins.jpg",
                      title: "Twins",
                      subTitle: "Le burger des jumeaux qui font la paire",
                      context: context),
                  customCard(
                      image: "assets/images/big-queen.jpg",
                      title: "Big Queen",
                      subTitle:
                          "Pour celles qui portent la couronne à la maison",
                      context: context),
                  customCard(
                      image: "assets/images/egg-bacon-burger.jpg",
                      title: "Egg Bacon",
                      subTitle: "Le burger des lève tôt",
                      context: context),
                  customCard(
                      image: "assets/images/prince.jpg",
                      title: "Prince",
                      subTitle: "Le préféré des futurs rois",
                      context: context),
                  customCard(
                      image: "assets/images/cheese.jpg",
                      title: "Cheese",
                      subTitle: "Le classique pour les fans de fromage",
                      context: context)
                ],
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Les accompagnements",
              style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
            rowAccompagnement(
                image: "assets/images/fries.jpg", title: "Frites"),
            rowAccompagnement(
                image: "assets/images/patate-douce.jpg",
                title: "Frite de patate douce"),
            rowAccompagnement(
                image: "assets/images/potatoes.jpg", title: "Potatoes"),
            rowAccompagnement(
                image: "assets/images/poutine.jpg", title: "Poutines"),
            const SizedBox(height: 8),
            const Text(
              "Une petite soif ?",
              style: TextStyle(
                color: Colors.brown,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  rowDrinks(
                      image: "assets/images/classic-cola.jpg",
                      title: "Le classique"),
                  rowDrinks(
                      image: "assets/images/sparkling.jpg",
                      title: "Eau gazeuse"),
                  rowDrinks(
                      image: "assets/images/orange-soda.jpg",
                      title: "A l'orange"),
                  rowDrinks(image: "assets/images/tk2.jpg", title: "Karmeliet")
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "La touche sucrée pour finir en beauté",
              style: TextStyle(
                  color: Colors.brown,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Wrap(
                alignment:
                    WrapAlignment.center, // Centre les éléments horizontalement
                spacing: 16, // Espacement horizontal entre les widgets
                runSpacing: 16, // Espacement vertical entre les lignes
                children: [
                  cardDessert(image: "assets/images/oreo-ice.jpg", title: "Oreo"),
                  cardDessert(image: "assets/images/donut.jpg", title: "Donut"),
                  cardDessert(image: "assets/images/cupcake.jpg", title: "CupCake"),
                  cardDessert(image: "assets/images/strawberry-waffle.jpg", title: "Crêpe fraise"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget customCard({
    required String image,
    required String title,
    required String subTitle,
    required BuildContext context,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 6,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              // Background Image
              Image.asset(
                image,
                height: 200,
                width: 250,
                fit: BoxFit.cover,
              ),
              // Overlay color
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 50,
                  color: const Color(0xFFFFC0D3),
                ),
              ),
              // Title
              Positioned(
                bottom: 25,
                left: 0,
                right: 0,
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
              // Subtitle
              Positioned(
                bottom: 5,
                left: 0,
                right: 0,
                child: Text(
                  subTitle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.brown,
                    fontSize: 11,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget rowAccompagnement({
    required String image,
    required String title,
    double avatarRadius = 34, // Rayon de l'avatar (valeur par défaut)
    EdgeInsetsGeometry padding =
        const EdgeInsets.all(8), // Padding autour de l'élément
  }) {
    return Container(
      color: const Color(0xFFFFC0D3), // Couleur de fond
      child: Padding(
        padding: padding,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: avatarRadius, // Image de l'accompagnement
                  backgroundImage: AssetImage(image),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 3),
              child: Divider(
                height: 3,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget rowDrinks({
    required String image,
    required String title,
  }) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 6,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              // Background Image
              Image.asset(
                image,
                height: 250,
                width: 150,
                fit: BoxFit.cover,
              ),
              // Title
              Positioned(
                top: 25,
                left: 0,
                right: 0,
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.brown,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardDessert({
    required String image,
    required String title,
  }) {
    return Card(
      elevation: 8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Stack(
          children: [
            // Image de fond
            Image.asset(
              image,
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
            // Conteneur centré
            Positioned.fill(
              child: Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8), // Ajuste l'épaisseur du conteneur
                  decoration: BoxDecoration(
                    color: Colors.white, // Couleur avec opacité
                    borderRadius: BorderRadius.circular(12), // Bords arrondis
                  ),
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
