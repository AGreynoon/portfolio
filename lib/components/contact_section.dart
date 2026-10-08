import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_riverpod/jaspr_riverpod.dart';
import 'package:universal_web/web.dart' as web;

import '../enums/app_locale_enum.dart';
import '../helpers/icon_helper.dart';
import '../models/app_strings_model.dart';
import '../providers/contact_form_provider.dart';

/// Interactive Contact Me section powered by Riverpod state management.
/// Supports dual-channel outreach: WhatsApp (+967734633105) and Email (greynoon.dev@gmail.com).
class ContactSection extends StatelessComponent {
  final AppLocaleEnum locale;

  const ContactSection({
    required this.locale,
    super.key,
  });

  static const String _whatsAppPhone = '967734633105';
  static const String _myEmail = 'greynoon.dev@gmail.com';

  void _sendToWhatsApp(BuildContext context) {
    final notifier = context.read(contactFormProvider.notifier);
    if (!notifier.validateForWhatsApp()) {
      return;
    }

    final formState = context.read(contactFormProvider);
    final buffer = StringBuffer();
    if (formState.email.trim().isNotEmpty) {
      buffer.writeln('Sender Email: ${formState.email.trim()}');
      buffer.writeln();
    }
    buffer.write(formState.message.trim());

    final encodedMessage = Uri.encodeComponent(buffer.toString());
    final url = 'https://wa.me/$_whatsAppPhone?text=$encodedMessage';

    if (kIsWeb) {
      web.window.open(url, '_blank');
    }
  }

  void _sendEmail(BuildContext context) {
    final notifier = context.read(contactFormProvider.notifier);
    if (!notifier.validateForEmail()) {
      return;
    }

    final formState = context.read(contactFormProvider);
    final subject = Uri.encodeComponent('Portfolio Contact from ${formState.email.trim()}');
    final body = Uri.encodeComponent(
      'Sender: ${formState.email.trim()}\n\nMessage:\n${formState.message.trim()}',
    );
    final mailtoUrl = 'mailto:$_myEmail?subject=$subject&body=$body';

    if (kIsWeb) {
      web.window.location.href = mailtoUrl;
    }
  }

  @override
  Component build(BuildContext context) {
    final strings = AppStringsModel.of(locale);
    final formState = context.watch(contactFormProvider);
    final notifier = context.read(contactFormProvider.notifier);

    return section(classes: 'section-wrapper', [
      h2(classes: 'section-title', [
        .text(strings.sections.contactTitle),
      ]),
      div(classes: 'contact-card', [
        if (strings.contact.subtitle.isNotEmpty)
          p(classes: 'contact-description', [
            .text(strings.contact.subtitle),
          ]),
        div(classes: 'contact-form-container', [
          // Optional Email Input field (required for sending email)
          div(classes: 'contact-input-wrapper', [
            input<String>(
              type: InputType.email,
              classes: 'contact-email-input ${formState.emailError ? "has-error" : ""}',
              attributes: {
                'placeholder': strings.contact.emailPlaceholder,
                'aria-label': 'Email address',
              },
              onInput: (val) => notifier.setEmail(val),
            ),
            if (formState.emailError)
              span(classes: 'contact-error-text', [
                .text(strings.contact.emailValidationError),
              ]),
          ]),

          // Message Textarea
          div(classes: 'contact-input-wrapper', [
            textarea(
              classes: 'contact-textarea ${formState.messageError ? "has-error" : ""}',
              rows: 4,
              placeholder: strings.contact.messagePlaceholder,
              onInput: (val) => notifier.setMessage(val),
              [],
            ),
            if (formState.messageError)
              span(classes: 'contact-error-text', [
                .text(strings.contact.validationError),
              ]),
          ]),

          // Action Buttons Bar
          div(classes: 'contact-actions-bar', [
            div(classes: 'contact-buttons-group', [
              button(
                type: ButtonType.button,
                classes: 'contact-whatsapp-btn',
                onClick: () => _sendToWhatsApp(context),
                [
                  AppIconsHelper.social('whatsapp', size: 18),
                  span(classes: 'btn-text', [.text(strings.contact.sendWhatsAppButton)]),
                ],
              ),
              button(
                type: ButtonType.button,
                classes: 'contact-email-btn',
                onClick: () => _sendEmail(context),
                [
                  AppIconsHelper.social('gmail', size: 18),
                  span(classes: 'btn-text', [.text(strings.contact.sendEmailButton)]),
                ],
              ),
            ]),
          ]),
        ]),
      ]),
    ]);
  }
}
