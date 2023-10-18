import 'package:flutter/material.dart';

extension ErrorMessage on String {
  String toErrorMessage(BuildContext context) {
    final errorCodeAuthenticationMessage = {
      'CURRENT_PASSWORD_NOT_MATCH': 'Mật khẩu không đúng',
      'INTERNAL_SERVER_ERROR': 'Lỗi hệ thống',
      'BAD_REQUEST': 'Trường dữ liệu không hợp lệ',
      'FILE_NOT_FOUND': 'File không tồn tại',
      'USER_NOT_FOUND': 'Người dùng không tồn tại',
      'EMAIL_NOT_FOUND': 'Email không tồn tại',
      'PHONE_OR_PASSWORD_NOT_MATCH': 'Số điện thoại hoặc mật khẩu không khớp',
      'EMAIL_OR_PASSWORD_NOT_MATCH': 'Email hoặc mật khẩu không khớp',
      'EMAIL_NOT_VERIFY': 'Email chưa được xác minh',
      'PHONE_NOT_VERIFY': 'Số điện thoại chưa được xác minh',
      'EMAIL_EXISTS': 'Email này đã tồn tại',
      'USER_EXISTS': 'Người dùng này đã tồn tại',
      'PHONE_EXISTS': 'Số điện thoại này đã tồn tại',
      'OTP_NOT_FOUND': 'Mã OTP không tồn tại',
      'OTP_NOT_MATCH': 'Mã OTP không khớp.',
      'OTP_EXPIRED': 'Mã OTP đã hết hạn',
      'EMAIL_OR_PHONE_NOT_VERIFY':
          'Email hoặc số điện thoại chưa được xác minh',
      'LIMIT_BACKGROUND_IMAGE': 'Giới hạn số lượng ảnh background',
      'NO_PERMISSION_DELETE_NEWS': 'Bài đăng đã lên News, không được xóa',
      'NO_PERMISSION_UPDATE_NEWS': 'Bài đăng đã lên News, không được chỉnh sửa',
      'NO_PERMISSION_NEWS': 'Không đủ quyền để thao các với Tin tức',
      'NO_PERMISSION': 'Không đủ quyền để thao tác',
      'PROFILE_NOT_VALID': 'Hồ sơ không hợp lệ',
      'KYC_NOT_VALID': 'Thông tin KYC không hợp lệ',
      'POST_NOT_FOUND': 'Bài viết không tồn tại',
      'POST_NOT_ENOUGH_REACTION': 'Bài viết không đủ tương tác',
      'COMMENT_NOT_FOUND': 'Bình luận không tồn tại',
      'MEDIA_NOT_FOUND': 'Media không tồn tại',
      'MEDIA_NOT_VALID': 'Media không hợp lệ',
      'NOT_P_DONE': 'Tài khoản chưa là P Done',
      'GENERATE_P_DONE_ID_FAIL': 'Tạo mã P Done thất bại',
      'TEAM_NOT_FOUND': 'Team không tồn tại',
      'ONLY_JOIN_ONE_TEAM': 'Không được tham gia nhiều Team',
      'TEAM_EXISTS': 'Team này đã tồn tại',
      'GROUP_NOT_FOUND': 'Group này không tồn tại',
      'GROUP_EXISTS': 'Group này đã tồn tại',
      'BOSS_ONLY_ONE_COMMUNITY': 'Một User chỉ được làm Boss của một cộng đồng',
      'LIVE_NOT_FOUND': 'Live không tồn tại',
      'PHONE_NUMBER_INVALID': 'Số điện thoại không hợp lệ',
      'NOT_ENOUGH_AGE': 'Thành viên đủ 15 tuổi mới có thể đăng ký JA',
      'YOU_NEED_TO_BE_OVER_15_YEARS_OLD':
          'Thành viên đủ 15 tuổi mới có thể đăng ký JA',
      'PASSWORD_NOT_MATCH': 'Mật khẩu sai',
    };

    final message = errorCodeAuthenticationMessage[this];
    return message ?? this;
  }
}
