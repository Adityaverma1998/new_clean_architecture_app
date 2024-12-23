class NewsEntity{
  final String? title;
  final String? description;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

  NewsEntity({this.content,this.description,this.publishedAt,this.title,this.url,this.urlToImage});

    // Convert JSON to Model

    factory NewsEntity.fromJson(Map<String,dynamic> json){
      return NewsEntity(
        content: json['content'],
        title: json['title'],
        description: json['description'],
        url:json['url'],
        urlToImage: json['urlToImage'] ,
        publishedAt: json['publication'],
        );
    }

    // Convert Model to JSON

    Map<String, dynamic> toJson() {
      return{
        'title':title,
        'description':description,
        'url':url,
        'urlToImage':urlToImage,
        'content':content,
        'publishedAt':publishedAt
      };
    
    }


}
