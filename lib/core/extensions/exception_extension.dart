extension ExceptionFormattedMessage on Exception {
  String formattedMessage() {
    final message = toString();
    const prefix = 'Exception:';
    if (message.startsWith(prefix)) {
      return message.substring(prefix.length).trim();
    }
    return message.trim();
  }
}
