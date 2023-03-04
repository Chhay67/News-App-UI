import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_ui/models/article_model.dart';
import 'package:news_app_ui/screens/article_screen.dart';
import 'package:news_app_ui/widgets/custom_tag.dart';
import '../widgets/bottom_nav_bar.dart';
import '../widgets/image_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static const routeName = '/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: ListView(
        padding: EdgeInsets.zero,
        children: const [_NewOfTheDay(), _BreakingNew()],
      ),
      bottomNavigationBar: const BottomNavBar(index: 0),
    );
  }
}

class _BreakingNew extends StatelessWidget {
  const _BreakingNew({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20).h,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Breaking News',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text('More', style: Theme.of(context).textTheme.bodyLarge),
            ],
          ),
          SizedBox(height: 20.h),
          SizedBox(
            height: 250.h,
            child: ListView.builder(
              itemCount: ArticleModel.articles.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                var article = ArticleModel.articles[index];
                return Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: const EdgeInsets.only(right: 10).w,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(20).r,
                    onTap: (){
                      Navigator.of(context).pushNamed(ArticleScreen.routeName,arguments: article);
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ImageContainer(
                          borderBottomRadius: 20.r,
                          borderTopRadius: 20.r,
                          width: MediaQuery.of(context).size.width * 0.5,
                          imageUrl: article.imageUrl,
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          article.title,
                          maxLines: 2,
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .copyWith(fontWeight: FontWeight.bold,height: 1.5.h),
                        ),
                        SizedBox(height: 5.h),
                        Text(
                          '${DateTime.now().difference(article.createdAt).inHours} hours ago',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                        ),
                        Text(
                            'by ${article.author}',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall

                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class _NewOfTheDay extends StatelessWidget {
  const _NewOfTheDay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageContainer(
      borderBottomRadius: 20.r,
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
      height: ScreenUtil().screenHeight * 0.45,
      imageUrl: ArticleModel.articles[0].imageUrl,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTag(
            backgroundColor: Colors.grey.withAlpha(150),
            children: [
              Text(
                'New of the day',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            ArticleModel.articles[0].title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.bold,
                height: 1.25.h,
                color: Colors.white),
          ),
          TextButton(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(left: 5, right: 5).w),
              onPressed: () {},
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'learn more',
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(width: 10.w),
                  const Icon(Icons.arrow_right_alt, color: Colors.white)
                ],
              ))
        ],
      ),
    );
  }
}
