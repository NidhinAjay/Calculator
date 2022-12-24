import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const calc());
}

class calc extends StatefulWidget {
  const calc({Key? key}) : super(key: key);

  @override
  State<calc> createState() => _calcState();
}

class _calcState extends State<calc> {
  var c="";
  num a=0;

  void calculation()
  {
    String op="";
    int i=0;
    int n=c.length;
    String num2="";
    String num1="";

    for(i;i<n;i++)
      {
        if(c[i]=="+"||c[i]=="-"||c[i]=="*"||c[i]=="/"||c[i]=="%")
          {
            op=c[i];
            num1=num2;
            num2="";

          }
        else
        {
          num2 = num2 + c[i];

        }
      }


    if(op=="+")
      {
        a =num.parse(num1)+num.parse(num2);
      }
    else if(op=="-")
    {
      a =num.parse(num1)-num.parse(num2);
    }
    else if(op=="*")
    {
      a =num.parse(num1)*num.parse(num2);
    }
    else if(op=="/")
    {
      a =num.parse(num1)/num.parse(num2);
    }
    else if(op=="%")
    {
      a =num.parse(num1)%num.parse(num2);
    }

    print(num1);
    print(op);
    print(num2);
    print(a);
    c="$a";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "Calculator",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w800),
          ),
        ),
        body: SingleChildScrollView(scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Card(elevation: 8,
                    child: Container(alignment: Alignment.bottomRight,
                      height: 230,
                      width: double.maxFinite,
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("$c",style: TextStyle(fontSize: 40),),
                      )
                    ),
                  ),
                ),
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  mainAxisSpacing: 2,
                  crossAxisSpacing: 2,
                  children: [
                    InkWell(onTap: () {
                      setState(() {
                        c="";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.black,
                        child:Center(
                          child: Text(
                              "C",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=(c+"%");
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.black,
                        child:Center(
                          child: Text(
                            "%",
                            style: TextStyle(
                                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c.substring(0,c.length-1);
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.black,
                        child: Icon(Icons.backspace_outlined,color: Colors.white,size: 27,),
                          ),
                    ),


                    InkWell(onTap: () {
                      setState(() {
                        c=c+"/";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.black,
                        child:Center(
                          child: Text(
                            "÷",
                            style: TextStyle(
                                color: Colors.white, fontSize: 45, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"7";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "7",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"8";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "8",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"9";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "9",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"*";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.black,
                        child: Icon(Icons.close,color: Colors.white,size: 27,),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"4";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "4",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"5";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "5",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"6";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "6",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"-";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.black,
                        child:Center(
                          child: Text(
                            "-",
                            style: TextStyle(
                                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"1";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"2";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"3";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"+";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.black,
                        child:Center(
                          child: Text(
                            "+",
                            style: TextStyle(
                                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"00";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "00",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+"0";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            "0",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        c=c+".";
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.white,
                        child:Center(
                          child: Text(
                            ".",
                            style: TextStyle(
                                color: Colors.black, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),

                    InkWell(onTap: () {
                      setState(() {
                        calculation();
                      });
                    },
                      child: Card(
                        elevation: 5,
                        color: Colors.black,
                        child:Center(
                          child: Text(
                            "=",
                            style: TextStyle(
                                color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
