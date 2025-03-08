/// status : "ok"
/// status_message : "Query was successful"
/// data : {"movie":{"id":1,"url":"https://yts.mx/movies/bikini-model-academy-2015","imdb_code":"tt3208802","title":"Bikini Model Academy","title_english":"Bikini Model Academy","title_long":"Bikini Model Academy (2015)","slug":"bikini-model-academy-2015","year":2015,"rating":2.3,"runtime":84,"genres":["Action","Comedy"],"like_count":35,"description_intro":"When T. J. and Benji, two California twenty-something best buddies, lose their girlfriends, they start a home grown bikini modeling academy to make money and meet new girls. With a little help from T.J.'s Uncle Seymour (Gary Busey), the guys begin recruiting pretty girls, until a rival modeling school owned by their old grade school enemy tries to shut them down.—joshishivansh","description_full":"When T. J. and Benji, two California twenty-something best buddies, lose their girlfriends, they start a home grown bikini modeling academy to make money and meet new girls. With a little help from T.J.'s Uncle Seymour (Gary Busey), the guys begin recruiting pretty girls, until a rival modeling school owned by their old grade school enemy tries to shut them down.—joshishivansh","yt_trailer_code":"pOZbOY8liOA","language":"en","mpa_rating":"","background_image":"https://yts.mx/assets/images/movies/bikini_model_academy_2015/background.jpg","background_image_original":"https://yts.mx/assets/images/movies/bikini_model_academy_2015/background.jpg","small_cover_image":"https://yts.mx/assets/images/movies/bikini_model_academy_2015/small-cover.jpg","medium_cover_image":"https://yts.mx/assets/images/movies/bikini_model_academy_2015/medium-cover.jpg","large_cover_image":"https://yts.mx/assets/images/movies/bikini_model_academy_2015/large-cover.jpg","torrents":[{"url":"https://yts.mx/torrent/download/80F67E2D236A1A2854876F6A409C92D2D54C3849","hash":"80F67E2D236A1A2854876F6A409C92D2D54C3849","quality":"720p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":4,"peers":0,"size":"701.10 MB","size_bytes":735156634,"date_uploaded":"2015-10-31 16:40:51","date_uploaded_unix":1446306051},{"url":"https://yts.mx/torrent/download/BA2DD0FB35E9055372873D420E5C951CD41D6A8F","hash":"BA2DD0FB35E9055372873D420E5C951CD41D6A8F","quality":"1080p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":2,"peers":1,"size":"1.24 GB","size_bytes":1331439862,"date_uploaded":"2015-10-31 16:40:56","date_uploaded_unix":1446306056}],"date_uploaded":"2015-10-31 16:40:51","date_uploaded_unix":1446306051}}
/// @meta : {"server_time":1741441674,"server_timezone":"CET","api_version":2,"execution_time":"0 ms"}

class MoviesDetails {
  MoviesDetails({
      String? status, 
      String? statusMessage, 
      Data? data, 
    }){
    _status = status;
    _statusMessage = statusMessage;
    _data = data;
}

