# Flutter Animation

1) Animasi membuat aplikasi terlihat lebih hidup, widget yang dibangun akan dapat bergerak dari kondisi a ke kondisi b
contoh : 
    
        AnimatedContaoiner (
        width : isBig? 200: 100,
        height : isBig? 200: 100,
        color: Colors.red,
        duration: const Duration(millseconds: 300)
        )

2) Transisi merupakan perpindahan halaman yang terjadi pada sebuah animasi yang dapat dilakukan pada bagian Navigator.push
contoh :

        RouteGenerator {
        static Route< dynamic > generateRoute(RouteSettings settings) {
        switch (settings.name) {
        case '/':
        return MaterialPageRoute(builder: (_) => HomePage());
        case '/about':
        return MaterialPageRoute(builder: (_) => AboutPage());(args));
        default:
        return _errorRoute();
            }
        }

3) Transisi yang umum digunkana :
    a) Fade transition : Halaman muncul dengan efek redup menuju ke tampak jelas secara penuh

    
    contoh :
    
        FadeTransition(
        opacity: _animation,
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text("Flutter Dev's",style: TextStyle(
                fontSize: 20,
                 fontWeight: FontWeight.bold),
                ),
                Image.asset("assets/devs.jpg"),
                ],
            ),
        ),


   b) Scale Transition : Halaman muncul dengan efek berubah ukuran dari tidak penuh menuju tampil keseluruhan,

   contoh :

        ScaleTransition(
        scale: _animation,
            alignment: Alignment.center,
                child: Center(
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Image.asset("assets/logo.png",height: 150,),
                    ],    
                    ),
                 ),
             ),
