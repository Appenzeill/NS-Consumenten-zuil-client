class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color(0xFFF0A714),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.
            center,
            children: [
              SizedBox(height: 80,),
              Image.asset(
                'images/ns_logo.png',
                height: 100,
                width: 150,
              ),
              Text('NSZL',
                style: TextStyle(
                  color: Color(0xFF000066),
                  fontSize: 20,  
                ),
              ),
              SizedBox(height: 30,),
              Container(
                //width: MediaQuery.of(context).size.width * 0.8,
                //height: MediaQuery.of(context).size.height * 0.6,
                
                constraints: BoxConstraints(minWidth: 350, maxWidth: 1000),
                padding: EdgeInsets.all(10),
                    
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height:30,),
                    Text(
                      'Menu',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Email',
                          suffixIcon: Icon(FontAwesomeIcons.envelope,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: 'Wachtwoord',
                          suffixIcon: Icon(FontAwesomeIcons.key,
                            size: 17,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:40,),
                    GestureDetector(
                      child: Container(
                        alignment: Alignment.center,
                        width: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color(0xFF000066),                              
                              Color(0xFF000066),
                            ]
                          )
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: Text('login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 80,),
                    RaisedButton(
                      child: Text('Gebruikers Paneel'),  
                      textColor: Colors.white, 
                      color: Color(0xFF000066),
                      onPressed: () {  
                        Navigator.push(  
                          context,  
                          MaterialPageRoute(builder: (context) => Review()),  
                        );                     
                      },   
                    ),
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
