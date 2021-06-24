import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

S useBlocState<S>(Cubit<S> bloc) {
  final data = useStream(bloc.stream).data;
  return data ?? bloc.state;
}

B useBloc<B>() {
  final bloc = useContext().read<B>();
  return bloc;
}