  MoviesDetails.fromJson(dynamic json) {
    _status = json['status'];
    _statusMessage = json['status_message'];
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? _status;
  String? _statusMessage;
  Data? _data;
MoviesDetails copyWith({  String? status,
  String? statusMessage,
  Data? data,
}) => MoviesDetails(  status: status ?? _status,
  statusMessage: statusMessage ?? _statusMessage,
  data: data ?? _data,
);
  String? get status => _status;
  String? get statusMessage => _statusMessage;
  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['status_message'] = _statusMessage;
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// server_time : 1741441674
/// server_timezone : "CET"
/// api_version : 2
/// execution_time : "0 ms"
/// movie : {"id":1,"url":"https://yts.mx/movies/bikini-model-academy-2015","imdb_code":"tt3208802","title":"Bikini Model Academy","title_english":"Bikini Model Academy","title_long":"Bikini Model Academy (2015)","slug":"bikini-model-academy-2015","year":2015,"rating":2.3,"runtime":84,"genres":["Action","Comedy"],"like_count":35,"description_intro":"When T. J. and Benji, two California twenty-something best buddies, lose their girlfriends, they start a home grown bikini modeling academy to make money and meet new girls. With a little help from T.J.'s Uncle Seymour (Gary Busey), the guys begin recruiting pretty girls, until a rival modeling school owned by their old grade school enemy tries to shut them down.—joshishivansh","description_full":"When T. J. and Benji, two California twenty-something best buddies, lose their girlfriends, they start a home grown bikini modeling academy to make money and meet new girls. With a little help from T.J.'s Uncle Seymour (Gary Busey), the guys begin recruiting pretty girls, until a rival modeling school owned by their old grade school enemy tries to shut them down.—joshishivansh","yt_trailer_code":"pOZbOY8liOA","language":"en","mpa_rating":"","background_image":"https://yts.mx/assets/images/movies/bikini_model_academy_2015/background.jpg","background_image_original":"https://yts.mx/assets/images/movies/bikini_model_academy_2015/background.jpg","small_cover_image":"https://yts.mx/assets/images/movies/bikini_model_academy_2015/small-cover.jpg","medium_cover_image":"https://yts.mx/assets/images/movies/bikini_model_academy_2015/medium-cover.jpg","large_cover_image":"https://yts.mx/assets/images/movies/bikini_model_academy_2015/large-cover.jpg","torrents":[{"url":"https://yts.mx/torrent/download/80F67E2D236A1A2854876F6A409C92D2D54C3849","hash":"80F67E2D236A1A2854876F6A409C92D2D54C3849","quality":"720p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":4,"peers":0,"size":"701.10 MB","size_bytes":735156634,"date_uploaded":"2015-10-31 16:40:51","date_uploaded_unix":1446306051},{"url":"https://yts.mx/torrent/download/BA2DD0FB35E9055372873D420E5C951CD41D6A8F","hash":"BA2DD0FB35E9055372873D420E5C951CD41D6A8F","quality":"1080p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":2,"peers":1,"size":"1.24 GB","size_bytes":1331439862,"date_uploaded":"2015-10-31 16:40:56","date_uploaded_unix":1446306056}],"date_uploaded":"2015-10-31 16:40:51","date_uploaded_unix":1446306051}

class Data {
  Data({
      Movie? movie,}){
    _movie = movie;
}

  Data.fromJson(dynamic json) {
    _movie = json['movie'] != null ? Movie.fromJson(json['movie']) : null;
  }
  Movie? _movie;
Data copyWith({  Movie? movie,
}) => Data(  movie: movie ?? _movie,
);
  Movie? get movie => _movie;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_movie != null) {
      map['movie'] = _movie?.toJson();
    }
    return map;
  }

}

/// id : 1
/// url : "https://yts.mx/movies/bikini-model-academy-2015"
/// imdb_code : "tt3208802"
/// title : "Bikini Model Academy"
/// title_english : "Bikini Model Academy"
/// title_long : "Bikini Model Academy (2015)"
/// slug : "bikini-model-academy-2015"
/// year : 2015
/// rating : 2.3
/// runtime : 84
/// genres : ["Action","Comedy"]
/// like_count : 35
/// description_intro : "When T. J. and Benji, two California twenty-something best buddies, lose their girlfriends, they start a home grown bikini modeling academy to make money and meet new girls. With a little help from T.J.'s Uncle Seymour (Gary Busey), the guys begin recruiting pretty girls, until a rival modeling school owned by their old grade school enemy tries to shut them down.—joshishivansh"
/// description_full : "When T. J. and Benji, two California twenty-something best buddies, lose their girlfriends, they start a home grown bikini modeling academy to make money and meet new girls. With a little help from T.J.'s Uncle Seymour (Gary Busey), the guys begin recruiting pretty girls, until a rival modeling school owned by their old grade school enemy tries to shut them down.—joshishivansh"
/// yt_trailer_code : "pOZbOY8liOA"
/// language : "en"
/// mpa_rating : ""
/// background_image : "https://yts.mx/assets/images/movies/bikini_model_academy_2015/background.jpg"
/// background_image_original : "https://yts.mx/assets/images/movies/bikini_model_academy_2015/background.jpg"
/// small_cover_image : "https://yts.mx/assets/images/movies/bikini_model_academy_2015/small-cover.jpg"
/// medium_cover_image : "https://yts.mx/assets/images/movies/bikini_model_academy_2015/medium-cover.jpg"
/// large_cover_image : "https://yts.mx/assets/images/movies/bikini_model_academy_2015/large-cover.jpg"
/// torrents : [{"url":"https://yts.mx/torrent/download/80F67E2D236A1A2854876F6A409C92D2D54C3849","hash":"80F67E2D236A1A2854876F6A409C92D2D54C3849","quality":"720p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":4,"peers":0,"size":"701.10 MB","size_bytes":735156634,"date_uploaded":"2015-10-31 16:40:51","date_uploaded_unix":1446306051},{"url":"https://yts.mx/torrent/download/BA2DD0FB35E9055372873D420E5C951CD41D6A8F","hash":"BA2DD0FB35E9055372873D420E5C951CD41D6A8F","quality":"1080p","type":"bluray","is_repack":"0","video_codec":"x264","bit_depth":"8","audio_channels":"2.0","seeds":2,"peers":1,"size":"1.24 GB","size_bytes":1331439862,"date_uploaded":"2015-10-31 16:40:56","date_uploaded_unix":1446306056}]
/// date_uploaded : "2015-10-31 16:40:51"
/// date_uploaded_unix : 1446306051

