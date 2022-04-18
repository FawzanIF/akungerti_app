part of 'pages.dart';

class ChoosePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text("Hai, "),
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  context.bloc<PageBloc>().add(
                                    GoToSaintekPage());
                },
                          child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        child: Image.asset("ipa.png"),
                      ),
                      Text("SAINTEK")
                    ],
                  ),
                ),
              ),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      child: Image.asset("ips.png"),
                    ),
                    Text("SAINTEK")
                  ],
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}