// ignore_for_file: must_be_immutable

part of 'chat_bloc.dart';

class ChatState extends Equatable {
  ChatState({
    this.messagestatusController,
    this.chatModelObj,
  });

  TextEditingController? messagestatusController;

  ChatModel? chatModelObj;

  @override
  List<Object?> get props => [
        messagestatusController,
        chatModelObj,
      ];
  ChatState copyWith({
    TextEditingController? messagestatusController,
    ChatModel? chatModelObj,
  }) {
    return ChatState(
      messagestatusController:
          messagestatusController ?? this.messagestatusController,
      chatModelObj: chatModelObj ?? this.chatModelObj,
    );
  }
}
