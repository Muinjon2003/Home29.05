class Post {
  String text;
  int likes;
  List<String> comments;

  Post(this.text, this.likes, this.comments);

  void setPost(String newText) {
    text = newText;
  }

  void addLike() {
    likes += 1;
  }

  void addComment(String comment) {
    comments.add(comment);
  }

  String getInfo() {
    return 'Text: $text\nLikes: $likes\n\nComments:\n${comments.join('\n')}';
  }
}

void main() {

  Post post = Post('', 0, []);

  post.setPost('It is Post');

  post.addLike();
  post.addLike();

  post.addComment('Super');
  post.addComment('Great');

  print(post.getInfo());
}
