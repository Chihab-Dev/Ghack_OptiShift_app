import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ghack_app/domain/entities/client.dart';
import 'package:ghack_app/domain/entities/delivery_man.dart';
import 'package:ghack_app/domain/entities/delivery_request.dart';
import 'package:ghack_app/domain/entities/product.dart';
import 'package:ghack_app/presentation/components/appsize.dart';
import 'package:ghack_app/presentation/components/color_manager.dart';
import 'package:ghack_app/presentation/components/styles_manager.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> with TickerProviderStateMixin {
  // static data :
  List<DeliveryRequest> orders = [
    DeliveryRequest(
      deliveryId: '83742',
      deliveryRequestState: DeliveryRequestState.WAITING,
      product: Product(
        name: 'laptop',
        description: 'hsdlk fasldjfasd ;kasdjf',
        height: 20.0,
        width: 20.0,
        length: 20.0,
        weight: 20.0,
      ),
      client: Client(
        mapCoordinates: 'coordinates',
        name: 'Nabil',
        adress: 'kdka',
        phone: '0457832442',
        birthDay: DateTime.now(),
        email: 'chihab@gmai.com',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
      deliveryMan: DeliveryMan(
        mapCoordinates: 'mapCoordinates',
        name: 'Nabil',
        adress: 'adress',
        phone: '0239483',
        birthDay: DateTime.now(),
        email: 'email',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
    ),
    DeliveryRequest(
      deliveryId: '93743',
      deliveryRequestState: DeliveryRequestState.RETURNED,
      product: Product(
        name: 'laptop',
        description: 'hsdlk fasldjfasd ;kasdjf',
        height: 20.0,
        width: 20.0,
        length: 20.0,
        weight: 20.0,
      ),
      client: Client(
        mapCoordinates: 'coordinates',
        name: 'Ilyes',
        adress: 'kdka',
        phone: '0457832442',
        birthDay: DateTime.now(),
        email: 'chihab@gmai.com',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
      deliveryMan: DeliveryMan(
        mapCoordinates: 'mapCoordinates',
        name: 'Nabil',
        adress: 'adress',
        phone: '0239483',
        birthDay: DateTime.now(),
        email: 'email',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
    ),
    DeliveryRequest(
      deliveryId: '34785',
      deliveryRequestState: DeliveryRequestState.CHARGED,
      product: Product(
        name: 'laptop',
        description: 'hsdlk fasldjfasd ;kasdjf',
        height: 20.0,
        width: 20.0,
        length: 20.0,
        weight: 20.0,
      ),
      client: Client(
        mapCoordinates: 'coordinates',
        name: 'Meriem',
        adress: 'kdka',
        phone: '0457832442',
        birthDay: DateTime.now(),
        email: 'chihab@gmai.com',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
      deliveryMan: DeliveryMan(
        mapCoordinates: 'mapCoordinates',
        name: 'Nabil',
        adress: 'adress',
        phone: '0239483',
        birthDay: DateTime.now(),
        email: 'email',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
    ),
    DeliveryRequest(
      deliveryId: '88342',
      deliveryRequestState: DeliveryRequestState.DELIVERED,
      product: Product(
        name: 'laptop',
        description: 'hsdlk fasldjfasd ;kasdjf',
        height: 20.0,
        width: 20.0,
        length: 20.0,
        weight: 20.0,
      ),
      client: Client(
        mapCoordinates: 'coordinates',
        name: 'abdellah',
        adress: 'kdka',
        phone: '0457832442',
        birthDay: DateTime.now(),
        email: 'chihab@gmai.com',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
      deliveryMan: DeliveryMan(
        mapCoordinates: 'mapCoordinates',
        name: 'Nabil',
        adress: 'adress',
        phone: '0239483',
        birthDay: DateTime.now(),
        email: 'email',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
    ),
    DeliveryRequest(
      deliveryId: '63842',
      deliveryRequestState: DeliveryRequestState.ON_ITS_WAY,
      product: Product(
        name: 'laptop',
        description: 'hsdlk fasldjfasd ;kasdjf',
        height: 20.0,
        width: 20.0,
        length: 20.0,
        weight: 20.0,
      ),
      client: Client(
        mapCoordinates: 'coordinates',
        name: 'Chihab',
        adress: 'kdka',
        phone: '0457832442',
        birthDay: DateTime.now(),
        email: 'chihab@gmai.com',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
      deliveryMan: DeliveryMan(
        mapCoordinates: 'mapCoordinates',
        name: 'Nabil',
        adress: 'adress',
        phone: '0239483',
        birthDay: DateTime.now(),
        email: 'email',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
    ),
    DeliveryRequest(
      deliveryId: '63842',
      deliveryRequestState: DeliveryRequestState.ACCEPTED,
      product: Product(
        name: 'laptop',
        description: 'hsdlk fasldjfasd ;kasdjf',
        height: 20.0,
        width: 20.0,
        length: 20.0,
        weight: 20.0,
      ),
      client: Client(
        mapCoordinates: 'coordinates',
        name: 'Kamel',
        adress: 'kdka',
        phone: '0457832442',
        birthDay: DateTime.now(),
        email: 'chihab@gmai.com',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
      deliveryMan: DeliveryMan(
        mapCoordinates: 'mapCoordinates',
        name: 'Nabil',
        adress: 'adress',
        phone: '0239483',
        birthDay: DateTime.now(),
        email: 'email',
        password: 'password',
        image: 'image',
        identifyCard: 'identifyCard',
        feedbackList: [],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 7, vsync: this);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeInLeft(
          child: Text(
            'Orders',
            style: getlargeStyle(color: ColorManager.dark).copyWith(fontSize: 40),
          ),
        ),
        FadeInLeft(
          child: Text(
            '8 orders found',
            style: getMeduimStyle(color: ColorManager.darkGrey),
          ),
        ),
        const SizedBox(height: AppPadding.p25),
        CupertinoSearchTextField(
          prefixIcon: const Icon(
            Icons.search,
          ),
          suffixIcon: Icon(
            Icons.cancel_outlined,
            color: ColorManager.red,
          ),
          itemSize: AppPadding.p30,
          padding: const EdgeInsets.all(12),
        ),
        TabBar(
          controller: tabController,
          isScrollable: true,
          automaticIndicatorColorAdjustment: true,
          tabs: [
            Tab(
              child: Text(
                'All Orders',
                style: getMeduimStyle(color: ColorManager.dark),
              ),
            ),
            Tab(
              child: Text(
                'Waiting',
                style: getMeduimStyle(color: ColorManager.dark),
              ),
            ),
            Tab(
              child: Text(
                'Accepted',
                style: getMeduimStyle(color: ColorManager.dark),
              ),
            ),
            Tab(
              child: Text(
                'Delivered',
                style: getMeduimStyle(color: ColorManager.dark),
              ),
            ),
            Tab(
              child: Text(
                "ON IT'S WAY",
                style: getMeduimStyle(color: ColorManager.dark),
              ),
            ),
            Tab(
              child: Text(
                "Charged",
                style: getMeduimStyle(color: ColorManager.dark),
              ),
            ),
            Tab(
              child: Text(
                "Returned",
                style: getMeduimStyle(color: ColorManager.dark),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(AppPadding.p10),
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s10),
              color: ColorManager.darkYellow,
              // border: Border.all(
              //   color: ColorManager.lightGrey,
              //   width: 1.0,
              // ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'ID',
                    style: getMeduimStyle(color: ColorManager.darkYellow2),
                  ),
                  Text(
                    'NAME',
                    style: getMeduimStyle(color: ColorManager.darkYellow2),
                  ),
                  Text(
                    'State',
                    style: getMeduimStyle(color: ColorManager.darkYellow2),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: tabController,
            children: [
              OrdersListView(orders: orders + orders),
              OrdersListView(orders: getOrdersByState(orders, DeliveryRequestState.WAITING)),
              OrdersListView(orders: getOrdersByState(orders, DeliveryRequestState.ACCEPTED)),
              OrdersListView(orders: getOrdersByState(orders, DeliveryRequestState.DELIVERED)),
              OrdersListView(orders: getOrdersByState(orders, DeliveryRequestState.ON_ITS_WAY)),
              OrdersListView(orders: getOrdersByState(orders, DeliveryRequestState.CHARGED)),
              OrdersListView(orders: getOrdersByState(orders, DeliveryRequestState.RETURNED)),
            ],
          ),
        ),
      ],
    );
  }
}

class OrdersListView extends StatelessWidget {
  const OrdersListView({
    super.key,
    required this.orders,
  });

  final List<DeliveryRequest> orders;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: orders.length,
      itemBuilder: (context, index) {
        var order = orders[index];
        return Padding(
          padding: const EdgeInsets.all(AppPadding.p10),
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(AppSize.s10),
              border: Border.all(
                color: ColorManager.lightGrey,
                width: 1.0,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    order.deliveryId,
                    style: getMeduimStyle(color: ColorManager.dark),
                  ),
                  Text(
                    order.client.name,
                    style: getMeduimStyle(color: ColorManager.dark),
                  ),
                  deliveryRequestStateToString(order.deliveryRequestState),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

List<DeliveryRequest> getOrdersByState(List<DeliveryRequest> orders, DeliveryRequestState state) {
  return orders.where((order) => order.deliveryRequestState == state).toList();
}

Text deliveryRequestStateToString(DeliveryRequestState state) {
  switch (state) {
    case DeliveryRequestState.WAITING:
      return Text(
        'WAITING',
        textAlign: TextAlign.left,
        style: getMeduimStyle(color: ColorManager.yellow),
      );
    case DeliveryRequestState.ACCEPTED:
      return Text(
        'ACCEPTED',
        textAlign: TextAlign.left,
        style: getMeduimStyle(color: ColorManager.green),
      );

    case DeliveryRequestState.CHARGED:
      return Text(
        'CHARGED',
        textAlign: TextAlign.left,
        style: getMeduimStyle(color: ColorManager.dark),
      );

    case DeliveryRequestState.ON_ITS_WAY:
      return Text(
        'ON ITS WAY',
        textAlign: TextAlign.left,
        style: getMeduimStyle(color: ColorManager.blue),
      );

    case DeliveryRequestState.DELIVERED:
      return Text(
        'DELIVERED',
        textAlign: TextAlign.left,
        style: getMeduimStyle(color: ColorManager.green),
      );

    case DeliveryRequestState.RETURNED:
      return Text(
        'RETURNED',
        textAlign: TextAlign.left,
        style: getMeduimStyle(color: ColorManager.red),
      );

    default:
      return Text(
        'WAITING',
        textAlign: TextAlign.left,
        style: getMeduimStyle(color: ColorManager.dark),
      );
    // You can set the color as needed
  }
}
