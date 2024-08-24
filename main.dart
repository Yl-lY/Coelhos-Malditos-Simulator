var mes = 1;
var dia = 0;
double coelhosAdultos = 2;
double coelhosJovens = 0;

void main() {
  while (mes < 16) {
    dia += 1;
    if (dia == 30) {

      coelhosAdultos += coelhosJovens;
      coelhosJovens = coelhosAdultos;
      if (mes > 12) {
        coelhosAdultos = coelhosAdultos * 0.25;
        coelhosJovens = coelhosJovens * 0.25;
      }
      print(
          'mês ${mes} -> população: ${coelhosAdultos + coelhosJovens} - adultos: ${coelhosAdultos} - jovens: ${coelhosJovens}');
      if (mes == 12) {
        print('predador solto..');
      }

      mes += 1;
      dia = 0;
    }
  }
}
