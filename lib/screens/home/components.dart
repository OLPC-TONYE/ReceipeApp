class ReceipeButton extends StatelessWidget {
  const ReceipeButton({
    Key key,
    this.receipeName,
  }) : super(key: key);

  final String receipeName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width * 0.85,
      height: MediaQuery.of(context).size.height * 0.285,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/receipeapp-4dd90.appspot.com/o/assets%2Fimages%2Fff47aa505d388c4436579121b38e32ab.jpg?alt=media&token=9836f6d0-a551-4dfc-a153-4b98b9ea955b"),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 0),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: ClipRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                right: 10,
                bottom: 10,
                child: Text(
                  receipeName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
