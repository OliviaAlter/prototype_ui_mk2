import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:prototype_ui_mk2/charity_activities/donation_charities_detail.dart';

import '../models/charity_entity.dart';
import '../profile/profile_org.dart';

late List<Charity> charityDetailList;

class EventSliderOrg extends StatefulWidget {
  const EventSliderOrg({Key? key}) : super(key: key);

  @override
  _EventSliderOrgState createState() => _EventSliderOrgState();
}

class _EventSliderOrgState extends State<EventSliderOrg>{

  @override
  Widget build(BuildContext context) {
    Widget buildListViewEventForCharity(
        String image, String title, String location) {
      return ListTile(
        trailing: const Icon(Icons.more_vert),
        leading: SizedBox(
            width: 50,
            height: 50,
            child: Image.network(image, fit: BoxFit.fitHeight)),
        title: Text(title,
            style: const TextStyle(
                fontFamily: "CentraleSansRegular",
                fontSize: 16,
                fontWeight: FontWeight.bold)),
        subtitle: Text(location,
            style: const TextStyle(
              fontFamily: "CentraleSansRegular",
              fontSize: 14,
            )),
        onTap: () {},
      );
    }

    Widget imageCarousel = SizedBox(
        height: 350,
        child: CarouselSlider(
          items: [
            'https://media.discordapp.net/attachments/932856866655068180/951391813174956082/20200628YM01_blood_donation_pack.jpg',
            'https://media.discordapp.net/attachments/932856866655068180/951389752727330816/bistandsminister-isabella-lovin-besoker-en-skola-i-civilian-protection-site-i-juba-sydsudan-3.png',
            'https://media.discordapp.net/attachments/932856866655068180/951391958838960189/588A8245_1-edit.png',
            'https://2lkcp81qv9i72rn88i4dfqq1-wpengine.netdna-ssl.com/wp-content/uploads/2016/10/iStock-540095978-1024x683.jpg',
            'https://cdn.discordapp.com/attachments/932856866655068180/951389860202184734/90.png',
          ].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: GestureDetector(
                        child: Image.network(i, fit: BoxFit.fitHeight),
                        onTap: () {
                          Navigator.push<Widget>(
                            context,
                            MaterialPageRoute(builder: (context)
                            => CharityEventDetail(i),
                            ),
                          );
                        }));
              },
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            height: 350,
          ),
        ));

    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFe53547),
          elevation: 1,
          toolbarHeight: 55,
          automaticallyImplyLeading: false,
          title: Text("News"),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.account_circle_sharp, size: 30),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const UserOrgProfile()),
                );
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 32,
              ),
              imageCarousel,
              const SizedBox(height: 17),
              const SizedBox(
                height: 30,
                child: Text("World news",
                    style: TextStyle(
                      fontFamily: "CentraleSansRegular",
                      color: Color(0xFFe53547),
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    )),
              ),
              Container(
                margin: const EdgeInsets.all(13),
                width: 400,
                child: Column(
                  children: <Widget>[
                    buildListViewEventForCharity(
                        "https://c.ndtvimg.com/2021-12/47jbek9o_elon-musk-reuters-240_120x90_20_December_21.jpg",
                        "Elon Musk Donates 5 Million Tesla Shares To Unspecified Charities",
                        "Agence France-Presse"),
                    buildListViewEventForCharity(
                        "https://c.ndtvimg.com/2022-02/mtdamom8_queen-elizabeth-ii-reuters_120x90_06_February_22.jpg",
                        "UK's Queen Elizabeth Donates For Ukraine Refugees",
                        "Agence France-Presse"),
                    buildListViewEventForCharity(
                        "https://i.gadgets360cdn.com/large/bitcoin_reuters_small_1645700657414.jpg",
                        "Ukraine Raises 8 Million In Cryptocurrency Donations",
                        "Reuters"),
                    buildListViewEventForCharity(
                        "https://c.ndtvimg.com/2022-01/cm9np8ko_afghanistan-generic_120x90_11_January_22.jpg",
                        "US To Give 300 Million In Humanitarian Aid To Afghanistan",
                        "Reuters"),
                    buildListViewEventForCharity(
                        "https://c.ndtvimg.com/2021-08/t8f8tnpk_driving-licence_240x180_12_August_21.jpg",
                        "You Can Opt To Become An Organ Donor When Applying For Driving Licence",
                        "Carandbike "),
                    buildListViewEventForCharity(
                        "https://i.ndtvimg.com/i/2018-03/milk_620x350_71521187705.jpg?im=FaceCrop,algorithm=dnn,width=345,height=250",
                        "Milkmen In Assam Join Hands To Donate Part Of Income To Fund-Starved School",
                        "Somdatta Saha"),
                    buildListViewEventForCharity(
                        "https://cache.careers360.mobi/media/presets/240X180/article_images/2021/8/4/2021-world-book-day-featured-image.jpg",
                        "US-Based Psychotherapist Donates 1,100 Books To Thane's Institute Of Oriental Study",
                        "Press Trust of India"),
                    buildListViewEventForCharity(
                        "https://c.ndtvimg.com/2021-07/2v73rac_bhutan-covid-vacccine-afp_120x90_27_July_21.jpg",
                        "Bhutan Vaccinates Most Of Its Population After Donations",
                        "Agence France-Presse"),
                    buildListViewEventForCharity(
                        "https://c.ndtvimg.com/2022-02/tvn8s20g_hiroshi-mikitani-instagram_120x90_27_February_22.jpg",
                        "Japanese Billionaire Hiroshi Mikitani Donates 8.7 Million To Ukraine",
                        "Agence France-Presse"),
                    buildListViewEventForCharity(
                        "https://i.gadgets360cdn.com/large/starlink_terminal_image_small_spacex_1633352677845.jpg",
                        "Elon Musk Donates 50 Satellite Terminals to Help Reconnect Volcano-Damaged Tonga",
                        "Agence France-Presse"),
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
