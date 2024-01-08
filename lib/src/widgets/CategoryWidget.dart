import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String categoryName;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryWidget({
    Key? key,
    required this.categoryName,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            Text(
              categoryName,
              style: TextStyle(
                fontSize: isSelected ? 22 : 16,
                fontWeight: FontWeight.w500,
                color: isSelected ? Colors.white : Colors.grey,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            if (isSelected)
              Container(
                width: 35,
                height: 4,
                decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(5),
                      topEnd: Radius.circular(5),
                    )),
              ),
          ],
        ),
      ),
    );
  }
}
