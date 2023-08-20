class CourseDataModel {
  int? courseID;
  String? courseTitle;
  String? courseBrief;
  int? numOfChapters;
  var courseFee;
  int? instructorId;
  var rating;
  var image;
  List<Sections>? sections;

  CourseDataModel(
      {this.courseID,
        this.courseTitle,
        this.courseBrief,
        this.numOfChapters,
        this.courseFee,
        this.instructorId,
        this.rating,
        this.image,
        this.sections});

  CourseDataModel.fromJson(Map<String, dynamic> json) {
    courseID = json['idcourse'];
    courseTitle = json['course_title'];
    courseBrief = json['course_brief'];
    numOfChapters = json['num_of_chapters'];
    courseFee = json['course_fee'];
    instructorId = json['instructor_id'];
    rating = json['rating'];
    image = json['Image'];
    if (json['sections'] != null) {
      sections = <Sections>[];
      json['sections'].forEach((v) {
        sections!.add(Sections.fromJson(v));
      });
    }
  }

}

class Sections {
  int? sectionId;
  String? chapterTitle;
  int? numOfReading;
  int? numOfVideo;
  int? numOfAssignment;
  int? numOfArContent;
  int? courseIdcourse;
  List<Content>? content;

  Sections(
      {this.sectionId,
        this.chapterTitle,
        this.numOfReading,
        this.numOfVideo,
        this.numOfAssignment,
        this.numOfArContent,
        this.courseIdcourse,
        this.content});

  Sections.fromJson(Map<String, dynamic> json) {
    sectionId = json['idcourse_chapter'];
    chapterTitle = json['chapter_title'];
    numOfReading = json['num_of_reading'];
    numOfVideo = json['num_of_video'];
    numOfAssignment = json['num_of_assignment'];
    numOfArContent = json['num_of_ar_content'];
    courseIdcourse = json['course_idcourse'];
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        content!.add(Content.fromJson(v));
      });
    }
  }

}

class Content {
  int? contentId;
  var isMandatory;
  int? timeRequiredInSec;
  var isOpenForFree;
  int? sectionId;
  int? contentTypeId;
  String? pathToContent;
  ContentItself? contentItself;

  Content(
      {this.contentId,
        this.isMandatory,
        this.timeRequiredInSec,
        this.isOpenForFree,
        this.sectionId,
        this.contentTypeId,
        this.pathToContent,
        this.contentItself});

  Content.fromJson(Map<String, dynamic> json) {
    contentId = json['idcourse_chpater_content'];
    isMandatory = json['is_mandatory'];
    timeRequiredInSec = json['time_required_in_sec'];
    isOpenForFree = json['is_open_for_free'];
    sectionId = json['course_chapter_idcourse_chapter'];
    contentTypeId = json['content_type_idcontent_type'];
    pathToContent = json['pathToContent'];
    contentItself = json['contentItself'] != null
        ? ContentItself.fromJson(json['contentItself'])
        : null;
  }

}

class ContentItself {
  String? type;
  List<int>? data;

  ContentItself({this.type, this.data});

  ContentItself.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    data = json['data'].cast<int>();
  }

}