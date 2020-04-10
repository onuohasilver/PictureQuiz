import 'actions.dart';
class Description {
  int _counter = 0;
  int _imgCounter=1;
  int _score=0;
  
  

  final List _descriptions = <DescriptorCups>[
    DescriptorCups('Here is Description 1',true),
    DescriptorCups('Here is Description 2',false),
    DescriptorCups('Here is Description 3',true),
    DescriptorCups('Here is Description 4',false),
    DescriptorCups('Here is Description 5',true),
    DescriptorCups('Here is Description 6',false),
    DescriptorCups('Here is Description 7',true),
    DescriptorCups('Here is Description 8',false),
    
  ];

  
//Get the next description from the description list whenever the buttons are pressed
  bool overFlow()=>(_counter<_descriptions.length-1);
  
  String getNextDescription() {
    return _descriptions[_counter].description;
  }
//Get the next image from the description list whenever the buttons are pressed
  String getNextImage() {
    return 'images/image$_imgCounter.jpg';
  }

  //increment the counter by 1 whenever the buttons are pressed
  incrementCounter() {
    _counter++;_imgCounter++;
  }

  bool checkAnswer(){
    return _descriptions[_counter].answer;

  }

  void increaseScore(){
    _score++;
  }

  int scoreValue(){
    return _score;
  }


}
