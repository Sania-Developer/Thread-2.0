import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_thread/util/colors.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({Key? key}) : super(key: key);

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> _tabs = ['All', 'Replies', 'Mention', 'Verified'];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Activity',
                  style: GoogleFonts.roboto(
                      fontSize: 32,
                      color: AppColor.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: AppColor.white,
                  ),
                  labelColor: AppColor.black,
                  unselectedLabelColor: AppColor.white,
                  labelStyle: GoogleFonts.roboto(
                    fontSize: 18,
                    color: AppColor.greyshade600,
                    fontWeight: FontWeight.bold,
                  ),
                  isScrollable: true,
                  indicatorWeight: 0.2,
                  indicatorSize: TabBarIndicatorSize.label,
                  dividerColor: Colors.transparent,
                  tabs: _tabs.map((String tab) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.32,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(color: AppColor.greyshade800),
                      ),
                      child: Tab(
                        child:
                            Align(alignment: Alignment.center, child: Text(tab)),
                      ),
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: _tabs.map((String tab) {
                    return Center(
                      child: Text(
                        'Nothing to see here yet',
                        style: GoogleFonts.roboto(
                            fontSize: 16,
                            color: AppColor.greyshade600,
                            fontWeight: FontWeight.w400),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
