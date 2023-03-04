import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui/models/article_model.dart';
import 'package:news_app_ui/screens/article_screen.dart';
import 'package:news_app_ui/widgets/image_container.dart';

import '../widgets/bottom_nav_bar.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({Key? key}) : super(key: key);
  static const routeName = '/discover';

  @override
  Widget build(BuildContext context) {
    List<String> tabs = ['Health', 'Food', 'Science', 'Art'];
    return DefaultTabController(
      length: tabs.length,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(vertical: 20.w, horizontal: 20.h),
          children: [const _DiscoverNews(), _CategoryNews(tabs: tabs)],
        ),
        bottomNavigationBar: const BottomNavBar(index: 1),
      ),
    );
  }
}

class _CategoryNews extends StatelessWidget {
  final List<String> tabs;
  const _CategoryNews({
    required this.tabs,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
            isScrollable: true,
            indicatorColor: Colors.black,
            tabs: tabs.map((tab) => Tab(
                      icon: Text(
                        tab,
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ))
                .toList()),
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
            children: tabs.map(
              (tab) {
                var article = ArticleModel.articles;
                return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: article.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          ArticleScreen.routeName,
                          arguments: article[index],
                        );
                      },
                      child: Row(
                        children: [
                          ImageContainer(
                            width: 80.w,
                            height: 80.h,
                            imageUrl: article[index].imageUrl,
                            borderTopRadius: 5.r,
                            borderBottomRadius: 5.r,
                            margin: EdgeInsets.symmetric(
                                vertical: 10.h, horizontal: 10.w),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  article[index].title,
                                  maxLines: 2,
                                  overflow: TextOverflow.clip,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 10.h),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.schedule,
                                      size: 18.sp,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 5.w),
                                    Text(
                                      '${DateTime.now().difference(article[index].createdAt).inHours} hours ago',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(fontSize: 12.sp),
                                    ),
                                    SizedBox(width: 5.w),
                                    Icon(
                                      Icons.visibility,
                                      size: 18.sp,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: 5.w),
                                    Text('${article[index].views} views',
                                        style: TextStyle(fontSize: 12.sp))
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ).toList(),
          ),
        )
      ],
    );
  }
}

class _DiscoverNews extends StatelessWidget {
  const _DiscoverNews({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Discover',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
          ),
          SizedBox(height: 5.h),
          Text(
            'New from over the world',
            style: Theme.of(context).textTheme.bodySmall,
          ),
          SizedBox(height: 20.h),
          TextFormField(
            decoration: InputDecoration(
                hintText: 'search',
                fillColor: Colors.grey.shade200,
                filled: true,
                prefixIcon: const Icon(Icons.search),
                suffixIcon:
                    const RotatedBox(quarterTurns: 1, child: Icon(Icons.tune)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20).r,
                    borderSide: BorderSide.none)),
          )
        ],
      ),
    );
  }
}
