part of 'pages.dart';

class ChewieListItem extends StatefulWidget {

  final VideoPlayerController videoPlayerController;
  final bool looping;

  ChewieListItem({
    @required this.videoPlayerController,
    this.looping,
    Key key,
  }) : super(key: key);

  @override
  _ChewieListItemState createState() => _ChewieListItemState();
}

class _ChewieListItemState extends State<ChewieListItem> {

  ChewieController _chewieController;
  @override
  void initState(){
    super.initState();
    _chewieController = ChewieController(
      videoPlayerController: widget.videoPlayerController,
      aspectRatio: 16 / 9,
      autoInitialize: true,
      looping: widget.looping,
      errorBuilder: (context, errorMessage){
        return Center(
          child: Text(
            errorMessage, style: TextStyle(color: Colors.white)
          )
        );
      }
    );
  }

  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Chewie(
        controller: _chewieController
      )
    );
  }

  @override
  void dispose(){
    super.dispose();
    widget.videoPlayerController.dispose();
    _chewieController.dispose();
  }

}