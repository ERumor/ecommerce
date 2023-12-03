import '../workspaces_tab_container_screen/widgets/seventysix_item_widget.dart';
import 'bloc/workspaces_tab_container_bloc.dart';
import 'models/seventysix_item_model.dart';
import 'models/workspaces_tab_container_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/core/app_export.dart';
import 'package:ecommerce/presentation/workspaces_page/workspaces_page.dart';
import 'package:ecommerce/widgets/app_bar/appbar_leading_image.dart';
import 'package:ecommerce/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:ecommerce/widgets/app_bar/custom_app_bar.dart';
import 'package:ecommerce/widgets/custom_floating_button.dart';
import 'package:ecommerce/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WorkspacesTabContainerScreen extends StatefulWidget {
  const WorkspacesTabContainerScreen({super.key});

  @override
  WorkspacesTabContainerScreenState createState() =>
      WorkspacesTabContainerScreenState();

  static Widget builder(BuildContext context) {
    return BlocProvider<WorkspacesTabContainerBloc>(
        create: (context) => WorkspacesTabContainerBloc(
            WorkspacesTabContainerState(
                workspacesTabContainerModelObj: WorkspacesTabContainerModel()))
          ..add(WorkspacesTabContainerInitialEvent()),
        child: const WorkspacesTabContainerScreen());
  }
}

// ignore_for_file: must_be_immutable
class WorkspacesTabContainerScreenState
    extends State<WorkspacesTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.whiteA70001.withOpacity(1),
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SafeArea(
          child: Opacity(
            opacity: 0.9,
            child: Container(
              height: 817.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(top: 7.v),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  _whatYouDoSearch(context),
                  SizedBox(
                    width: double.maxFinite,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          _browseWorkspaces(context),
                          SizedBox(height: 11.v),
                          _browseWorkspacesType(context),
                          Expanded(
                            child: SizedBox(
                              height: 461.v,
                              child: TabBarView(
                                controller: tabviewController,
                                children: [
                                  WorkspacesPage.builder(context),
                                  WorkspacesPage.builder(context),
                                  WorkspacesPage.builder(context),
                                  WorkspacesPage.builder(context)
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: _buildFloatingActionButton(context));
  }

  /// APPBAR
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
          imagePath: ImageConstant.imgVuesaxLinearArrowLeft,
          margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 16.v),
          onTap: () {
            onTapBack(context);
          }),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "msg_explores_workspace".tr,
      ),
    );
  }

  /// WHAT DO U DO
  Widget _whatYouDoSearch(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.h),
            decoration: AppDecoration.fillWhiteA,
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              BlocSelector<WorkspacesTabContainerBloc,
                      WorkspacesTabContainerState, TextEditingController?>(
                  selector: (state) => state.vuesaxlinearsettingFourController,
                  builder: (context, vuesaxlinearsettingFourController) {
                    return CustomTextFormField(
                        controller: vuesaxlinearsettingFourController,
                        hintText: "lbl_what_do_you_do".tr,
                        textInputAction: TextInputAction.done,
                        suffix: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 15.v, 15.h, 15.v),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgVuesaxLinearSetting4,
                                height: 20.adaptSize,
                                width: 20.adaptSize)),
                        suffixConstraints: BoxConstraints(maxHeight: 50.v));
                  }),
              SizedBox(height: 24.v),
              SizedBox(
                  height: 201.v,
                  width: 366.h,
                  child: Stack(alignment: Alignment.topCenter, children: [
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                            height: 172.v,
                            width: 328.h,
                            decoration: BoxDecoration(
                                color: appTheme.black900.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(32.h)))),
                    Align(
                        alignment: Alignment.topCenter,
                        child: SizedBox(
                            height: 181.v,
                            width: 366.h,
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  BlocBuilder<WorkspacesTabContainerBloc,
                                          WorkspacesTabContainerState>(
                                      builder: (context, state) {
                                    return CarouselSlider.builder(
                                        options: CarouselOptions(
                                            height: 181.v,
                                            initialPage: 0,
                                            autoPlay: true,
                                            viewportFraction: 1.0,
                                            enableInfiniteScroll: false,
                                            scrollDirection: Axis.horizontal,
                                            onPageChanged: (index, reason) {
                                              state.sliderIndex = index;
                                            }),
                                        itemCount: state
                                                .workspacesTabContainerModelObj
                                                ?.seventysixItemList
                                                .length ??
                                            0,
                                        itemBuilder:
                                            (context, index, realIndex) {
                                          SeventysixItemModel model = state
                                                  .workspacesTabContainerModelObj
                                                  ?.seventysixItemList[index] ??
                                              SeventysixItemModel();
                                          return SeventysixItemWidget(model);
                                        });
                                  }),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: BlocBuilder<
                                              WorkspacesTabContainerBloc,
                                              WorkspacesTabContainerState>(
                                          builder: (context, state) {
                                        return Container(
                                            height: 7.v,
                                            margin:
                                                EdgeInsets.only(bottom: 10.v),
                                            child: AnimatedSmoothIndicator(
                                                activeIndex: state.sliderIndex,
                                                count: state
                                                        .workspacesTabContainerModelObj
                                                        ?.seventysixItemList
                                                        .length ??
                                                    0,
                                                axisDirection: Axis.horizontal,
                                                effect: ScrollingDotsEffect(
                                                    spacing: 4,
                                                    activeDotColor: theme
                                                        .colorScheme.primary,
                                                    dotColor: appTheme.gray300
                                                        .withOpacity(0.2),
                                                    dotHeight: 7.v,
                                                    dotWidth: 7.h)));
                                      }))
                                ])))
                  ]))
            ])));
  }

  /// BROWSE WORKSPACES
  Widget _browseWorkspaces(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("msg_browse_workspaces".tr,
                  style: theme.textTheme.titleLarge),
              const Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 4.v, bottom: 7.v),
                  child: Text("lbl_see_more".tr,
                      style: theme.textTheme.labelLarge)),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 8.h, top: 5.v, bottom: 7.v))
            ]));
  }

  /// Section Widget
  Widget _browseWorkspacesType(BuildContext context) {
    return SizedBox(
        height: 36.v,
        width: 390.h,
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.gray100,
            labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.black90001,
            unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w400),
            indicator: BoxDecoration(
                color: appTheme.black90001,
                borderRadius: BorderRadius.circular(18.h)),
            tabs: [
              Tab(child: Text("lbl_show_all".tr)),
              Tab(child: Text("lbl_developer".tr)),
              Tab(child: Text("lbl_podcast_creator".tr)),
              Tab(child: Text("lbl_filmaking".tr))
            ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton(BuildContext context) {
    return const CustomFloatingButton(
        height: 70, width: 70, child: Icon(Icons.add));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBack(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
