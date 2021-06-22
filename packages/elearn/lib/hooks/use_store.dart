import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:flutter_hooks/flutter_hooks.dart'
    show use, Hook, HookState, useStream;

typedef dynamic Dispatch(dynamic action);
typedef Selector<State, Output> = Output Function(State state);
typedef EqualityFn<T> = bool Function(T a, T b);

// Store<S> useStore<S>(context) {
//   final store = StoreProvider.of<S>(context);
//   return store;
// }

// Dispatch useDispatch(context) {
//   final store = useStore(context);
//   return store.dispatch;
// }

// Output useSelector<State, Output>(context, Selector<State, Output> selector) {
//   final store = useStore<State>(context);
//   return selector(store.state);
// }

class _UseStoreHook<S> extends Hook<Store<S>> {
  @override
  HookState<Store<S>, Hook<Store<S>>> createState() => _UseStoreHookState<S>();
}

class _UseStoreHookState<S> extends HookState<Store<S>, _UseStoreHook<S>> {
  @override
  Store<S> build(BuildContext context) => StoreProvider.of<S>(context);
}

Store<S> useStore<S>() => use(_UseStoreHook());

Dispatch useDispatch<S>() => useStore<S>().dispatch;

// T useSelector<S, T>(Selector<S, T> selector) {
//   final store = useStore<S>();
//   return selector(store.state);
// }

Output useSelector<State, Output>(Selector<State, Output> selector,
    [EqualityFn? equalityFn]) {
  final equal = equalityFn ?? (Output a, Output b) => a == b;
  final store = useStore<State>();
  final snap = useStream<Output>(store.onChange.map(selector).distinct(equal),
      initialData: selector(store.state));
  return snap.data ?? selector(store.state);
}
