import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeState {
  const HomeState({required this.presupuesto, required this.gastado});

  final double presupuesto;
  final double gastado;

  double get disponible => presupuesto - gastado;

  double get progreso {
    if (presupuesto == 0) return 0;
    return (gastado / presupuesto).clamp(0.0, 1.0);
  }

  HomeState copyWith({double? presupuesto, double? gastado}) {
    return HomeState(
      presupuesto: presupuesto ?? this.presupuesto,
      gastado: gastado ?? this.gastado,
    );
  }
}

class HomeController extends Notifier<HomeState> {
  @override
  HomeState build() {
    return const HomeState(presupuesto: 6500, gastado: 3703.50);
  }

  void registrarGasto(double cantidad) {
    if (cantidad <= 0) return;
    state = state.copyWith(gastado: state.gastado + cantidad);
  }

  void registrarIngreso(double cantidad) {
    if (cantidad <= 0) return;
    state = state.copyWith(presupuesto: state.presupuesto + cantidad);
  }

  void actualizarPresupuesto(double cantidad) {
    if (cantidad < 0) return;
    state = state.copyWith(presupuesto: cantidad);
  }
}

final homeControllerProvider = NotifierProvider<HomeController, HomeState>(
  HomeController.new,
);