class Movie {
  Movie({
      num? id, 
      String? url, 
      String? imdbCode, 
      String? title, 
      String? titleEnglish, 
      String? titleLong, 
      String? slug, 
      num? year, 
      num? rating, 
      num? runtime, 
      List<String>? genres, 
      num? likeCount, 
      String? descriptionIntro, 
      String? descriptionFull, 
      String? ytTrailerCode, 
      String? language, 
      String? mpaRating, 
      String? backgroundImage, 
      String? backgroundImageOriginal, 
      String? smallCoverImage, 
      String? mediumCoverImage, 
      String? largeCoverImage, 
      List<Torrents>? torrents, 
      String? dateUploaded, 
      num? dateUploadedUnix,}){
    _id = id;
    _url = url;
    _imdbCode = imdbCode;
    _title = title;
    _titleEnglish = titleEnglish;
    _titleLong = titleLong;
    _slug = slug;
    _year = year;
    _rating = rating;
    _runtime = runtime;
    _genres = genres;
    _likeCount = likeCount;
    _descriptionIntro = descriptionIntro;
    _descriptionFull = descriptionFull;
    _ytTrailerCode = ytTrailerCode;
    _language = language;
    _mpaRating = mpaRating;
    _backgroundImage = backgroundImage;
    _backgroundImageOriginal = backgroundImageOriginal;
    _smallCoverImage = smallCoverImage;
    _mediumCoverImage = mediumCoverImage;
    _largeCoverImage = largeCoverImage;
    _torrents = torrents;
    _dateUploaded = dateUploaded;
    _dateUploadedUnix = dateUploadedUnix;
}

