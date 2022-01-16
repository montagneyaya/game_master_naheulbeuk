import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:game_master_naheulbeuk/src/models/creatures/player-character/job.dart';
import 'package:game_master_naheulbeuk/src/models/creatures/player-character/jobs.enum.dart';
import 'package:game_master_naheulbeuk/src/models/creatures/player-character/people.dart';
import 'package:game_master_naheulbeuk/src/models/creatures/player-character/peoples.enum.dart';
import 'package:game_master_naheulbeuk/src/models/creatures/player-character/specialization.dart';
import 'package:game_master_naheulbeuk/src/models/creatures/player-character/specializations.enum.dart';
import 'package:game_master_naheulbeuk/src/resources/services/dices.service.dart';
import 'package:game_master_naheulbeuk/src/ui/components/background/background.dart';
import 'package:game_master_naheulbeuk/src/ui/instances/background/background.dart';
import 'package:game_master_naheulbeuk/src/ui/themes/icons_dices.dart';

class CreateCharacterAndroid extends StatefulWidget {
  @override
  _CreateCharacterAndroidState createState() => _CreateCharacterAndroidState();
}

class _CreateCharacterAndroidState extends State<CreateCharacterAndroid> with SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _statisticsForm = GlobalKey<FormState>();
  final GlobalKey<FormState> _characterForm = GlobalKey<FormState>();
  final GlobalKey<FormState> _skillsForm = GlobalKey<FormState>();
  final GlobalKey<FormState> _modifyForm = GlobalKey<FormState>();
  final GlobalKey<FormState> _finalForm = GlobalKey<FormState>();
  late TabController _controller;

  //step 1
  final TextEditingController _courageController = TextEditingController();
  final TextEditingController _intellectController = TextEditingController();
  final TextEditingController _charismaController = TextEditingController();
  final TextEditingController _dexterityController = TextEditingController();
  final TextEditingController _strengthController = TextEditingController();
  late List<TextEditingController> _statistcsController;

  //step 2
  late People _peopleController;
  late Job _jobController;
  late Specialization _specializationController;
  late List<People> _peopleList;
  late List<Job> _jobList;
  late List<Specialization> _specializationList;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    _controller = TabController(length: 5, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });

    //step 1
    _statistcsController = [
      _courageController,
      _intellectController,
      _charismaController,
      _dexterityController,
      _strengthController
    ];
    _statistcsController.forEach((element) {
      element.text = '8';
    });

    //step 2
    _peopleController = peopleMonster;
    _jobController = jobAny;
    _specializationController = specializationAny;
    _peopleList = [];
    _jobList = [];
    _specializationList = [];
  }

  @override
  void dispose() {
    //step 1
    _statistcsController.forEach((element) {
      element.dispose();
    });
    _courageController.dispose();
    _intellectController.dispose();
    _charismaController.dispose();
    _dexterityController.dispose();
    _strengthController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: TabBarView(
            physics: NeverScrollableScrollPhysics(),
            children: <Widget>[
              //step 1
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height -
                            Scaffold.of(context).appBarMaxHeight! -
                            kToolbarHeight -
                            kBottomNavigationBarHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Form(
                          key: _statisticsForm,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(flex: 2, child: Text('Courage (COU)')),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _statistcsController[0],
                                        style: Theme.of(context).textTheme.bodyText2,
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType: TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 || int.parse(value) > 20) {
                                            return 'entre 8 et 20';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: IconButton(
                                          icon: Icon(IconsDices.dice6),
                                          onPressed: () {
                                            int value = Dices().d6() + 7;
                                            _statistcsController[0].text = value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(flex: 2, child: Text('Intelligence (INT)')),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _statistcsController[1],
                                        style: Theme.of(context).textTheme.bodyText2,
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType: TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 || int.parse(value) > 20) {
                                            return 'entre 8 et 20';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: IconButton(
                                          icon: Icon(IconsDices.dice6),
                                          onPressed: () {
                                            int value = Dices().d6() + 7;
                                            _statistcsController[1].text = value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(flex: 2, child: Text('Charisme (CHA)')),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _statistcsController[2],
                                        style: Theme.of(context).textTheme.bodyText2,
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType: TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 || int.parse(value) > 20) {
                                            return 'entre 8 et 20';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: IconButton(
                                          icon: Icon(IconsDices.dice6),
                                          onPressed: () {
                                            int value = Dices().d6() + 7;
                                            _statistcsController[2].text = value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(flex: 2, child: Text('Adresse (AD)')),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _statistcsController[3],
                                        style: Theme.of(context).textTheme.bodyText2,
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType: TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 || int.parse(value) > 20) {
                                            return 'entre 8 et 20';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: IconButton(
                                          icon: Icon(IconsDices.dice6),
                                          onPressed: () {
                                            int value = Dices().d6() + 7;
                                            _statistcsController[3].text = value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(flex: 2, child: Text('Force (FO)')),
                                    Expanded(
                                      child: TextFormField(
                                        controller: _statistcsController[4],
                                        style: Theme.of(context).textTheme.bodyText2,
                                        textAlignVertical: TextAlignVertical.bottom,
                                        textAlign: TextAlign.center,
                                        maxLength: 2,
                                        keyboardType: TextInputType.numberWithOptions(),
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                          counterText: '',
                                        ),
                                        validator: (value) {
                                          if (int.parse(value!) < 8 || int.parse(value) > 20) {
                                            return 'entre 8 et 20';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 32.0),
                                        child: IconButton(
                                          icon: Icon(IconsDices.dice6),
                                          onPressed: () {
                                            int value = Dices().d6() + 7;
                                            _statistcsController[4].text = value.toString();
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: TextButton(
                                  child: SvgPicture.asset('assets/images/dice20.svg'),
                                  onPressed: () {
                                    _statistcsController.forEach((element) {
                                      int value = Dices().d6() + 7;
                                      element.text = value.toString();
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //step 2
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom,
                    ),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: MediaQuery.of(context).size.height -
                            Scaffold.of(context).appBarMaxHeight! -
                            kToolbarHeight -
                            kBottomNavigationBarHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Form(
                          key: _characterForm,
                          child: Column(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text('Origine'),
                                          Expanded(
                                            child: DropdownButtonFormField<People>(
                                              style: Theme.of(context).textTheme.bodyText2,
                                              value: _peopleController,
                                              items: _peopleList.map(buildMenuPeople).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  _peopleController = value!;
                                                  _jobList = [];
                                                  for (Job job in _peopleController.jobs) {
                                                    bool test = false;
                                                    for (int i = 0; i < 5; i++) {
                                                      test = int.parse(_statistcsController[i].text) >
                                                              job.characteristics()[i][0] - 1 &&
                                                          int.parse(_statistcsController[i].text) <
                                                              job.characteristics()[i][1] + 1;
                                                      if (!test) break;
                                                    }
                                                    if (test) _jobList.add(job);
                                                  }
                                                  _jobController = _jobList[0];

                                                  _specializationList = _jobController.specialization;
                                                  _specializationController = _specializationList[0];
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text('Metier'),
                                          Expanded(
                                            child: DropdownButtonFormField<Job>(
                                              style: Theme.of(context).textTheme.bodyText2,
                                              value: _jobController,
                                              items: _jobList.map(buildMenuJob).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  _jobController = value!;
                                                  _specializationList = _jobController.specialization;
                                                  _specializationController = _specializationList[0];
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        children: [
                                          Text('Specialisation'),
                                          Expanded(
                                            child: DropdownButtonFormField<Specialization>(
                                              style: Theme.of(context).textTheme.bodyText2,
                                              value: _specializationController,
                                              items: _specializationList.map(buildMenuSpecialization).toList(),
                                              onChanged: (value) {
                                                setState(() {
                                                  _specializationController = value!;
                                                });
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //step 3
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: Form(
                  key: _skillsForm,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'taper du texte';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),

              //step 4
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: Form(
                  key: _modifyForm,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'taper du texte';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),

              //step 5
              Container(
                decoration: background(context, imageDice, BoxFit.contain),
                child: Form(
                  key: _finalForm,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'taper du texte';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
            controller: _controller,
          ),
        ),
        Row(
          children: [
            TextButton(
              child: Row(
                children: [
                  Icon(Icons.arrow_back),
                  Text('Precedent'),
                ],
              ),
              onPressed: _controller.index > 0
                  ? () {
                      _controller.animateTo(_controller.index - 1);
                    }
                  : null,
            ),
            Expanded(
              child: Center(
                child: TabPageSelector(
                  controller: _controller,
                  selectedColor: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
            TextButton(
              child: Row(
                children: [
                  _controller.index < _controller.length - 1 ? Text('Suivant') : Text('Sauve.'),
                  Icon(Icons.arrow_forward),
                ],
              ),
              onPressed: () {
                //step 1 to step 2
                if (_controller.index == 0 && _statisticsForm.currentState!.validate()) {
                  _peopleList = [];
                  _jobList = [];
                  _specializationList = [];
                  _peopleController = peopleMonster;
                  _jobController = jobAny;
                  _specializationController = specializationAny;

                  for (People people in peopleEnum) {
                    bool test = false;
                    for (int i = 0; i < 5; i++) {
                      test = int.parse(_statistcsController[i].text) > people.characteristics()[i][0] - 1 &&
                          int.parse(_statistcsController[i].text) < people.characteristics()[i][1] + 1;
                      if (!test) break;
                    }
                    if (test) _peopleList.add(people);
                  }
                  _peopleController = _peopleList[0];

                  for (Job job in _peopleController.jobs) {
                    bool test = false;
                    for (int i = 0; i < 5; i++) {
                      test = int.parse(_statistcsController[i].text) > job.characteristics()[i][0] - 1 &&
                          int.parse(_statistcsController[i].text) < job.characteristics()[i][1] + 1;
                      if (!test) break;
                    }
                    if (test) _jobList.add(job);
                  }
                  _jobController = _jobList[0];

                  _specializationList = _jobController.specialization;
                  _specializationController = _specializationList[0];

                  _controller.animateTo(_controller.index + 1);
                }

                //step 2 to step 3
                if (_controller.index == 1 && _characterForm.currentState!.validate()) {
                  _controller.animateTo(_controller.index + 1);
                }

                //step 3 to step 4
                if (_controller.index == 2 && _skillsForm.currentState!.validate()) {
                  _controller.animateTo(_controller.index + 1);
                }

                //step 4 to step 5
                if (_controller.index == 3 && _modifyForm.currentState!.validate()) {
                  _controller.animateTo(_controller.index + 1);
                }

                //step 5 to save
              },
            ),
          ],
        ),
      ],
    );
  }

  DropdownMenuItem<People> buildMenuPeople(People value) => DropdownMenuItem(
        value: value,
        child: Text(value.people),
      );
  DropdownMenuItem<Job> buildMenuJob(Job value) => DropdownMenuItem(
        value: value,
        child: Text(value.job),
      );
  DropdownMenuItem<Specialization> buildMenuSpecialization(Specialization value) => DropdownMenuItem(
        value: value,
        child: Text(value.specialization),
      );
}
