import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver extends BlocObserver{

   void onChange(BlocBase bloc, change){
     log(change.toString());
     super.onChange(bloc, change);
   }

}