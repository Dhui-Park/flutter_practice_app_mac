import 'package:flutter/material.dart';
import 'package:flutter_practice/constants/gaps.dart';
import 'package:flutter_practice/constants/sizes.dart';
import 'package:flutter_practice/features/settings/settings_screen.dart';
import 'package:flutter_practice/features/users/widgets/persistent_tab_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'widgets/user_account.dart';

class UserProfileScreen extends StatefulWidget {
  final String username;
  const UserProfileScreen({
    super.key,
    required this.username,
  });

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  void _onGearPressed() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const SettingsScreen(),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                title: Text(widget.username),
                actions: [
                  IconButton(
                    onPressed: _onGearPressed,
                    icon: const FaIcon(
                      FontAwesomeIcons.gear,
                      size: Sizes.size20,
                    ),
                  ),
                ],
              ),
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      child: Text('nico'),
                    ),
                    Gaps.v20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '@${widget.username}',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Sizes.size18,
                          ),
                        ),
                        Gaps.h5,
                        FaIcon(
                          FontAwesomeIcons.solidCircleCheck,
                          color: Colors.blue.shade500,
                          size: Sizes.size16,
                        ),
                      ],
                    ),
                    Gaps.v24,
                    SizedBox(
                      height: Sizes.size48,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const UserAccount(
                            numbers: "97",
                            text: "Following",
                          ),
                          VerticalDivider(
                            width: Sizes.size32,
                            thickness: Sizes.size1,
                            color: Colors.grey.shade400,
                            indent: Sizes.size14,
                            endIndent: Sizes.size14,
                          ),
                          const UserAccount(
                            numbers: "102M",
                            text: "Followers",
                          ),
                          VerticalDivider(
                            width: Sizes.size32,
                            thickness: Sizes.size1,
                            color: Colors.grey.shade400,
                            indent: Sizes.size14,
                            endIndent: Sizes.size14,
                          ),
                          const UserAccount(
                            numbers: "194.3M",
                            text: "Likes",
                          ),
                        ],
                      ),
                    ),
                    Gaps.v14,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: Sizes.size16,
                            horizontal: Sizes.size56,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                Sizes.size4,
                              ),
                            ),
                          ),
                          child: const Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Gaps.h3,
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: Sizes.size12,
                            horizontal: Sizes.size14,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade400,
                            ),
                            borderRadius: BorderRadius.circular(Sizes.size4),
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.youtube,
                            color: Colors.red,
                          ),
                        ),
                        Gaps.h3,
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: Sizes.size14,
                            horizontal: Sizes.size16,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.grey.shade400,
                            ),
                            borderRadius: BorderRadius.circular(Sizes.size4),
                          ),
                          child: const FaIcon(
                            FontAwesomeIcons.chevronDown,
                            size: Sizes.size20,
                          ),
                        ),
                      ],
                    ),
                    Gaps.v14,
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Sizes.size32,
                      ),
                      child: Text(
                        'All Yoga Sequences are here.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Gaps.v14,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        FaIcon(
                          FontAwesomeIcons.link,
                          size: Sizes.size12,
                        ),
                        Gaps.h4,
                        Text(
                          'https://yogasequence.co',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Gaps.v5,
                  ],
                ),
              ),
              SliverPersistentHeader(
                delegate: PersistentTabBar(),
                pinned: true,
              ),
            ];
          },
          body: TabBarView(
            children: [
              GridView.builder(
                keyboardDismissBehavior:
                    ScrollViewKeyboardDismissBehavior.onDrag,
                itemCount: 20,
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: Sizes.size2,
                  mainAxisSpacing: Sizes.size2,
                  childAspectRatio: 9 / 16.8,
                ),
                itemBuilder: (context, index) => Stack(
                  children: [
                    Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 9 / 16,
                          child: FadeInImage.assetNetwork(
                            fit: BoxFit.cover,
                            placeholder: "assets/images/placeholder.jpeg",
                            image:
                                "https://images.chosun.com/resizer/Oudh-eihlSpSDf_eMvSzzMpNRhg=/464x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/VINMKQBFWUJEPQSZFB76BX3P4Q.jpg",
                          ),
                        ),
                        Gaps.v10,
                      ],
                    ),
                    Positioned(
                      left: Sizes.size10,
                      bottom: Sizes.size20,
                      child: Row(
                        children: [
                          const FaIcon(
                            FontAwesomeIcons.play,
                            color: Colors.white,
                            size: Sizes.size20,
                          ),
                          Gaps.h10,
                          Text(
                            index % 2 == 0 ? '4.1M' : '29.6K',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: Sizes.size14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Center(
                child: Text('Page two'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
