import 'package:demo_task/models/user_results_model.dart';
import 'package:demo_task/pages/home/single_user_widget.dart';
import 'package:demo_task/providers/user_provider.dart';
import 'package:demo_task/utils/palettes.dart';
import 'package:demo_task/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

class UserListWidget extends ConsumerStatefulWidget {
  final int tabIndex;

  const UserListWidget({super.key, required this.tabIndex});

  @override
  ConsumerState<UserListWidget> createState() => _UserListWidgetState();
}

class _UserListWidgetState extends ConsumerState<UserListWidget> {
  final tcSearch = TextEditingController();

  int minAge = 0, maxAge = 35;

  final PagingController<int, Result> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    super.initState();

    if (widget.tabIndex == 0) {
      minAge = 0;
      maxAge = 35;
    } else {
      minAge = 35;
      maxAge = 99;
    }

    _pagingController.addPageRequestListener((page) {
      getUsers(page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchTextField(
          onChanged: (value) => onSearchInputChange(value),
          onSearch: () => onSearchClick(),
          tcSearch: tcSearch,
        ),
        Expanded(child: _infiniteListView()),
      ],
    );
  }

  Widget _infiniteListView() {
    return PagedListView.separated(
      pagingController: _pagingController,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      separatorBuilder: (_, index) => const SizedBox(height: 16),
      builderDelegate: PagedChildBuilderDelegate<Result>(
        firstPageProgressIndicatorBuilder: (_) {
          return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Palettes.colorPrimary),
            ),
          );
        },
        noItemsFoundIndicatorBuilder: (_) {
          return const SizedBox();
        },
        itemBuilder: (context, user, index) =>
            SingleUserWidget(userResult: user),
      ),
    );
  }

  void getUsers(int page) async {
    final provider = ref.read(usersProvider.notifier);

    final results = await provider.getUsers(
      minAge: minAge,
      maxAge: maxAge,
      page: page,
      name: tcSearch.text.trim(),
    );

    final isLastPage = results.next == null;
    if (isLastPage) {
      _pagingController.appendLastPage(results.results);
    } else {
      final nextPageKey = page + 1;
      _pagingController.appendPage(results.results, nextPageKey);
    }
  }

  void onSearchInputChange(String value) {
    if (value.length < 5) return;
    if (value.trim().replaceAll(" ", "").isEmpty) {
      _pagingController.refresh();
      return;
    }

    Future.delayed(const Duration(milliseconds: 500), () {
      _pagingController.refresh();
    });
  }

  void onSearchClick() {
    if (tcSearch.text.isNotEmpty) {
      _pagingController.refresh();
    }
  }
}
