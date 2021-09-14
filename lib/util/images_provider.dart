class ImagesDataProvider {
  static String url = "";
  static String bannersUrl = "";

  static List<String> getAll(String imageName) {
    List<String> imageUrlsList = List();
    if (imageName != null && imageName.isNotEmpty) {
      if (imageName.contains(";")) {
        List<String> imageNamesList = imageName.split(";");
        for (String image in imageNamesList) {
          imageUrlsList.add("$url/Item-Images/${image}.jpg");
        }
      } else {
        imageUrlsList.add("$url/Item-Images/${imageName}.jpg");
      }
    }
    return imageUrlsList;
  }

  static String getFirst(String imageName) {
    if (imageName != null && imageName.isNotEmpty) {
      if (imageName.contains(";")) {
        List<String> imageNamesList = imageName.split(";");
        if (imageNamesList.length > 0) imageName = imageNamesList[0];
      }
    }
    return "$url/Item-Images/${imageName}.jpg";
  }
}
