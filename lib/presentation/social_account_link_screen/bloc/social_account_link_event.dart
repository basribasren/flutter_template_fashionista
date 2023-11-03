// ignore_for_file: must_be_immutable

part of 'social_account_link_bloc.dart';

@immutable
abstract class SocialAccountLinkEvent extends Equatable {}

class SocialAccountLinkInitialEvent extends SocialAccountLinkEvent {
  @override
  List<Object?> get props => [];
}
