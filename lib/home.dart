import 'dart:ui';
import 'package:vola1/test.dart';
import 'package:flutter/material.dart';
import 'package:vola1/colors.dart';
import 'package:vola1/constant.dart';
import 'package:vola1/style.dart';
import 'package:randomizer/randomizer.dart';

class Home extends StatelessWidget {
  Randomizer randomizer = Randomizer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(217, 167, 199, 1),
              Color.fromRGBO(255, 252, 220, 1),
              // Color.fromRGBO(44, 83, 100, 1),
            ],
          ),
        ),
        child: ListView(
          children: [
            customAppBar(),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destination.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                  child: destinationCard(
                    context,
                    destination[index]['imagePath'],
                    destination[index]['placeName'],
                    destination[index]['placeCount'],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 25, right: 25, bottom: 30, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PrimaryText(
                    text: 'Continents',
                    size: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: infoDestination.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                  child: infoDestinationCard(
                    context,
                    infoDestination[index]['imagePath'],
                    infoDestination[index]['placeName'],
                    infoDestination[index]['placeCount'],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: infoCountry.length,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.only(left: index == 0 ? 30 : 0),
                  child: infoCountryCard(
                    context,
                    infoCountry[index]['imagePath'],
                    infoCountry[index]['placeName'],
                    infoCountry[index]['placeCount'],
                  ),
                ),
              ),
            ),
            SizedBox(height: 50),
            SizedBox(
              child: Center(
                child: Text(
                  'Something Fun!',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 50,
                      fontFamily: 'Dancing_Script'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 25, right: 25, bottom: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 90,
                    child: Column(
                      children: [
                        // PrimaryText(
                        //   text:
                        //       'Something fun!                                           ',
                        //   size: 25,
                        //   color: Color.fromRGBO(14, 14, 63, 0.9),
                        // ),
                        SizedBox(height: 30),
                        Center(
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 40, right: 20),
                                child: new Text(
                                  randomizer.getrandomelementfromlist([
                                    'Spitting in Greek cultures is a kind of good luck charm that is supposed to help ward off the devil.',
                                    'Unlike many other countries who don’t tip at all or who only tip in small amounts when the food was particularly good, tipping is rather mandatory at most restaurants in the U.S. In fact, it is expected that patrons leave between 10-20 percent of the bill in tips. Wait staff rely on this gratuity for a living because legal wages for waiters are low.',
                                    'In Nicaragua, it is common to point with the lips instead of the thumb or index finger like the majority of the world.',
                                    'Unlike many other countries who don’t tip at all or who only tip in small amounts when the food was particularly good, tipping is rather mandatory at most restaurants in the U.S. In fact, it is expected that patrons leave between 10-20 percent of the bill in tips. Wait staff rely on this gratuity for a living because legal wages for waiters are low.',
                                    'While cemeteries are the sites of spooky lore in many countries, this is not so much the case in the ever so secular Denmark. Many people might prefer to hang out in parks, but the Danes find it becoming to convert their cemeteries into areas for socializing, a rather pragmatic use of space we might add.',
                                    'Ethiopia follows a calendar that is seven years behind the rest of the world.',
                                    'In Denmark, citizens have to select baby names from a list of 7,000 government-approved names.',
                                    'In Malaysia, authorities prohibited its people from wearing yellow clothing.',
                                    'India gave the world its sweet tooth. Although sugarcane originated in Southeast Asia, it was first chemically refined about 2,500 years ago in India. (Thanks, India!)',
                                    'In China,there are 63 million pairs of chopsticks — or 126 million single sticks — manufactured in China every year. These range from mass-produced disposable chopsticks to high-quality sticks that can take up to (yes) a month to painstakingly make.',
                                    'Indonesia is Southeast Asian country is the world’s largest island nation, but no one knows exactly how many islands it contains (thousands and thousands, to be imprecise). Indonesia attempted to count them all in 2017, but several differing figures still exist.',
                                    'There are more uncontacted people in Brazil’s portion of the Amazon than anywhere else on the planet, with the number of isolated tribes believed to be more than 100.',
                                    'In Nigeria, the Yoruba people in the southwest part of this African nation are known for giving birth to more twins than anywhere else in the world, at a rate of 50 per 1,000 births. The best explanation so far is that Yoruba people eat a type of yam that contains an ovarian stimulate that might release more eggs.',
                                    'Mexico is home to many pyramids built by the Mayans and other ancient civilizations, but perhaps its least famous triangular structure is actually the largest one in the world.',
                                    'Ethopia, East African nation was the site of an archaeological discovery that rewrote human history.',
                                    'About a quarter of all overseas nurses come from the Philippines, making it the world’s top supplier of nurses.',
                                    'Bread was invented in Egypt around 8,000 BC. (Thanks, Egypt!)',
                                    'In Germany, everyone who lives in this European country, even foreigners, can attend college tuition-free.',
                                    'France is the most visited country in the world with 89 million annual tourists.',
                                    'Naples in Italy is the birthplace of pizza.',
                                    'Myanmar along withLiberia and the United States, does not use the metric system.',
                                    'Kenya produces the world’s best long-distance runners.',
                                    'Kimchi and rice are the two most important foodstuffs of South Africa.',
                                    'Caño Cristales, a river in Columbia, is referred to as the “liquid rainbow” because of its many vivid colors, which are produced from the reproductive process of aquatic plants',
                                    'Uganda is a birder’s paradise.',
                                    'Ukraine,former Soviet republic is one of only 26 countries in the world with a 100 percent literacy rate among adults.',
                                    'Dukhan is a Sudanese tradition that involves a month-long series of smoke baths for brides-to-be that are intended to make their skin smooth and glowing for their wedding day.',
                                    'The ancient Sumerians of Mesopotamia — what is now modern-day Iraq — invented the world’s first writing system, called cuneiform, from 3500-3000 BC.',
                                    'The humble but delicious bagel was invented in Poland.',
                                    'The 49th parallel marks the border between Canada and the United States. At 5,525 miles, it’s the world’s longest unprotected border.',
                                    'Dating back to 859, the University of Al-Karaouine in the ancient city of Fes el-Bali, Morocco is the oldest known university in the world.',
                                    'Sarawak Chamber on the island of Borneo, Malaysia is the largest known cave chamber on Earth.',
                                    'The wildly popular Brazilian dance style known as samba is rooted in Angolan circle dances.',
                                    'Nepal has no independence day because, unlike most countries around the world, it was never fully occupied by Europeans.',
                                    ' A traditional martial art called Moraingy was developed on Madagascar.',
                                    'Often called “Africa in miniature,” Cameroon touts 1,738 different linguistic groups and more than 200 national languages.',
                                    'Ivory Coast is home to the largest church in the world, Basilica of Our Lady of Peace.',
                                    'Lake Malawi in Malawi is vitally important to. It is the third-largest lake in Africa, but contains more species of fish — over 1,000 — than any lake in the world.',
                                    'Guatemala is the birthplace of chocolate, with ancient Mayans worshipping the cacao tree. (Thanks, Guatemala!)',
                                    'Italians are very superstitious and for them, nuns and ambulances are associated with death. So if you plan to spend your holidays in ITALY and you bump into one of them, don’t hesitate and bless yourself with the sign of the Cross… Just in case!',
                                    'In RUSSIA you will discover that you receive a light stamp if you accidentally step on someone’s foot. Why? The first thought that will come to your mind is that it’s due to revenge. Far from this, Russians do that to avoid future conflict with this person.',
                                    'In some ASIAN COUNTRIES such as China, Korea or Japan, a sign of approval and appreciation of someone’s cooking is to slurp the soup loudly - what is considered rude in most western countries.',
                                    'While cemeteries are the sites of spooky lore in many countries, this is not so much the case in the ever so secular Denmark. Many people might prefer to hang out in parks, but the Danes find it becoming to convert their cemeteries into areas for socializing, a rather pragmatic use of space we might add.',
                                    'In France, you can marry a dead person.',
                                    'In many cultures, like the United States, it is all right to ask for salt to add to your food. But if you are dining with friends and colleagues in Egypt, keep in mind to avoid asking for salt. It is taken as an insult to the host, as Egyptians take it to mean that you are repulsed by the taste of the meal served to you.',
                                    'The value of being on time depends on the country. In Venezuela, it is actually a norm to arrive about 10 to 15 minutes late for a dinner invitation. Being early for the Venezuelans means the person is either overly eager or greedy.',
                                    'In some cultures, it is acceptable to eat food with your bare hands. But as etiquette would have it, it is often required that you use utensils such as a spoon and fork, chopsticks, or spoon, knife and fork when having a meal. Be sure to brush up on how to eat with a knife and fork before you travel to Norway. In this Scandinavian country, even sandwiches are eaten using a fork and a knife.',
                                    'For the Dutch, sharp objects are considered unlucky gifts, while for the Chinese, it means you want to break or cut ties with them.',
                                    'For many cultures, children are told to keep their baby teeth under their pillow and the Tooth Fairy will give them money in exchange for their teeth. But Greek children are told to toss their tooth onto their roofs. The cultural tradition is meant for the child to have a healthy tooth as well as good luck to the family.',
                                    'Hungarian forces were severely and savagely defeated during their war with Austria in 1849 and they witnessed Austrian generals celebrating the occasion by drinking beer and clinking their glasses. Hungarians swore not to clink their glasses when having a drink for 150 years. The vow ended in 1999 but a majority of Hungarians continues the cultural tradition.',
                                    'In movies and pictures, it is customary to see people taking a ride in a taxicab sitting in the back of the vehicle. Your Etiquette 101 class might have taught you that it is the proper way to ride a taxi if you are the only one in it. But in Australia, it is considered snobbish to sit at the back. Australians often sit in front with the taxi driver.',
                                    'In many parts of the United Kingdom, it is customary for people to greet a lone magpie to avoid having bad luck.',
                                    'You would not feel lonely when you celebrate your birthday in the Netherlands. In this country, it is a tradition to greet the person celebrating the birthday as well as the person’s family and other relatives.',
                                    'In Germany, a person who’s still single at age 25 is showered by friends with cinnamon powder throughout the day. It is worse if the person is still single at 30 because they use pepper instead. In France, people buy funny hats for their 25-year old single friends on November 25, which is Saint Catherine’s Day.',
                                    'In Mexico shoving one’s face onto a birthday cake is a cultural tradition, so the birthday celebrant does not have any reason to get angry. It even follows a process. The cake is brought out and presented to the person celebrating the birthday. Guests sing the birthday song and the candle is blown. The birthday girl or boy takes a bite of the cake and as expected, someone will definitely shove her or his face on the cake.',
                                    'Russians normally open their umbrellas indoors to dry.',
                                    'Mexicans normally celebrate New Year’s Eve by eating 12 grapes at midnight.',
                                    'A culture is formed when a group of people share values and behaviors unspokenly.',
                                    'The Japanese have three writing formats.These three are separated into Katakana, Hiragana, and Kanji.',
                                    'Neanderthals were extremely skilled hunters.',
                                    'China produces the most silk than any other country in the world.',
                                    'In Japan, the elderly are honored with drinks and are always served first when eating.',
                                    'The number 13 is not unlucky in Russia.',
                                    'In France, table etiquette is one of the most demanding in the world. Most people are overwhelmed by the number of rules you need to follow to not be rude at the table.',
                                    'Half of the world’s chocolate is consumed in Europe.',
                                    'There is a group of small islands in Dubai that resemble the world map.',
                                    'Indians do not express their love for their partner in public.',
                                    'Chinese culture emphasizes great importance on family.',
                                    'Northern Europe is where humans first developed blonde hair.',
                                    'In Russia, hiccups are a sign that somebody is thinking of you.',
                                    'Australia is the second country that allowed women to vote',
                                    'In Japanese culture, people always take off their shoes before entering a home.',
                                    'Over 80% of wildlife in Australia is unique to the country alone.',
                                    'The word calligraphy translates to ‘good writing’. While originating in China, calligraphy has grown to become a popular way of expression and art.',
                                    'Red ink cannot be used to write a person`s name in South Korea.',
                                    'In South Korea, any colored ink is acceptable to use when writing someone’s name or your own. However, you cannot use red ink as the color symbolizes death in the country.',
                                    'Finger pulling is a serious and traditional sport in Austria.',
                                    'The name of the game is fingerhakeln and the rules of the game are quite strict. Much similar to tug-of-war, the objective of the game is to drag the opponent by the finger across the table.',
                                    'French people have the longest life span for women, the third longest for men.'
                                  ]),
                                  style: TextStyle(
                                      color: Color.fromRGBO(70, 58, 65, 1),
                                      fontSize: 25,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.0,
                                      fontFamily: 'Roboto'),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Stack destinationCard(BuildContext context, String imagePath,
      String placeName, String placeCount) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width - 60,
          margin: EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(imagePath), fit: BoxFit.cover),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [AppColor.secondaryColor, Colors.transparent],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 30,
          left: 20,
          right: 25,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(placeName,
                  style: TextStyle(fontSize: 22, color: Colors.white)),
              SizedBox(
                height: 5,
              ),
              PrimaryText(
                text: placeCount,
                size: 14,
                color: Color.fromRGBO(255, 255, 255, 0.8),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget infoDestinationCard(BuildContext context, String imagePath,
      String placeName, String placeCount) {
    return GestureDetector(
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 350,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.white70, AppColor.secondaryColor],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 25,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PrimaryText(text: placeName, size: 20),
                SizedBox(
                  height: 5,
                ),
                PrimaryText(
                  text: placeCount,
                  size: 15,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget infoCountryCard(BuildContext context, String imagePath,
      String placeName, String placeCount) {
    return GestureDetector(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => test(),
          ),
        ),
      },
      child: Stack(
        children: [
          Container(
            height: 120,
            width: 350,
            margin: EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(imagePath), fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 120,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.white24, Color.fromRGBO(255, 201, 135, 0.8)],
                ),
              ),
            ),
          ),
          Positioned(
            top: 35,
            left: 40,
            // right: 30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  placeName,
                  style: TextStyle(
                      fontSize: 40,
                      fontFamily: 'Dancing_Script',
                      fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(1, 1, 1, 1)),
                ),
                // PrimaryText(text: placeName, size: 30),
                SizedBox(
                  height: 5,
                ),
                Text(
                  placeCount,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    // fontFamily: 'Dancing_Script',
                    color: Color.fromRGBO(1, 1, 1, 0.8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding customAppBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 35, right: 25, bottom: 30, top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          PrimaryText(text: 'VOLA', size: 32, fontWeight: FontWeight.w700),
          // RawMaterialButton(
          //   constraints: BoxConstraints(minWidth: 0),
          //   onPressed: null,
          //   elevation: 2.0,
          //   padding: EdgeInsets.all(8),
          //   shape: CircleBorder(),
          //   fillColor: Colors.white30,
          //   child: Icon(Icons.search_rounded, color: AppColor.primaryColor),
          // ),
        ],
      ),
    );
  }
}
