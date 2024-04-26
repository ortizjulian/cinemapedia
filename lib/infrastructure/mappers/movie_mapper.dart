import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBToEntity(MovieMovieDB movie) => Movie(
        adult: movie.adult,
        backdropPath: movie.backdropPath.isNotEmpty
            ? 'https://image.tmdb.org/t/p/w500/${movie.backdropPath}'
            : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTH8kQvwu03FuPOIaCTH_Vo7CJuFqrBSLFsaxZulUbneA&s',
        genreIds: movie.genreIds.map((e) => e.toString()).toList(),
        id: movie.id,
        originalLanguage: movie.originalLanguage,
        originalTitle: movie.originalTitle,
        overview: movie.overview,
        popularity: movie.popularity,
        posterPath: movie.posterPath.isNotEmpty
            ? 'https://image.tmdb.org/t/p/w500/${movie.posterPath}'
            : 'no-image',
        releaseDate: movie.releaseDate,
        title: movie.title,
        video: movie.video,
        voteAverage: movie.voteAverage,
        voteCount: movie.voteCount,
      );
}
