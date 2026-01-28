import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:redplus_ft/app/common/common.dart';

import '../../../app/config/config.dart';
import '../../../domain/model/banner.dart';
import 'widgets/latest_news.dart';

class PostDetailScreen extends StatefulWidget {
  final String routerPath;
  final BannerModel banner;

  const PostDetailScreen({
    super.key,
    required this.banner,
    required this.routerPath,
  });

  @override
  State<PostDetailScreen> createState() => _PostDetailScreenState();
}

class _PostDetailScreenState extends State<PostDetailScreen> {
  late ScrollController _scrollController;
  Color _textColor = Colors.white;
  static const kExpandedHeight = 200.0;

  @override
  void initState() {
    super.initState();

    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _textColor = _isSliverAppBarExpanded ? Colors.white : Colors.black;
        });
      });
  }

  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > kExpandedHeight - kToolbarHeight;
  }

  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.white, child: _bodyWidget());
  }

  _bodyWidget() {
    return NestedScrollView(
      controller: _scrollController,
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            title: _isSliverAppBarExpanded
                ? Text(widget.banner.title, style: TextStyle(color: _textColor))
                : null,
            leading: GestureDetector(
              onTap: () {
                popUntilPath(context, widget.routerPath);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: _isSliverAppBarExpanded
                      ? AppColor.primary.withAlpha(150)
                      : Colors.black45,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon(Icons.chevron_left, color: Colors.white, size: 40),
              ),
            ),
            // actions: [Icon(Icons.access_alarm_rounded)],
            floating: true,
            pinned: true,
            backgroundColor: AppColor.primary,
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
            toolbarTextStyle: TextStyle(color: Colors.white, fontSize: 22),
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: widget.banner.imageUrl,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
        ];
      },
      body: SingleChildScrollView(
        child: Column(
          spacing: NumberConstant.basePaddingLarge,
          children: [
            Padding(
              padding: const EdgeInsets.all(NumberConstant.basePaddingLarge),
              child: Text(
                widget.banner.title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  decorationColor: Colors.white,
                  fontWeight: FontWeight.bold,
                  wordSpacing: 4,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: NumberConstant.basePaddingLarge,
              ),
              child: Text(
                widget.banner.content,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  decorationColor: Colors.white,
                  fontWeight: FontWeight.w400,
                  wordSpacing: 4,
                ),
              ),
            ),
            LatestNews(routerPath: widget.routerPath,),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
