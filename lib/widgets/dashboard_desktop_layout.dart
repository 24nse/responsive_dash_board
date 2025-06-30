import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expensess_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_cards_and_transction_history_section.dart';
import 'package:responsive_dash_board/widgets/my_cards_section.dart';


class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: 
                   Row(
                     children: [
                       Expanded(child: Padding(
                         padding: EdgeInsets.only(top: 40),
                         child: AllExpensessAndQuickInvoiceSection(),
                       )),
                             SizedBox(
                      width: 24,
                    ),
                     Expanded(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 40,
                        ),
                      MyCardsAndTransctionHistorySection(),
                      
                      ],
                    )),
                     ],
                   ),
                     
              
              ),
            ],
          
          ),
        ),
 
      ],
    );
  }
}
