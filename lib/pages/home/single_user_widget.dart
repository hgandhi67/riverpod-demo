import 'package:demo_task/models/user_results_model.dart';
import 'package:demo_task/utils/app_extensions.dart';
import 'package:demo_task/utils/constants.dart';
import 'package:demo_task/utils/dimens.dart';
import 'package:demo_task/utils/palettes.dart';
import 'package:demo_task/widgets/cached_image.dart';
import 'package:flutter/material.dart';

class SingleUserWidget extends StatefulWidget {
  final Result userResult;

  const SingleUserWidget({super.key, required this.userResult});

  @override
  State<SingleUserWidget> createState() => _SingleUserWidgetState();
}

class _SingleUserWidgetState extends State<SingleUserWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: Dimens.screenWidth * 0.05),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Palettes.colorSecondary,
        borderRadius: Constants.radius10,
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              "${widget.userResult.first_name} ${widget.userResult.last_name}",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 12.0),
          _detailsLayout(),
        ],
      ),
    );
  }

  Widget _detailsLayout() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedImage(
          widget.userResult.picture_thumb,
          width: 60,
          height: 60,
          borderRadius: Constants.radius100,
          name: "${widget.userResult.first_name} ${widget.userResult.last_name}"
              .forImage(),
        ),
        Constants.widthSmall,
        Constants.widthSmall,
        Expanded(
          child: Column(
            children: [
              _infoWidget(Icons.account_circle_outlined,
                  widget.userResult.gender!.sCap()),
              Constants.heightSmall,
              _infoWidget(
                Icons.access_time,
                Constants.parseDateOfBirth(widget.userResult.date_of_birth!),
              ),
              Constants.heightSmall,
              _infoWidget(
                Icons.sports_gymnastics,
                "${(widget.userResult.weight ?? 0).toString().toDouble().toInt()} lbs",
              ),
              Constants.heightSmall,
              _infoWidget(
                Icons.houseboat_outlined,
                "${widget.userResult.number_of_fights ?? 0} bouts",
              ),
              Constants.heightSmall,
              _infoWidget(
                Icons.other_houses_outlined,
                widget.userResult.gym_name ?? "NA",
              ),
              if (Constants.parseAddress(widget.userResult.gymLocationFull)
                  .isNotEmpty) ...[
                Constants.heightSmall,
                _infoWidget(
                  Icons.location_pin,
                  Constants.parseAddress(widget.userResult.gymLocationFull!),
                ),
              ],
              Constants.heightSmall,
              _infoWidget(Icons.tag, "${widget.userResult.id}"),
            ],
          ),
        ),
      ],
    );
  }

  Widget _infoWidget(IconData infoIcon, String infoText) {
    return Row(
      children: [
        Icon(infoIcon, color: Palettes.colorLightBackground),
        Constants.widthSmall,
        Flexible(
          child: Text(
            infoText,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
