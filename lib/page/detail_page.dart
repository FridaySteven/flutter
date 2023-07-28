import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_demo_app/models/home_model.dart';
import 'package:my_demo_app/provider/detail_page_provider.dart';
import 'package:my_demo_app/provider/reminder_share_widget_provider.dart';
import 'package:my_demo_app/widget/creation_aware_item.dart';
import 'package:my_demo_app/widget/reminder_share_widget.dart';
import 'package:provider/provider.dart';

import '../route/route_name.dart' as route_name;

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.home});

  final Home home;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<DetailPageProvider>(context, listen: false).initState();
  }

  @override
  void dispose() {
    super.dispose();

    Provider.of<DetailPageProvider>(context, listen: false).dispose();
  }

  @override
  Widget build(BuildContext context) {
    final widthS = MediaQuery.of(context).size.width;
    final heightS = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.home.title ?? 'Detail Page',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: CustomScrollView(
            slivers: [
              _headerCard(context),
              _description(),
              _relatedContentDivider(),
              _relatedContent(heightS),
            ],
          ),
        ));
  }

  SliverToBoxAdapter _relatedContentDivider() {
    return SliverToBoxAdapter(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Divider(
          height: 2,
          color: Colors.black87,
        ),
        SizedBox(height: 10),
        Text(
          'Related Content ',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
      ],
    ));
  }

  Consumer2<DetailPageProvider, ReminderShareWidgetProvider> _relatedContent(
      double heightS) {
    return Consumer2<DetailPageProvider, ReminderShareWidgetProvider>(
        builder: (context, provider, provider2, _) {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) => CreationAwareItem(
            itemCreated: () {
              SchedulerBinding.instance.scheduleFrameCallback((timeStamp) {
                provider.handleItemCreated(index);
              });
            },
            childBuilder: () => index < provider.detailDataList.length
                ? _itemCard(context, provider, index, heightS, provider2)
                : provider.isLoadMore
                    ? const SizedBox(
                        height: 50,
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : const SizedBox(
                        height: 50,
                        child: Center(child: Text('-- End of list --')),
                      ),
          ),
          childCount: provider.detailDataList.length + 1,
        ),
      );
    });
  }

  InkWell _itemCard(BuildContext context, DetailPageProvider provider,
      int index, double heightS, ReminderShareWidgetProvider provider2) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route_name.detailPage,
            arguments: provider.detailDataList[index]);
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
                  provider.detailDataList[index].title!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                subtitle: Text(
                  provider.detailDataList[index].subTitle!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: ReminderShareWidget(
                  home: provider.detailDataList[index],
                  providerRemin: provider2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SliverToBoxAdapter _description() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text('data'),
              ],
            ),
            const Text(
              'Description: ',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              widget.home.subTitle!,
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _headerCard(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.2,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              Colors.greenAccent,
              Colors.white10,
              Colors.black54,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Text(
                      widget.home.title ?? 'title',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
              Positioned(
                right: 0,
                child: Consumer<ReminderShareWidgetProvider>(
                    builder: (context, provider, _) {
                  return ReminderShareWidget(
                    home: widget.home,
                    providerRemin: provider,
                  );
                }),
              ),
              Positioned(
                left: 0,
                bottom: 0,
                child: Consumer<ReminderShareWidgetProvider>(
                    builder: (context, provider, _) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        '0979  0763  7383  8383',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                      Consumer<DetailPageProvider>(
                          builder: (context, provider, _) {
                        return Text(
                          provider.dateTimeNow,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        );
                      }),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
