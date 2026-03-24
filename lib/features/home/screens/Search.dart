import 'package:flutter/material.dart';
import 'package:trendify/core/constants/app_constants.dart';
import 'package:trendify/core/constants/icon_constrans.dart';
import 'package:trendify/core/theme/app_colors.dart';
import 'package:trendify/core/theme/app_text_styles.dart';
import 'package:trendify/features/home/screens/ScanningPhotoCamera.dart';
import 'package:trendify/features/home/widgets/ResentSearches.dart';
import 'package:trendify/features/home/widgets/TrendsNotFound.dart';

import '../widgets/SearchProduct.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _focusNode = FocusNode();
  Widget _State = ResentSearch();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _focusNode.requestFocus(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            SizedBox(height: 12),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
              child: Row(
                children: [
                  GestureDetector(
                    child: Icon(Icons.arrow_back),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Container(
                      height: 65,
                      decoration: BoxDecoration(
                        color: AppColors.grey300,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Image.asset(
                              IconConstrans.search,
                              color: AppColors.textPrimary,
                            ),
                            suffixIcon: GestureDetector(
                              child: Image.asset(
                                IconConstrans.camera,
                                color: AppColors.textPrimary,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ScanningPhotoCamera(),
                                  ),
                                );
                              },
                            ),
                            hintText: AppConstants.searchTrends,
                            hintStyle: AppTextStyles.inputHint,
                          ),
                          style: AppTextStyles.inputTitle,
                          focusNode: _focusNode,
                          onChanged: (text) {
                            setState(() {
                              text.isEmpty
                                  ? _State = ResentSearch()
                                  : isProduct(text, text, 0, 999999)
                                  ? _State = SearchProduct(
                                      categoryName: text,
                                      productName: text,
                                    )
                                  : _State = TrendsNotFound();
                            });
                          },
                          textAlignVertical: TextAlignVertical.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                child: _State,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
