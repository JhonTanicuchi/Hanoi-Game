main() {
  int movimientos = 0;
  int discos = 13;

  juego(int discos, String Torre_1, String Torre_2, String Torre_3) {
    if (discos > 0) {
      movimientos++;

      print("│ Disco se mueve de $Torre_1 hacia $Torre_3 │");

      juego(discos - 1, Torre_1, Torre_3, Torre_2);

      juego(discos - 1, Torre_2, Torre_1, Torre_3);
    }
  }

  interface() {
    if (discos < 0) {
      print("┌─────────────────────────────────────────────┐");
      print("│ Solo debes ingresar números positivos.  │");
      print("└─────────────────────────────────────────────┘");
    } else {
      print("\n┌─────────────────────────────────────────────┐");
      print("│             TORRES DE HANOI             │");
      print("└─────────────────────────────────────────────┘");
      print("\n          Detalle de movimientos ");

      print("┌─────────────────────────────────────────────┐");
      juego(discos, 'Torre_1', 'Torre_2', 'Torre_3');
      print("└─────────────────────────────────────────────┘");

      print("\n┌─────────────────────────────────────────────┐");
      print("│ Número de discos = $discos                   │");
      print("└─────────────────────────────────────────────┘");

      print("\n┌─────────────────────────────────────────────┐");
      print("│ Número de movimientos realizados = $movimientos │");
      print("└─────────────────────────────────────────────┘");
    }
  }

  interface();
}

//BY JONATHAN AND JHON
