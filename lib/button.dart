import 'package:flutter/material.dart';

class myButton extends StatefulWidget {
  const myButton({super.key});

  @override
  State<myButton> createState() => _myButtonState();
}

class _myButtonState extends State<myButton> {
int pindah = 0 ;
tengah(){
  setState(() {
    pindah += 1;
  });
  

}
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Press"),
        
      ),
      body: Column(
        mainAxisAlignment:
            pindah == 0 ? MainAxisAlignment.start : pindah == 1?MainAxisAlignment.center: MainAxisAlignment.end,
        crossAxisAlignment:
            pindah == 0 ? CrossAxisAlignment.start :  pindah == 1? CrossAxisAlignment.center : CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: pindah == 0
                ? MainAxisAlignment.start
                : pindah == 1
                    ? MainAxisAlignment.center
                    : MainAxisAlignment.end,
            crossAxisAlignment: pindah == 0
                ? CrossAxisAlignment.start
                : pindah == 1
                    ? CrossAxisAlignment.center
                    : CrossAxisAlignment.end,
            children: [
            ElevatedButton(onPressed: (){
              setState(() {
                if(pindah > 2){
                  pindah = 0;
                }else{
                  pindah += 1;
                }
                pindah += 1;
              });
            }
            , child: Text("press"))
          ],)
        ],
      ),
    );
  }
}