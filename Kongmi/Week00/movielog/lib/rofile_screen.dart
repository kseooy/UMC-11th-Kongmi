// lib/profile_screen.dart
import 'package:flutter/material.dart';
import 'theme/app_colors.dart';
import 'theme/app_text_styles.dart';
import 'widgets/common_app_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CommonAppBar(
        title: '내 프로필',
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 44,
              backgroundImage: AssetImage('assets/images/profile/profile.png'),
            ),
            const SizedBox(height: 16),

            Text(
              '아주 긴 닉네임을 사용하는 무비러버',
              style: AppTextStyles.titleLarge,
              textAlign: TextAlign.center,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 12),

            Wrap(
              spacing: 8,
              children: [
                Chip(
                  label: const Text('드라마'),
                  backgroundColor: AppColors.warmWhite,
                  side: const BorderSide(color: AppColors.violet),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Chip(
                  label: const Text('SF'),
                  backgroundColor: AppColors.warmWhite,
                  side: const BorderSide(color: AppColors.violet),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.white,
                border: Border.all(color: AppColors.violet),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text(
                '본 영화 24편 | 작성한 리뷰 12개',
                style: AppTextStyles.bodyMedium,
              ),
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.violet,
                  foregroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text('프로필 수정'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}