class TopicCard {
  int id;
  int topicId;
  int userId;
  String avatarImg;
  String nickname;
  String topicName;
  String createdAt;
  String img;   //图片地址
  bool isOwner;

  String content;
  int thumbUpCount;
  int commentCount;

  TopicCard(this.id, this.topicId, this.userId, this.avatarImg, this.nickname,
      this.topicName, this.createdAt, this.img, this.isOwner,this.content,
      this.thumbUpCount, this.commentCount);
}

List<TopicCard> cards = [
    new TopicCard(1, 1, 1, '', '小未', '碎碎念', '2019-01-01', 'http://thundersdata-public.oss-cn-hangzhou.aliyuncs.com/eurasian_train/image/1565950272039.jpg?Expires=1881310263&OSSAccessKeyId=LTAIDlo0QYzFR2tc&Signature=yIXKJ1hLn6183hHemU26h1%2BjEw8%3D', true, '最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉', 10, 19),
    new TopicCard(1, 1, 1, '', '小未', '碎碎念', '2019-01-01', null, true, '最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉', 10, 19),
    new TopicCard(1, 1, 1, '', '小未', '碎碎念', '2019-01-01', 'http://thundersdata-public.oss-cn-hangzhou.aliyuncs.com/eurasian_train/image/1565952208466.jpg?Expires=1881312206&OSSAccessKeyId=LTAIDlo0QYzFR2tc&Signature=Tvt%2Fg2pgt2y%2F6qfPxDkA%2BKtjPzw%3D', true, '最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉', 10, 19),
    new TopicCard(1, 1, 1, '', '小未', '碎碎念', '2019-01-01', 'http://thundersdata-public.oss-cn-hangzhou.aliyuncs.com/eurasian_train/image/1565950272039.jpg?Expires=1881310263&OSSAccessKeyId=LTAIDlo0QYzFR2tc&Signature=yIXKJ1hLn6183hHemU26h1%2BjEw8%3D', true, '最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉', 10, 19),
    new TopicCard(1, 1, 1, '', '小未', '碎碎念', '2019-01-01', null, true, '最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉', 10, 19),
    new TopicCard(1, 1, 1, '', '小未', '碎碎念', '2019-01-01', null, true, '最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉', 10, 19),
    new TopicCard(1, 1, 1, '', '小未', '碎碎念', '2019-01-01', 'http://thundersdata-public.oss-cn-hangzhou.aliyuncs.com/eurasian_train/image/1565950272039.jpg?Expires=1881310263&OSSAccessKeyId=LTAIDlo0QYzFR2tc&Signature=yIXKJ1hLn6183hHemU26h1%2BjEw8%3D', true, '最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉', 10, 19),
    new TopicCard(1, 1, 1, '', '小未', '碎碎念', '2019-01-01', 'http://thundersdata-public.oss-cn-hangzhou.aliyuncs.com/eurasian_train/image/1565952208466.jpg?Expires=1881312206&OSSAccessKeyId=LTAIDlo0QYzFR2tc&Signature=Tvt%2Fg2pgt2y%2F6qfPxDkA%2BKtjPzw%3D', true, '最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉', 10, 19),
    new TopicCard(1, 1, 1, '', '小未', '碎碎念', '2019-01-01', 'http://thundersdata-public.oss-cn-hangzhou.aliyuncs.com/eurasian_train/image/1565952208466.jpg?Expires=1881312206&OSSAccessKeyId=LTAIDlo0QYzFR2tc&Signature=Tvt%2Fg2pgt2y%2F6qfPxDkA%2BKtjPzw%3D', true, '最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉', 10, 19),
];

