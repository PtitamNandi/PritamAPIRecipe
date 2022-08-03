import 'package:flutter/material.dart';
import 'package:search_food/Screen/Home/Services/apiCall.dart';
import 'package:search_food/Screen/Home/Widget/searchlist.dart';
import 'package:search_food/common/shimmer.dart';

class CustomSearchDelegate extends SearchDelegate {
  FutureBuilder<dynamic> Search() {
    NetworkHelper networkHelper = NetworkHelper();
    return FutureBuilder(
        future: networkHelper.getdata(query),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Center(
                  child: SizedBox(
                height: 300,
                child: Image.asset("assets/images/went-wrong.png"),
              ));
            }
            if (snapshot.hasData) {
              var data = snapshot.data;
              return serchList(data: data);
            } else {
              return Center(
                child: SizedBox(
                  height: 300,
                  child: Image.asset("assets/images/no-results.png"),
                ),
              );
            }
          }
          return shimmerLoading();
        });
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Search();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Search();
  }
}
