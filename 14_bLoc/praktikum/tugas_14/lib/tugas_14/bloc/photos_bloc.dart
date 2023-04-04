import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tugas_14/tugas_14/screen/GaleryPage.dart';
import '../../main.dart';
import '../models/image_model.dart';
part 'photos_event.dart';
part 'photos_state.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  PhotosBloc() : super(PhotosInitial()) {
    on<PhotosEvent>((event, emit) {
      if (event is FetchImagePhotosEvent) {
        emit(PhotosSuccessLoaded(images: photo));
      }
    });
  }
}
