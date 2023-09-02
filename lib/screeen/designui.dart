import 'package:flutter/material.dart';

class Design extends StatefulWidget {
  const Design({super.key});

  @override
  State<Design> createState() => _DesignState();
}

class _DesignState extends State<Design> {
  String _selectedItem = 'Option 1'; // Initial value

  List<DropdownMenuItem<String>> _dropdownItems = [
    const DropdownMenuItem(
      value: 'Option 1',
      child: Text('Option 1'),
    ),
    const DropdownMenuItem(
      value: 'Option 2',
      child: Text('Option 2'),
    ),
    const DropdownMenuItem(
      value: 'Option 3',
      child: Text('Option 3'),
    ),
  ];

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black87,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_card,
                color: Colors.red,
              )),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Image.asset(
                  "assets/image/fressh.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "টাইপফেস প্রতিযোগিতা",
                    style: TextStyle(fontSize: 18, color: Colors.blue),
                  )),
              const SizedBox(
                height: 18,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nishat",
                    style: TextStyle(fontSize: 24, color: Colors.black87),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Tablet",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Generic: ",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        "Safforn+Stand Lizad+Nutmeg fruit",
                        style:
                            TextStyle(fontSize: 17, color: Colors.blueAccent),
                      )
                    ],
                  ),
                  Text(
                    "Hamdard Bangladesh",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
              const SizedBox(
                height: 18,
              ),
              Container(

                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey, width: 2),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.line_axis,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "3657 recednt view ",
                            style:
                                TextStyle(fontSize: 16, color: Colors.grey),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            "Price ",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          const Text(
                            "৳ 22.50",
                            style:
                                TextStyle(fontSize: 19, color: Colors.black87),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Checkbox(
                           shape: CircleBorder(),
                            value: isChecked,
                            onChanged: (newValue) {
                              setState(() {
                                isChecked = newValue!;
                              });
                            },
                          ),
                          const Text(
                            "100% original Medicine ",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text(
                            "MRP ৳ 22.50 ",
                            style: TextStyle(fontSize: 15, color: Colors.grey),
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "10% off",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.white),
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownButton<String>(
                              focusColor: Colors.teal,
                              iconSize: 35,
                              value: _selectedItem,
                              items: _dropdownItems,
                              onChanged: (String? newValue) {
                                setState(() {
                                  _selectedItem = newValue!;
                                });
                              }),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 13),
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.teal,
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    "Add To Card",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.white),
                                  ),
                                )),
                          ),
                        ],
                      ),


                    ],
                  ),
                ),
              ),
              const SizedBox(height: 25,),
              Container(
                height: 270,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.grey),
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Additional offers',style: TextStyle(fontSize: 16,color: Colors.grey),),
                          Text('Show Less',style: TextStyle(fontSize: 16,color: Colors.teal),),

                        ],
                      ),
                    ),
                    const SizedBox(height: 6,),

                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.payments_rounded),
                          Text('Cashback ৳ 100 : ',style: TextStyle(fontSize: 15,color: Colors.grey),),
                          Text('For Purchaning above ৳500+',style: TextStyle(fontSize: 12,color: Colors.teal),),

                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.payments_rounded),
                          Text('Cashback ৳ 100 : ',style: TextStyle(fontSize: 15,color: Colors.grey),),
                          Text('For Purchaning above ৳500+',style: TextStyle(fontSize: 12,color: Colors.teal),),

                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.payments_rounded),
                          Text('Cashback ৳ 100 : ',style: TextStyle(fontSize: 15,color: Colors.grey),),
                          Text('For Purchaning above ৳500+',style: TextStyle(fontSize: 12,color: Colors.teal),),

                        ],
                      ),
                    ),
                    const SizedBox(height: 12,),

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        width: double.infinity,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: const Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                children: [
                                  Text("৳ 80",style: TextStyle(fontSize: 15,color: Colors.white),),
                                  SizedBox(height: 6,),
                                  Text("1 ITEM",style: TextStyle(fontSize: 15,color: Colors.white),),
                                  SizedBox(width: 40,),


                                ],
                              ),
                            ),

                            SizedBox(width: 130,),
                            Text("View Card",style: TextStyle(fontSize: 17,color: Colors.white),),
                            SizedBox(width: 13,),
                            Icon(Icons.arrow_forward_outlined,color: Colors.white,),
                          ],
                        ),
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
