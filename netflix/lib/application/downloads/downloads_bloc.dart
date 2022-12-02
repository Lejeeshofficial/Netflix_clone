import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:netflix/domain/downloads/models/downloads.dart';
part 'downloads_bloc.freezed.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';

class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  DownloadsBloc() : super(DownloadsState.initial()) {
    on<DownloadsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
