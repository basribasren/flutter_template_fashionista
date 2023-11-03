import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/social_account_link_alert_bottomsheet/models/social_account_link_alert_model.dart';
part 'social_account_link_alert_event.dart';
part 'social_account_link_alert_state.dart';

class SocialAccountLinkAlertBloc
    extends Bloc<SocialAccountLinkAlertEvent, SocialAccountLinkAlertState> {
  SocialAccountLinkAlertBloc(SocialAccountLinkAlertState initialState)
      : super(initialState) {
    on<SocialAccountLinkAlertInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SocialAccountLinkAlertInitialEvent event,
    Emitter<SocialAccountLinkAlertState> emit,
  ) async {}
}
