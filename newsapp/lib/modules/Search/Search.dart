import 'package:flutter/material.dart';
import 'package:newsapp/shared/Cubit/Cubit.dart';
import 'package:newsapp/shared/Cubit/States.dart';
import 'package:newsapp/shared/components/component/Components.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:newsapp/shared/components/component/Components.dart';
class SearchScreen extends StatelessWidget
{
  var searchController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return BlocConsumer<Appcubit, AppState>(
      listener: (context, state) {},
      builder: (context, state)
      {
        var list = Appcubit.get(context).Search;

        return Scaffold(
          appBar: AppBar(),
          body: Column(
            children:
            [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: defultTextField(
                  controller: searchController,
                  type: TextInputType.text,
                  onChange: (value)
                  {
                    Appcubit.get(context).getsearchDate(value);
                  },
                  validation: (String value)
                  {
                    if(value.isEmpty)
                    {
                      return 'search must not be empty';
                    }
                    return null;
                  },
                  title: 'Search',
                  prefix: Icons.search, isClicked: true,
                ),
              ),
              Expanded(child: articleBuilder(list, context)),
            ],
          ),
        );
      },
    );
  }
}