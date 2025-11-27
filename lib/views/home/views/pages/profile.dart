import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/logic/helper_method.dart';
import '../../../../core/ui/app_button.dart';
import '../../../../core/ui/app_image.dart';
import '../../../../core/ui/app_input.dart';
import '../../../auth/views/create_password.dart';
import '../../../auth/widgets/register_upload_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            RegisterUploadImage(
              isReigster: false,
            ),

            SizedBox(
              height: 34.h,
            ),
            AppInput(hintText: 'Your Name'),
            AppInput(hintText: 'Your Phone'),
            Row(
              children: [
                Expanded(
                  child: AppInput(
                    hintText: 'yourAge',
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                _SelcetGenderItem(),
              ],
            ),
            SizedBox(
              height: 30.h,
            ),
            AppButton(title: 'Save' , onTap: (){},),
            SizedBox(
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () => goTo(
                    page: CreatePasswordView(),
                  ),
                  child: Text(
                    'Change Password',
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: AppImage(
                    image: 'edit_profile.svg',
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _SelcetGenderItem extends StatefulWidget {
  const _SelcetGenderItem();

  @override
  State<_SelcetGenderItem> createState() => _SelcetGenderItemState();
}

class _SelcetGenderItemState extends State<_SelcetGenderItem> {
  String _selectedGender = 'Gender';
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.r),
      padding: EdgeInsets.symmetric(horizontal: 16.r),
      height: 55.h,
      width: 185.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff284243).withValues(alpha: .3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            _selectedGender,
          ),
          DropdownButton(
            borderRadius: BorderRadius.circular(16),
            items: [
              DropdownMenuItem(
                value: 'Male',
                child: Text('Male'),
              ),
              DropdownMenuItem(
                value: 'Female',
                child: Text('Female'),
              ),
            ],
            onChanged: (value) {
              setState(() {
                _selectedGender = value!;
              });
            },
          ),
        ],
      ),
    );
  }
}
