import 'package:intellibra/src/features/home/data/models/post_model.dart';

List<Map<String, String>> newnestPosts = [
  {
    'title': 'New Study Shows Promising Results in Breast Cancer Treatment',
    'description':
        'A new study has shown promising results in the treatment of breast cancer. Researchers are hopeful that this could lead to more effective treatments in the future.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer Awareness Month',
    'description':
        'October is Breast Cancer Awareness Month, an annual campaign to increase awareness of the disease. Join us in spreading the word and raising awareness!',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Early Detection Saves Lives',
    'description':
        'Early detection is key in the fight against breast cancer. Make sure to schedule regular mammograms and perform self-exams to catch any potential issues early.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  // Add 9 more posts here
];

List<Map<String, String>> popularPosts = [
  {
    'title': 'Breast Cancer Survivor Stories',
    'description':
        'Hearing from other breast cancer survivors can be a source of inspiration and hope. Check out some survivor stories to learn more about the journey.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer Prevention Tips',
    'description':
        'There are many lifestyle changes you can make to help reduce your risk of developing breast cancer. Talk to your doctor about ways to stay healthy.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer Treatment Options',
    'description':
        'If you or a loved one has been diagnosed with breast cancer, there are many treatment options available. Talk to your doctor about what options are right for you.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  // Add 9 more posts here
];

List<Map<String, String>> recommendedPosts = [
  {
    'title': 'Breast Cancer Awareness Merchandise',
    'description':
        'Many organizations sell merchandise to help raise funds for breast cancer research. Consider purchasing a t-shirt, bracelet, or other item to show your support.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer and Genetics',
    'description':
        'Some cases of breast cancer are caused by genetic mutations. Talk to your doctor about genetic testing if you have a family history of the disease.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Support Breast Cancer Research',
    'description':
        'There are many organizations dedicated to funding breast cancer research. Consider making a donation to help support their efforts.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  // Add 9 more posts here
];

List<Map<String, String>> allPosts = [
  {
    'title': 'Breast Cancer Awareness Month',
    'description':
        'October is Breast Cancer Awareness Month, an annual campaign to increase awareness of the disease. Join us in spreading the word and raising awareness!',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer Prevention Tips',
    'description':
        'There are many lifestyle changes you can make to help reduce your risk of developing breast cancer. Talk to your doctor about ways to stay healthy.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer Treatment Options',
    'description':
        'If you or a loved one has been diagnosed with breast cancer, there are many treatment options available. Talk to your doctor about what options are right for you.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer Awareness Merchandise',
    'description':
        'Many organizations sell merchandise to help raise funds for breast cancer research. Consider purchasing a t-shirt, bracelet, or other item to show your support.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer and Genetics',
    'description':
        'Some cases of breast cancer are caused by genetic mutations. Talk to your doctor about genetic testing if you have a family history of the disease.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Support Breast Cancer Research',
    'description':
        'There are many organizations dedicated to funding breast cancer research. Consider making a donation to help support their efforts.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer Survivor Stories',
    'description':
        'Hearing from other breast cancer survivors can be a source of inspiration and hope. Check out some survivor stories to learn more about the journey.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer Prevention Tips',
    'description':
        'There are many lifestyle changes you can make to help reduce your risk of developing breast cancer. Talk to your doctor about ways to stay healthy.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer Treatment Options',
    'description':
        'If you or a loved one has been diagnosed with breast cancer, there are many treatment options available. Talk to your doctor about what options are right for you.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'New Study Shows Promising Results in Breast Cancer Treatment',
    'description':
        'A new study has shown promising results in the treatment of breast cancer. Researchers are hopeful that this could lead to more effective treatments in the future.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Breast Cancer Awareness Month',
    'description':
        'October is Breast Cancer Awareness Month, an annual campaign to increase awareness of the disease. Join us in spreading the word and raising awareness!',
    'imageLink': 'https://picsum.photos/200/300'
  },
  {
    'title': 'Early Detection Saves Lives',
    'description':
        'Early detection is key in the fight against breast cancer. Make sure to schedule regular mammograms and perform self-exams to catch any potential issues early.',
    'imageLink': 'https://picsum.photos/200/300'
  },
  // Add 9 more posts here
];

List<PostModel> newnestPostsE() {
  return newnestPosts.map(PostModel.fromMap).toList();
}

List<PostModel> popularPostsE() {
  return popularPosts.map(PostModel.fromMap).toList();
}

List<PostModel> recommendedPostsE() {
  return recommendedPosts.map(PostModel.fromMap).toList();
}

List<PostModel> allPostsE() {
  return allPosts.map(PostModel.fromMap).toList();
}
