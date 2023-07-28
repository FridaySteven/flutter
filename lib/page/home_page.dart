import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_demo_app/provider/home_page_provider.dart';
import 'package:my_demo_app/provider/reminder_share_widget_provider.dart';
import 'package:my_demo_app/widget/creation_aware_item.dart';
import 'package:my_demo_app/widget/main_drawer.dart';
import 'package:provider/provider.dart';
import '../route/route_name.dart' as route_name;

import '../widget/reminder_share_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Provider.of<HomePageProvider>(context, listen: false).initState();
  }

  @override
  Widget build(BuildContext context) {
    final widthS = MediaQuery.of(context).size.width;
    final heightS = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text('My Home')),
      drawer: const MainDrawer(),
      body: Consumer2<HomePageProvider, ReminderShareWidgetProvider>(
          builder: (context, provider, provider2, _) {
        return RefreshIndicator(
          onRefresh: provider.onRefresh,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: CustomScrollView(
              slivers: [
                horizontalHeaderContent(heightS, widthS, provider2),
                _mainContent(provider, heightS, provider2),
              ],
            ),
          ),
        );
      }),
    );
  }

  SliverList _mainContent(HomePageProvider provider, double heightS,
      ReminderShareWidgetProvider provider2) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return CreationAwareItem(
              itemCreated: () {
                SchedulerBinding.instance.scheduleFrameCallback((timeStamp) {
                  provider.handleItemCreated(index);
                });
              },
              childBuilder: () => index < provider.homeDataList.length
                  ? _itemCard(context, provider, index, heightS, provider2)
                  : provider.isLoadMore
                      ? const SizedBox(
                          height: 50,
                          child: Center(child: CircularProgressIndicator()),
                        )
                      : const SizedBox(
                          height: 50,
                          child: Center(child: Text('-- End of list --')),
                        ));
        },
        childCount: provider.homeDataList.length + 1,
      ),
    );
  }

  SliverToBoxAdapter horizontalHeaderContent(
      double heightS, double widthS, ReminderShareWidgetProvider provider2) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: SizedBox(
          height: heightS * 0.15,
          child: ListView.builder(
            padding: const EdgeInsets.all(0),
            controller: ScrollController(),
            scrollDirection: Axis.horizontal,
            itemCount: provider2.reminderList.length,
            shrinkWrap: true,
            itemBuilder: ((context, index) => provider2
                        .reminderList[index].isSetRemider ??
                    false
                ? InkWell(
                    onTap: () => Navigator.pushNamed(
                        context, route_name.detailPage,
                        arguments: provider2.reminderList[index]),
                    child: Badge(
                      badgeStyle: const BadgeStyle(padding: EdgeInsets.all(0)),
                      badgeContent: SizedBox(
                        width: 30,
                        height: 30,
                        child: ReminderShareWidget(
                          home: provider2.reminderList[index],
                          providerRemin: provider2,
                          iconSize: 15,
                        ),
                      ),
                      position: BadgePosition.bottomEnd(bottom: 30, end: 10),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 15),
                        child: Column(
                          children: [
                            SizedBox(
                              width: widthS * 0.2,
                              height: heightS * 0.12,
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                  index.isEven
                                      ? 'https://loremflickr.com/320/240'
                                      : 'https://picsum.photos/200',
                                ),
                              ),
                            ),
                            SizedBox(
                              width: widthS * 0.2,
                              child: Text(
                                provider2.reminderList[index].title!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : const SizedBox()),
          ),
        ),
      ),
    );
  }

  InkWell _itemCard(BuildContext context, HomePageProvider provider, int index,
      double heightS, ReminderShareWidgetProvider provider2) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route_name.detailPage,
            arguments: provider.homeDataList[index]);
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                height: heightS * 0.3,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          index.isEven
                              ? 'https://loremflickr.com/g/320/240/paris'
                              : 'https://loremflickr.com/320/240/dog',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20)),
              ),
              const SizedBox(height: 10),
              ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  provider.homeDataList[index].title!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  provider.homeDataList[index].subTitle!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: ReminderShareWidget(
                  home: provider.homeDataList[index],
                  providerRemin: provider2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
