import 'package:get/get.dart';
import 'package:projeto_live/app/data/models/model1.dart';

const baseUrl = 'http://gerador-nomes.herokuapp.com/nomes/10';

class MyApi extends GetConnect {
  login(emial, senha) async {
    final response = post(
      '',
      Model1Model().toJson(),
    );
  }
}