  Movie.fromJson(dynamic json) {
    _id = json['id'];
    _url = json['url'];
    _imdbCode = json['imdb_code'];
    _title = json['title'];
    _titleEnglish = json['title_english'];
    _titleLong = json['title_long'];
    _slug = json['slug'];
    _year = json['year'];
    _rating = json['rating'];
    _runtime = json['runtime'];
    _genres = json['genres'] != null ? json['genres'].cast<String>() : [];
    _likeCount = json['like_count'];
    _descriptionIntro = json['description_intro'];
    _descriptionFull = json['description_full'];
    _ytTrailerCode = json['yt_trailer_code'];
    _language = json['language'];
    _mpaRating = json['mpa_rating'];
    _backgroundImage = json['background_image'];
    _backgroundImageOriginal = json['background_image_original'];
    _smallCoverImage = json['small_cover_image'];
    _mediumCoverImage = json['medium_cover_image'];
    _largeCoverImage = json['large_cover_image'];
    if (json['torrents'] != null) {
      _torrents = [];
      json['torrents'].forEach((v) {
        _torrents?.add(Torrents.fromJson(v));
      });
    }
    _dateUploaded = json['date_uploaded'];
    _dateUploadedUnix = json['date_uploaded_unix'];
  }
  num? _id;
  String? _url;
  String? _imdbCode;
  String? _title;
  String? _titleEnglish;
  String? _titleLong;
  String? _slug;
  num? _year;
  num? _rating;
  num? _runtime;
  List<String>? _genres;
  num? _likeCount;
  String? _descriptionIntro;
  String? _descriptionFull;
  String? _ytTrailerCode;
  String? _language;
  String? _mpaRating;
  String? _backgroundImage;
  String? _backgroundImageOriginal;
  String? _smallCoverImage;
  String? _mediumCoverImage;
  String? _largeCoverImage;
  List<Torrents>? _torrents;
  String? _dateUploaded;
  num? _dateUploadedUnix;
Movie copyWith({  num? id,
  String? url,
  String? imdbCode,
  String? title,
  String? titleEnglish,
  String? titleLong,
  String? slug,
  num? year,
  num? rating,
  num? runtime,
  List<String>? genres,
  num? likeCount,
  String? descriptionIntro,
  String? descriptionFull,
  String? ytTrailerCode,
  String? language,
  String? mpaRating,
  String? backgroundImage,
  String? backgroundImageOriginal,
  String? smallCoverImage,
  String? mediumCoverImage,
  String? largeCoverImage,
  List<Torrents>? torrents,
  String? dateUploaded,
  num? dateUploadedUnix,
}) => Movie(  id: id ?? _id,
  url: url ?? _url,
  imdbCode: imdbCode ?? _imdbCode,
  title: title ?? _title,
  titleEnglish: titleEnglish ?? _titleEnglish,
  titleLong: titleLong ?? _titleLong,
  slug: slug ?? _slug,
  year: year ?? _year,
  rating: rating ?? _rating,
  runtime: runtime ?? _runtime,
  genres: genres ?? _genres,
  likeCount: likeCount ?? _likeCount,
  descriptionIntro: descriptionIntro ?? _descriptionIntro,
  descriptionFull: descriptionFull ?? _descriptionFull,
  ytTrailerCode: ytTrailerCode ?? _ytTrailerCode,
  language: language ?? _language,
  mpaRating: mpaRating ?? _mpaRating,
  backgroundImage: backgroundImage ?? _backgroundImage,
  backgroundImageOriginal: backgroundImageOriginal ?? _backgroundImageOriginal,
  smallCoverImage: smallCoverImage ?? _smallCoverImage,
  mediumCoverImage: mediumCoverImage ?? _mediumCoverImage,
  largeCoverImage: largeCoverImage ?? _largeCoverImage,
  torrents: torrents ?? _torrents,
  dateUploaded: dateUploaded ?? _dateUploaded,
  dateUploadedUnix: dateUploadedUnix ?? _dateUploadedUnix,
);
  num? get id => _id;
  String? get url => _url;
  String? get imdbCode => _imdbCode;
  String? get title => _title;
  String? get titleEnglish => _titleEnglish;
  String? get titleLong => _titleLong;
  String? get slug => _slug;
  num? get year => _year;
  num? get rating => _rating;
  num? get runtime => _runtime;
  List<String>? get genres => _genres;
  num? get likeCount => _likeCount;
  String? get descriptionIntro => _descriptionIntro;
  String? get descriptionFull => _descriptionFull;
  String? get ytTrailerCode => _ytTrailerCode;
  String? get language => _language;
  String? get mpaRating => _mpaRating;
  String? get backgroundImage => _backgroundImage;
  String? get backgroundImageOriginal => _backgroundImageOriginal;
  String? get smallCoverImage => _smallCoverImage;
  String? get mediumCoverImage => _mediumCoverImage;
  String? get largeCoverImage => _largeCoverImage;
  List<Torrents>? get torrents => _torrents;
  String? get dateUploaded => _dateUploaded;
  num? get dateUploadedUnix => _dateUploadedUnix;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['url'] = _url;
    map['imdb_code'] = _imdbCode;
    map['title'] = _title;
    map['title_english'] = _titleEnglish;
    map['title_long'] = _titleLong;
    map['slug'] = _slug;
    map['year'] = _year;
    map['rating'] = _rating;
    map['runtime'] = _runtime;
    map['genres'] = _genres;
    map['like_count'] = _likeCount;
    map['description_intro'] = _descriptionIntro;
    map['description_full'] = _descriptionFull;
    map['yt_trailer_code'] = _ytTrailerCode;
    map['language'] = _language;
    map['mpa_rating'] = _mpaRating;
    map['background_image'] = _backgroundImage;
    map['background_image_original'] = _backgroundImageOriginal;
    map['small_cover_image'] = _smallCoverImage;
    map['medium_cover_image'] = _mediumCoverImage;
    map['large_cover_image'] = _largeCoverImage;
    if (_torrents != null) {
      map['torrents'] = _torrents?.map((v) => v.toJson()).toList();
    }
    map['date_uploaded'] = _dateUploaded;
    map['date_uploaded_unix'] = _dateUploadedUnix;
    return map;
  }

}

