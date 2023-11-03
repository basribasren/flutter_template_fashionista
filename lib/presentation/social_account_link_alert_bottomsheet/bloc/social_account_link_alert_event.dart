// ignore_for_file: must_be_immutable

part of 'social_account_link_alert_bloc.dart';

@immutable
abstract class SocialAccountLinkAlertEvent extends Equatable {}

class SocialAccountLinkAlertInitialEvent extends SocialAccountLinkAlertEvent {
  @override
  List<Object?> get props => [];
}
