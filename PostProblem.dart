class PostProblem {
  final int id;
  final String problem;
  final String solution;
  final String picture;
  final String titre;

  PostProblem({this.id,this.problem,this.solution,this.picture,this.titre});

  factory PostProblem.fromJson(Map<String, dynamic> json) {
    return PostProblem(
      id: json['id'] as int,
      problem: json['problem'] as String,
      solution: json['solution'] as String,
      picture: json['picture'] as String,
      titre: json['titre'] as String,
    );
  }
}