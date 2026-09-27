import 'package:jaspr_riverpod/jaspr_riverpod.dart';

import '../models/contact_form_model.dart';
export '../models/contact_form_model.dart';

/// Notifier managing contact form input, real-time error clearance, and channel-specific validations.
class ContactFormNotifier extends Notifier<ContactFormState> {
  @override
  ContactFormState build() => const ContactFormState();

  void setMessage(String message) {
    state = state.copyWith(
      message: message,
      messageError: state.messageError && message.trim().isEmpty,
    );
  }

  void setEmail(String email) {
    state = state.copyWith(
      email: email,
      emailError: state.emailError && email.trim().isEmpty,
    );
  }

  /// Validates inputs for WhatsApp sending (message required, email optional).
  bool validateForWhatsApp() {
    final isMessageEmpty = state.message.trim().isEmpty;
    state = state.copyWith(
      messageError: isMessageEmpty,
      emailError: false,
    );
    return !isMessageEmpty;
  }

  /// Validates inputs for Email sending (both message and email address are required).
  bool validateForEmail() {
    final isMessageEmpty = state.message.trim().isEmpty;
    final isEmailEmpty = state.email.trim().isEmpty;
    state = state.copyWith(
      messageError: isMessageEmpty,
      emailError: isEmailEmpty,
    );
    return !isMessageEmpty && !isEmailEmpty;
  }

  void reset() {
    state = const ContactFormState();
  }
}

final contactFormProvider =
    NotifierProvider<ContactFormNotifier, ContactFormState>(
  ContactFormNotifier.new,
);
