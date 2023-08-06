class Lingkaran {
  double _jariJari = 0;

  Lingkaran(double jariJari) {
    this._jariJari = jariJari;
  }

  set set_JariJari(double _jariJari) {
    this._jariJari = _jariJari;
  }

  double get get_JariJari {
    return _jariJari;
  }

  double luasLingkaran() {
    return 3.14 * (_jariJari * 2);
  }
}
