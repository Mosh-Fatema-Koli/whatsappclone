class StatusModel {
  final String name;
  final String time;
  final String avatar;

  StatusModel({required this.name, required this.time, required this.avatar});
}

List<StatusModel> statusData = [
  StatusModel(
    name: "Rahul",
    time: "10:20",
    avatar: "images/IMG_2049.JPG",
  ),
  StatusModel(
    name: "Sumit Kumar",
    time: "14:23",
    avatar: "images/IMG_2049.JPG",
  ),
  StatusModel(
    name: "Shukla Ji",
    time: "23:20",
    avatar: "images/IMG_2049.JPG",
  ),
  StatusModel(
    name: "Sonam Sharma",
    time: "22:30",
    avatar: "images/IMG_2049.JPG",
  ),
];
