//  void _makePrediction() async {
//     setState(() {
//       _prediction = 'loading';
//     });

//     var request = http.MultipartRequest("POST", Uri.parse(url));
//     print("Url:$url");
//     request.files.add(await http.MultipartFile.fromPath("image", _image.path));

//     var response = await request.send();

//     if (response.statusCode == 200) {
//       // var response_content = await response.stream.bytesToString();
//       // var response_result = jsonDecode(response_content.toString());
//       // print(response_content);
//       var test = await response.stream.bytesToString();

//       setState(() {
//         _prediction = test;
//       });
//     } else {
//       print("An error occurred: ${response.statusCode}");
//     }
//   }