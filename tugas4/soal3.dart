void main(List<String> args) {
  var input = [
    ['0001', 'Roman Alamsyah', 'Bandar Lampung', '21/05/1989', 'membaca'],
    ['0002', 'Dika Sembiring', 'Medan', '10/10/1992', 'Bermain Gitar'],
    ['0003', 'Winona', 'Ambon', '25/12/1965', 'Memasak'],
    ['0004', 'Bintang Sanjaya', 'Martapura', '6/4/1970', 'Berkebun']
  ];

  dataHandling(input);
}

void dataHandling(List<List<String>> input) {
  for (int i = 0; i < input.length; i++) {
    print('Nomer ID: ' + input[i][0]);
    print('Nama Lengkap: ' + input[i][1]);
    print('TTL: ' + input[i][2] + ' ' + input[i][3]);
    print('Hobi: ' + input[i][4]);
  }
}
