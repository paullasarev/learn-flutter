import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

S useBlocState<S>(Cubit<S> bloc) {
  // final state = useState<S>(bloc.state);

  // useEffect(() {
  //   final subscription = bloc.stream.listen((S s) => state.value = s);
  //   return () => subscription.cancel();
  // }, [bloc]);

  // return state.value;
  final data = useStream(bloc.stream).data;
  return data == null ? bloc.state : data;
}
