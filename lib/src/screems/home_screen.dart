import 'package:flutter/material.dart';
import 'package:flutter_sharing/src/blocs/home_bloc.dart';
import 'package:flutter_sharing/src/blocs/home_provider.dart';
import 'package:flutter_sharing/src/model/FeedResponseModel.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    HomeBloc bloc = HomeProvider.of(context);
    bloc.getFeed();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Home'),
      ),
      body: Container(
        child: StreamBuilder(
            stream: bloc.feeds,
            builder: (context, AsyncSnapshot<FeedResponseModel> snapshot) {
              if (!snapshot.hasData || snapshot.data == null) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView.builder(
                  itemCount: snapshot.data.data.length,
                  itemBuilder: (context, index) {
                    return Text(snapshot.data.data[index].feedTitle);
                  });
            }),
      ),
    );
  }
}
