/// Immutable state model representing the contact form inputs and validation states.
class ContactFormModel {
  final String message;
  final String email;
  final bool messageError;
  final bool emailError;

  const ContactFormModel({
    this.message = '',
    this.email = '',
    this.messageError = false,
    this.emailError = false,
  });

  ContactFormModel copyWith({
    String? message,
    String? email,
    bool? messageError,
    bool? emailError,
  }) {
    return ContactFormModel(
      message: message ?? this.message,
      email: email ?? this.email,
      messageError: messageError ?? this.messageError,
      emailError: emailError ?? this.emailError,
    );
  }
}

typedef ContactFormState = ContactFormModel;
