import 'package:flutter/material.dart';

import '../../models/Post.dart';
import '../../widgets/MyPost.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Post> listPost = [
    Post(
        title: 'Hàng công Man Utd tệ thế nào ở Ngoại hạng Anh',
        source:
            'https://vnexpress.net/hang-cong-man-utd-te-the-nao-o-ngoai-hang-anh-4700561.html',
        content: [
          'Trên trang chủ Ngoại hạng Anh, chuyên gia Adrian Clarke phân tích vấn đề của hàng công Man Utd và lý do Rasmus Hojlund mới ghi một bàn tại giải.',
          'Phung phí cơ hội',
          'Man Utd chỉ tạo 36 cơ hội rõ ràng (big chance) qua 20 vòng đầu Ngoại hạng Anh, kém 13 CLB khác tại giải. Điều này khéo theo việc "Quỷ đỏ" chỉ ghi 22 bàn qua 20 trận và là đội ghi bàn ít thứ ba tại Ngoại hạng Anh. Man Utd thậm chí ghi ít bàn hơn Luton Town và Everton - hai CLB lần lượt đứng thứ 18 và 17 - với cùng 24 bàn. Tập thể dưới trướng HLV Erik ten Hag chỉ ghi nhiều bàn hơn hai đội bét bảng là Burnley (21) và Sheffield (15).\n\nTheo Clarke, Man Utd thất bại trong việc kéo giãn đội hình đối thủ vì sự chậm chạp, khả năng đưa ra quyết định kém cùng nhiều vấn đề về chiến thuật.',
          'Chỉ có ba cầu thủ Man Utd tạo ra nhiều hơn một cơ hội rõ ràng cho đồng đội, là Bruno Fernandes, Marcus Rashford với mỗi người 9 cơ hội, và Antony 5 cơ hội. Trong khi đó, ĐKVĐ Man City có 12 cầu thủ tạo ra nhiều hơn một cơ hội rõ ràng cho đồng đội.\n\nTệ hơn nữa, Man Utd tận dụng rất kém và phung phí phần lớn các cơ hội rõ ràng, khi chỉ ghi chín bàn và lỡ 27 tình huống như vậy. Xếp sau Man Utd ở thông số này là những CLB chật vật ở nhóm đua trụ hạng, gồm Nottingham Forest (lỡ 21 cơ hội rõ ràng), Sheffield (20), Burnley (18) và Luton Town (17). Newcastle - CLB kém Man Utd một bậc và hai điểm - tận dụng thành công 34 cơ hội rõ ràng, so với chín của "Quỷ Đỏ".',
          'Vấn đề của Hojlund',
          'Dù thể hiện tiềm năng lớn, Hojlund mới ghi một bàn tại Ngoại hạng Anh. Tiền đạo 20 tuổi có tốc độ bùng nổ, phù hợp với thế mạnh phản công của Man Utd, nhưng anh chưa ăn ý với các vệ tinh xung quanh.\n\nTại Ngoại hạng Anh, Dominic Solanke của Bournemouth là tiền đạo dứt điểm nhiều nhất với 66 cú sút và ghi 12 bàn. Darwin Nunez và Erling Haaland cùng có 58 pha dứt điểm, lần lượt ghi 5 và 14 bàn.',
          'Trong khi đó, Hojlund chỉ dứt điểm trúng đích 19 lần - thấp nhất tính trong các cầu thủ có trên 1,000 phút thi đấu tại Ngoại hạng Anh. Trung phong Đan Mạch có chỉ số bàn thắng kỳ vọng (xG) là 3,10 và ghi một bàn.\n\nXếp trên Hojlund là Cameron Archer của Sheffield có tới 25 pha dứt điểm trúng đích, đạt xG 2,94 và ghi ba bàn. Raul Jimenez của Wolves sút trúng đích 30 lần, đạt xG 3,88 và ghi năm bàn.\n\nThông số này cho thấy Hojlund không được đồng đội cung cấp đủ bóng. Khi các tiền đạo không được tạo nhiều cơ hội và ghi ít bàn, họ sẽ ngày càng chịu áp lực lớn và thiếu tự tin trong khâu dứt điểm.\n\nHojlund là tiền đạo đá chính thường xuyên có tỷ lệ chuyển hóa cơ hội thành bàn thắng thấp nhất Ngoại hạng Anh với 6,25%. Xếp sau tiền đạo Man Utd là Dominic Calvert-Lewin của Everton (10%), Darwin Nunez của Liverpool (10,42%), Carlton Morris của Luton Town (12%) và Julian Alvarez của Man City (15,79%).\n\nTại Ngoại hạng Anh, Hojlund lỡ cả chín cơ hội rõ ràng nhưng chỉ dứt điểm chệch mục tiêu một lần từ những tình huống như vậy. Đó là cú đánh đầu chệch cột từ quả đá phạt trực tiếp của Bruno Fernandes trong trận gặp Luton Town.',
          'Còn lại, bốn trong số những cơ hội rõ ràng của Hojlund bị đối phương xuất sắc cản phá, gồm một bị hậu vệ đối phương ngăn chặn và ba cơ hội còn lại bị truy cản - tức Hojlund không kịp dứt điểm. Vì vậy, ở một khía cạnh nào đó, tiền đạo Đan Mach không gặp may ở những thời điểm quan trọng.\n\nPhong độ của Hojlund tại Champions League, nơi anh ghi năm bàn qua sáu trận, là cơ sở để Man Utd lạc quan. Ở giải đấu châu Âu, tỷ lệ chuyển hóa cơ hội thành bàn thắng của Hojlund là cực kỳ ấn tượng với 55,60%. Tiền đạo Đan Mạch cần thể hiện phong độ như vậy từ trận gặp Tottenham ở vòng 21 Ngoại hạng Anh trên sân Old Trafford hôm nay.',
        ],
        images: [
          'https://i1-thethao.vnecdn.net/2024/01/14/2024-01-08T204852Z-1703142120-3736-5554-1705207448.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=-IZ3kjbZEXAK1zhPBsGgig',
          'https://i1-thethao.vnecdn.net/2024/01/14/343937T-highres-jpeg-6405-1705207448.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=D4RoWN5RQfJKccjTHb0pdg',
          'https://i1-thethao.vnecdn.net/2024/01/14/Hojlund-v-Luton-jpeg-9670-1705207448.jpg?w=1020&h=0&q=100&dpr=1&fit=crop&s=Mmpd742x7LIjQeVk6N3RFw',
        ])
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPost(
              post: listPost[0],
            ),
            MyPost(
              post: listPost[0],
            ),
            MyPost(
              post: listPost[0],
            ),
            MyPost(
              post: listPost[0],
            ),
          ],
        ),
      ),
    );
  }
}
