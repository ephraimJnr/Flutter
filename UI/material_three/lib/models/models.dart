import 'dart:html';

class Attachment {
  const Attachment({
    required this.url,
  });

  final String url;
}

class Email {
  final User sender;
  final List<User> recipients;
  final String subject;
  final String content;
  final List<Attachment> attachments;
  final double replies;

  const Email({
    required this.sender,
    required this.recipients,
    required this.subject,
    required this.content,
    this.attachments = const [],
    this.replies = 0,
  });
}

class Name {
  final String first;
  final String last;

  const Name({
    required this.first,
    required this.last,
  });

  String get fullName => '$first $last';
}

class User {
  final Name name;
  final String avatarUrl;
  final DateTime lastActive;

  const User({
    required this.name,
    required this.avatarUrl,
    required this.lastActive,
  });
}
