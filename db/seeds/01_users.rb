# 20.times do |i|
#     .create(
#       id: i + 1,
#       client_id: 1,
#       code: "ACCOUNT#{1000+i}",
#       email: "account#{1000+i}@mmfosyic.com",
#       password:'Password2020',
#       profile_image_url: Faker::Avatar.image(slug: "MM#{1000+i}"),
#       name: "太郎 #{1000 + i}",
#       input_start_date: '2020/01/01',
#       input_end_date: '2020/01/31',
#       classification: '分類',
#       role: :admin,
#       need_remind_flg: :no,
#       exclude_approval_flg: :no,
#       authorizer_account_id: i > 0 && i < 6 ? 1 : nil,
#       report_open_type: :everyone
#     )
#     Account.first.update(authorizer_account_id: 10)
#   end