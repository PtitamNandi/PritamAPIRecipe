import 'package:flutter/material.dart';
import '../../Details/detailsScreen.dart';

class serchList extends StatelessWidget {
  const serchList({
    Key? key,
    required this.data,
  }) : super(key: key);

  final data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: data.length as int,
      itemBuilder: ((context, index) {
        return GestureDetector(
          onTap: (() {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                        data: data[index],
                      )),
            );
          }),
          child: Container(
            padding: EdgeInsets.all(10),
            height: 250,
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 2.0,
                  spreadRadius: 0.0,
                  offset: Offset(2.0, 2.0),
                )
              ],
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 160,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          data[index].strDrinkThumb,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 15, bottom: 10),
                            child: Text(
                              data[index].strDrink,
                              style: const TextStyle(
                                fontSize: 19,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Text(
                            data[index].strInstructions,
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Divider(color: Colors.black),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: RichText(
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Ingridents: ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '${data[index].strIngredient1}, ',
                                style: TextStyle(fontWeight: FontWeight.w300)),
                            TextSpan(
                                text: '${data[index].strIngredient2}',
                                style: TextStyle(fontWeight: FontWeight.w300)),
                          ],
                        ),
                      ),
                    ),
                    // Spacer(),
                    Icon(Icons.local_drink_rounded),
                    SizedBox(
                      width: 20,
                    ),
                    Text("~${data[index].strAlcoholic}")
                  ],
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}
