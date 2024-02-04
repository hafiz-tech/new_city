import '../utils/app_layout.dart';
import '../utils/dependencies.dart';

class LatestDailyActivitiesWidget extends StatelessWidget {
  const LatestDailyActivitiesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.25,
      height: 375,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Latest Daily Activities",
                style: TextStyle(
                    fontFamily: 'Quicksand-SemiBold',
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    /*Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child:
                      const Image(image: AssetImage('assets/images/img_3.png')),
                    ),*/
                    Icon(Icons.done_rounded, size: 30, color: Colors.green),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bill Payment",
                          style: TextStyle(
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          "Electercity Bill Paid",
                          style: TextStyle(
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    /*Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child:
                      const Image(image: AssetImage('assets/images/img_3.png')),
                    ),*/
                    Icon(Icons.done_rounded, size: 30, color: Colors.green),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bill Payment",
                          style: TextStyle(
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          "Electercity Bill Paid",
                          style: TextStyle(
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    /*Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child:
                      const Image(image: AssetImage('assets/images/img_3.png')),
                    ),*/
                    Icon(Icons.done_rounded, size: 30, color: Colors.green),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bill Payment",
                          style: TextStyle(
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          "Electercity Bill Paid",
                          style: TextStyle(
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    /*Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child:
                      const Image(image: AssetImage('assets/images/img_3.png')),
                    ),*/
                    Icon(Icons.done_rounded, size: 30, color: Colors.green),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bill Payment",
                          style: TextStyle(
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          "Electercity Bill Paid",
                          style: TextStyle(
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  children: [
                    /*Container(
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child:
                      const Image(image: AssetImage('assets/images/img_3.png')),
                    ),*/
                    Icon(Icons.done_rounded, size: 30, color: Colors.green),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Bill Payment",
                          style: TextStyle(
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.black),
                        ),
                        Text(
                          "Electercity Bill Paid",
                          style: TextStyle(
                              fontFamily: 'Quicksand-Regular',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
