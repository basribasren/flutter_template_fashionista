import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listfacebook_item_model.dart';
import 'package:basri_s_application22/presentation/social_account_link_screen/models/social_account_link_model.dart';
part 'social_account_link_event.dart';
part 'social_account_link_state.dart';

class SocialAccountLinkBloc
    extends Bloc<SocialAccountLinkEvent, SocialAccountLinkState> {
  SocialAccountLinkBloc(SocialAccountLinkState initialState)
      : super(initialState) {
    on<SocialAccountLinkInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SocialAccountLinkInitialEvent event,
    Emitter<SocialAccountLinkState> emit,
  ) async {
    emit(state.copyWith(
        socialAccountLinkModelObj: state.socialAccountLinkModelObj
            ?.copyWith(listfacebookItemList: fillListfacebookItemList())));
  }

  List<ListfacebookItemModel> fillListfacebookItemList() {
    return List.generate(4, (index) => ListfacebookItemModel());
  }
}
