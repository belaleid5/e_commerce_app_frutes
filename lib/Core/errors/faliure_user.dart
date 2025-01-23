abstract class Faliure {
  final String? messages;

  Faliure({required this.messages});
}

class ServerFaliure extends Faliure {
  ServerFaliure({required super.messages});
}
