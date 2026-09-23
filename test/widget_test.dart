import 'package:flutter_test/flutter_test.dart';

import 'package:descubre_dh/main.dart';
import 'package:descubre_dh/data/datasources/lugares_local_datasource.dart';
import 'package:descubre_dh/data/repositories/lugares_repository_impl.dart';
import 'package:descubre_dh/domain/usecases/obtener_lugares.dart';
import 'package:descubre_dh/presentation/viewmodels/lugares_view_model.dart';

void main() {
  testWidgets('muestra los lugares turisticos', (WidgetTester tester) async {
    final dataSource = LugaresLocalDataSource();
    final repository = LugaresRepositoryImpl(dataSource);
    final viewModel = LugaresViewModel(ObtenerLugares(repository));

    await tester.pumpWidget(DescubreDoloresApp(viewModel: viewModel));
    await tester.pumpAndSettle();

    expect(find.text('Descubre Dolores Hidalgo'), findsOneWidget);
    expect(find.text('Jardin Principal'), findsOneWidget);
  });
}
