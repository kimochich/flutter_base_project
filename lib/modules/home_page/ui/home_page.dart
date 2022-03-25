import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_temp_project/generated/l10n.dart';
import 'package:flutter_temp_project/modules/home_page/cubit/home_page_cubit.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (BuildContext context, state) {},
      builder: (BuildContext context, Object? state) {
        return MaterialApp(
          home: Scaffold(
            body: state is GetUserSuccess
                ? ListView.builder(
                    itemCount: state.userResponse.items?.length ?? 0,
                    itemBuilder: (_, index) {
                      return InkWell(
                        onTap: ()  {

                        },
                        child: ListTile(
                            title: Text(
                                state.userResponse.items?[index].login ?? ""+S.of(context).hello)),
                      );
                    })
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        );
      },
    );
  }
}