/// url : "https://yts.mx/torrent/download/80F67E2D236A1A2854876F6A409C92D2D54C3849"
/// hash : "80F67E2D236A1A2854876F6A409C92D2D54C3849"
/// quality : "720p"
/// type : "bluray"
/// is_repack : "0"
/// video_codec : "x264"
/// bit_depth : "8"
/// audio_channels : "2.0"
/// seeds : 4
/// peers : 0
/// size : "701.10 MB"
/// size_bytes : 735156634
/// date_uploaded : "2015-10-31 16:40:51"
/// date_uploaded_unix : 1446306051

class Torrents {
  Torrents({
      String? url, 
      String? hash, 
      String? quality, 
      String? type, 
      String? isRepack, 
      String? videoCodec, 
      String? bitDepth, 
      String? audioChannels, 
      num? seeds, 
      num? peers, 
      String? size, 
      num? sizeBytes, 
      String? dateUploaded, 
      num? dateUploadedUnix,}){
    _url = url;
    _hash = hash;
    _quality = quality;
    _type = type;
    _isRepack = isRepack;
    _videoCodec = videoCodec;
    _bitDepth = bitDepth;
    _audioChannels = audioChannels;
    _seeds = seeds;
    _peers = peers;
    _size = size;
    _sizeBytes = sizeBytes;
    _dateUploaded = dateUploaded;
    _dateUploadedUnix = dateUploadedUnix;
}

  Torrents.fromJson(dynamic json) {
    _url = json['url'];
    _hash = json['hash'];
    _quality = json['quality'];
    _type = json['type'];
    _isRepack = json['is_repack'];
    _videoCodec = json['video_codec'];
    _bitDepth = json['bit_depth'];
    _audioChannels = json['audio_channels'];
    _seeds = json['seeds'];
    _peers = json['peers'];
    _size = json['size'];
    _sizeBytes = json['size_bytes'];
    _dateUploaded = json['date_uploaded'];
    _dateUploadedUnix = json['date_uploaded_unix'];
  }
  String? _url;
  String? _hash;
  String? _quality;
  String? _type;
  String? _isRepack;
  String? _videoCodec;
  String? _bitDepth;
  String? _audioChannels;
  num? _seeds;
  num? _peers;
  String? _size;
  num? _sizeBytes;
  String? _dateUploaded;
  num? _dateUploadedUnix;
Torrents copyWith({  String? url,
  String? hash,
  String? quality,
  String? type,
  String? isRepack,
  String? videoCodec,
  String? bitDepth,
  String? audioChannels,
  num? seeds,
  num? peers,
  String? size,
  num? sizeBytes,
  String? dateUploaded,
  num? dateUploadedUnix,
}) => Torrents(  url: url ?? _url,
  hash: hash ?? _hash,
  quality: quality ?? _quality,
  type: type ?? _type,
  isRepack: isRepack ?? _isRepack,
  videoCodec: videoCodec ?? _videoCodec,
  bitDepth: bitDepth ?? _bitDepth,
  audioChannels: audioChannels ?? _audioChannels,
  seeds: seeds ?? _seeds,
  peers: peers ?? _peers,
  size: size ?? _size,
  sizeBytes: sizeBytes ?? _sizeBytes,
  dateUploaded: dateUploaded ?? _dateUploaded,
  dateUploadedUnix: dateUploadedUnix ?? _dateUploadedUnix,
);
  String? get url => _url;
  String? get hash => _hash;
  String? get quality => _quality;
  String? get type => _type;
  String? get isRepack => _isRepack;
  String? get videoCodec => _videoCodec;
  String? get bitDepth => _bitDepth;
  String? get audioChannels => _audioChannels;
  num? get seeds => _seeds;
  num? get peers => _peers;
  String? get size => _size;
  num? get sizeBytes => _sizeBytes;
  String? get dateUploaded => _dateUploaded;
  num? get dateUploadedUnix => _dateUploadedUnix;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = _url;
    map['hash'] = _hash;
    map['quality'] = _quality;
    map['type'] = _type;
    map['is_repack'] = _isRepack;
    map['video_codec'] = _videoCodec;
    map['bit_depth'] = _bitDepth;
    map['audio_channels'] = _audioChannels;
    map['seeds'] = _seeds;
    map['peers'] = _peers;
    map['size'] = _size;
    map['size_bytes'] = _sizeBytes;
    map['date_uploaded'] = _dateUploaded;
    map['date_uploaded_unix'] = _dateUploadedUnix;
    return map;
  }

}