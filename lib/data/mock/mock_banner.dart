import '../../domain/model/banner.dart';

class MockBanner {
  List<BannerModel> getListBanner() {
    return mockListBanner;
  }

  List<BannerModel> getListNewsPaging(int page, int limit) {
    try {
      return mockListNews.getRange((page - 1) * limit, page * limit).toList();
    } catch (e) {
      return [];
    }
  }

  List<BannerModel> mockListBanner = [
    // Banner(
    //   id: const Uuid().v1(),
    //   imageUrl: 'username',
    // ),
    BannerModel(
      id: "banner_001",
      title:
          'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay! Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Thèm lẩu Haidilao nhưng không muốn ra ngoài? Đặt ngay lẩu Haidilao về nhà chỉ với vài thao tác đơn giản! Thưởng thức món lẩu tươi ngon, đầy đủ hương vị ngay tại không gian của bạn mà không cần phải di chuyển. Cùng haidilaovn.com khám phá thêm chi tiết dưới đây\n'
          'Một trong những lý do khiến Haidilao trở thành thương hiệu được ưa chuộng chính là sự tiện lợi trong việc đặt món. Bạn có thể dễ dàng đặt lẩu Haidilao về nhà chỉ với vài thao tác đơn giản qua ứng dụng di động hoặc website của Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/62438584-9271-4896-a34f-a2c28196dc17_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_002",
      title: 'Haidilao Đà Nẵng: Địa Chỉ, ?',
      content:
          'Haidilao, thương hiệu lẩu nổi tiếng từ Trung Quốc, đã gây sốt tại nhiều quốc gia và thành phố lớn. Mặc dù hiện tại chưa có chi nhánh Haidilao Đà Nẵng, nhưng sức hút của Haidilao vẫn khiến nhiều tín đồ ẩm thực nơi đây mong chờ sự xuất hiện của thương hiệu này. Cùng haidilaovn.com khám phá thêm về sự nổi bật của thương hiệu này nhé!',
      imageUrl:
          "https://img.lazcdn.com/us/domino/dbbefc6c-0834-465d-b06b-3de8ca81897d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_003",
      title: 'Cách Đặt Bàn Haidilao Dễ Dàng & Nhanh Chóng',
      content:
          'Nếu bạn đang tìm cách tránh phải chờ đợi lâu khi đến Haidilao, thì Cách Đặt Bàn Haidilao Và Các Tips Để Tránh Cảnh Chờ Đợi. Dưới Đây haidilaovn.com sẽ cung cấp cho bạn những thông tin hữu ích nhất để giải quyết vấn đề này nhé!\n'
          'Việc đặt bàn trước sẽ giúp bạn đảm bảo có chỗ ngồi ưng ý, tiết kiệm thời gian để thưởng thức những món lẩu thơm ngon mà không phải lo lắng về việc hết chỗ.\n'
          'Đặt bàn tại Haidilao trước khi đến là cách tuyệt vời để bạn có một trải nghiệm ẩm thực thoải mái mà không phải lo lắng về việc chờ đợi lâu. Đặc biệt vào những dịp lễ, Tết hoặc giờ cao điểm, việc đặt bàn trước càng trở nên quan trọng để bạn không phải xếp hàng. Dưới đây là các cách đơn giản và hiệu quả giúp bạn dễ dàng đặt chỗ tại Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7c11587b-e637-45e3-a77f-06a41c19485a_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_004",
      title: 'Haidilao – Lẩu Tươi Ngon, Trội Dịch Vụ 5 Sao',
      content:
          'Ra đời vào năm 1994 tại một quán nướng nhỏ ở Tứ Xuyên, Trung Quốc, Haidilao đã không ngừng phát triển và khẳng định mình là biểu tượng của văn hóa lẩu Trung Hoa. Từ một cửa hàng nhỏ, Haidilao đã vươn lên trở thành chuỗi nhà hàng lẩu nổi tiếng toàn cầu, với hơn 1.400 cơ sở tại 16 quốc gia trên bốn châu lục. Sự thành công này không chỉ đến từ hương vị đặc sắc của các món lẩu mà còn nhờ vào cam kết mang đến dịch vụ khách hàng xuất sắc và một không gian trải nghiệm đầy sáng tạo.\n'
          'Haidilao không chỉ là nơi để thưởng thức món lẩu nóng, mà còn là điểm đến mang đến những trải nghiệm ẩm thực độc đáo. Điều này được thể hiện rõ ràng qua sự sáng tạo không ngừng trong từng món ăn và dịch vụ, kết hợp hài hòa giữa truyền thống và hiện đại. Dù là một chuỗi nhà hàng nổi tiếng tại Trung Quốc, Haidilao cũng đã nhanh chóng chiếm lĩnh các thị trường quốc tế lớn như Singapore, Mỹ, Nhật Bản, Anh, Úc và nhiều quốc gia khác, với giá trị thương hiệu ngày càng được nâng cao.\n'
          'Kể từ năm 2019, Haidilao đã liên tục xuất hiện trong danh sách các chuỗi nhà hàng hàng đầu thế giới, trở thành niềm tự hào của ngành ẩm thực Trung Hoa. Với phương châm “đổi mới không ngừng”, Haidilao luôn chú trọng đến những trải nghiệm khách hàng vượt trội, từ việc đưa các đặc quyền cho khách hàng đang chờ đợi, đến sự sáng tạo trong không gian ăn uống. Mỗi chi tiết tại Haidilao đều được chăm chút kỹ lưỡng, từ dịch vụ mát-xa lưng miễn phí, các món ăn nhẹ miễn phí trong lúc chờ đợi, cho đến quy trình đặt món qua iPad giúp khách hàng dễ dàng lựa chọn mà không gặp phải khó khăn về ngôn ngữ.\n'
          'Với giá trị thương hiệu vượt mức một tỷ đô la và sự chuẩn bị cho đợt IPO trị giá 700 triệu đô la tại Hồng Kông, Haidilao tiếp tục khẳng định tham vọng toàn cầu và cam kết mang đến những trải nghiệm ẩm thực đáng nhớ. Việc mở rộng tại Việt Nam là bước tiến tiếp theo trong hành trình phát triển của thương hiệu, đưa văn hóa lẩu Trung Hoa đến gần hơn với thực khách quốc tế.\n'
          'Haidilao không chỉ là một chuỗi nhà hàng, mà là một biểu tượng của sự sáng tạo, đổi mới và cam kết mang đến những trải nghiệm độc đáo cho khách hàng. Mỗi lần ghé thăm Haidilao, bạn không chỉ thưởng thức những món lẩu tuyệt hảo mà còn cảm nhận được sự chăm sóc, tận tâm trong từng chi tiết nhỏ nhất.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/ddeeaeb6-bf1c-4899-bafa-57f287234a2e_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_005",
      title: 'Thông tin về Haidilao Hùng Vương Plaza',
      content:
          'Lẩu Cà Chua: Với vị ngọt thanh tự nhiên từ cà chua tươi, xen lẫn chút chua dịu nhẹ, đây là lựa chọn “chân ái” cho mọi lứa tuổi. Nước lẩu này đặc biệt tôn lên vị ngọt của các loại hải sản tươi sống.\n'
          'Lẩu Dầu Cay (Mala): Dành cho những tín đồ ăn cay đích thực! Vị cay nồng đặc trưng của hoa tiêu Tứ Xuyên, tê tê đầu lưỡi nhưng lại cuốn hút lạ thường. Nhúng một miếng thịt dê mềm hay sách bò giòn sần sật vào nồi lẩu Mala thì không còn gì để chê.\n'
          'Lẩu Nấm: Một lựa chọn thanh mát, bổ dưỡng và nhẹ nhàng. Nước lẩu ngọt thơm từ các loại nấm quý, giúp cân bằng lại vị giác và cực kỳ tốt cho sức khỏe.\n'
          'Lẩu Thái (Tom Yum): Vị chua cay hài hòa, thơm lừng hương sả và lá chanh đặc trưng của ẩm thực Thái Lan, đánh thức mọi giác quan và khiến bạn không thể ngừng đũa.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7e47ea8d-0bec-4780-96d9-baf6fc9b869d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_006",
      title: 'Haidilao Ocean Park Hà Nội: Review, Menu, Giá & Đặt Bàn',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0ad29b77-1fc2-4999-9783-9d1f44e2a168_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_007",
      title: 'Địa Chỉ Haidilao Estella – Lẩu Ngon Tại TP.HCM',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0536dfc5-20e9-45a6-978d-640adc1242dd_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_008",
      title: 'LỢI THẾ “4 ĐƯỢC” DÀNH CHO FRANCHISE',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/c51eacfc-61e2-4204-845f-314584ceb807_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_009",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/a8855e50-9040-41b1-8690-9fd90907017c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_010",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0202a49e-d5ad-4196-bb2d-32b5c6de3ac9_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_011",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/70beeb1f-02b3-4f6e-a0b9-3748c0a8cb9c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
  ];

  List<BannerModel> mockListNews = [
    BannerModel(
      id: "banner_001",
      title:
          'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay! Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Thèm lẩu Haidilao nhưng không muốn ra ngoài? Đặt ngay lẩu Haidilao về nhà chỉ với vài thao tác đơn giản! Thưởng thức món lẩu tươi ngon, đầy đủ hương vị ngay tại không gian của bạn mà không cần phải di chuyển. Cùng haidilaovn.com khám phá thêm chi tiết dưới đây\n'
          'Một trong những lý do khiến Haidilao trở thành thương hiệu được ưa chuộng chính là sự tiện lợi trong việc đặt món. Bạn có thể dễ dàng đặt lẩu Haidilao về nhà chỉ với vài thao tác đơn giản qua ứng dụng di động hoặc website của Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/62438584-9271-4896-a34f-a2c28196dc17_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_002",
      title: 'Haidilao Đà Nẵng: Địa Chỉ, ?',
      content:
          'Haidilao, thương hiệu lẩu nổi tiếng từ Trung Quốc, đã gây sốt tại nhiều quốc gia và thành phố lớn. Mặc dù hiện tại chưa có chi nhánh Haidilao Đà Nẵng, nhưng sức hút của Haidilao vẫn khiến nhiều tín đồ ẩm thực nơi đây mong chờ sự xuất hiện của thương hiệu này. Cùng haidilaovn.com khám phá thêm về sự nổi bật của thương hiệu này nhé!',
      imageUrl:
          "https://img.lazcdn.com/us/domino/dbbefc6c-0834-465d-b06b-3de8ca81897d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_003",
      title: 'Cách Đặt Bàn Haidilao Dễ Dàng & Nhanh Chóng',
      content:
          'Nếu bạn đang tìm cách tránh phải chờ đợi lâu khi đến Haidilao, thì Cách Đặt Bàn Haidilao Và Các Tips Để Tránh Cảnh Chờ Đợi. Dưới Đây haidilaovn.com sẽ cung cấp cho bạn những thông tin hữu ích nhất để giải quyết vấn đề này nhé!\n'
          'Việc đặt bàn trước sẽ giúp bạn đảm bảo có chỗ ngồi ưng ý, tiết kiệm thời gian để thưởng thức những món lẩu thơm ngon mà không phải lo lắng về việc hết chỗ.\n'
          'Đặt bàn tại Haidilao trước khi đến là cách tuyệt vời để bạn có một trải nghiệm ẩm thực thoải mái mà không phải lo lắng về việc chờ đợi lâu. Đặc biệt vào những dịp lễ, Tết hoặc giờ cao điểm, việc đặt bàn trước càng trở nên quan trọng để bạn không phải xếp hàng. Dưới đây là các cách đơn giản và hiệu quả giúp bạn dễ dàng đặt chỗ tại Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7c11587b-e637-45e3-a77f-06a41c19485a_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_004",
      title: 'Haidilao – Lẩu Tươi Ngon, Trội Dịch Vụ 5 Sao',
      content:
          'Ra đời vào năm 1994 tại một quán nướng nhỏ ở Tứ Xuyên, Trung Quốc, Haidilao đã không ngừng phát triển và khẳng định mình là biểu tượng của văn hóa lẩu Trung Hoa. Từ một cửa hàng nhỏ, Haidilao đã vươn lên trở thành chuỗi nhà hàng lẩu nổi tiếng toàn cầu, với hơn 1.400 cơ sở tại 16 quốc gia trên bốn châu lục. Sự thành công này không chỉ đến từ hương vị đặc sắc của các món lẩu mà còn nhờ vào cam kết mang đến dịch vụ khách hàng xuất sắc và một không gian trải nghiệm đầy sáng tạo.\n'
          'Haidilao không chỉ là nơi để thưởng thức món lẩu nóng, mà còn là điểm đến mang đến những trải nghiệm ẩm thực độc đáo. Điều này được thể hiện rõ ràng qua sự sáng tạo không ngừng trong từng món ăn và dịch vụ, kết hợp hài hòa giữa truyền thống và hiện đại. Dù là một chuỗi nhà hàng nổi tiếng tại Trung Quốc, Haidilao cũng đã nhanh chóng chiếm lĩnh các thị trường quốc tế lớn như Singapore, Mỹ, Nhật Bản, Anh, Úc và nhiều quốc gia khác, với giá trị thương hiệu ngày càng được nâng cao.\n'
          'Kể từ năm 2019, Haidilao đã liên tục xuất hiện trong danh sách các chuỗi nhà hàng hàng đầu thế giới, trở thành niềm tự hào của ngành ẩm thực Trung Hoa. Với phương châm “đổi mới không ngừng”, Haidilao luôn chú trọng đến những trải nghiệm khách hàng vượt trội, từ việc đưa các đặc quyền cho khách hàng đang chờ đợi, đến sự sáng tạo trong không gian ăn uống. Mỗi chi tiết tại Haidilao đều được chăm chút kỹ lưỡng, từ dịch vụ mát-xa lưng miễn phí, các món ăn nhẹ miễn phí trong lúc chờ đợi, cho đến quy trình đặt món qua iPad giúp khách hàng dễ dàng lựa chọn mà không gặp phải khó khăn về ngôn ngữ.\n'
          'Với giá trị thương hiệu vượt mức một tỷ đô la và sự chuẩn bị cho đợt IPO trị giá 700 triệu đô la tại Hồng Kông, Haidilao tiếp tục khẳng định tham vọng toàn cầu và cam kết mang đến những trải nghiệm ẩm thực đáng nhớ. Việc mở rộng tại Việt Nam là bước tiến tiếp theo trong hành trình phát triển của thương hiệu, đưa văn hóa lẩu Trung Hoa đến gần hơn với thực khách quốc tế.\n'
          'Haidilao không chỉ là một chuỗi nhà hàng, mà là một biểu tượng của sự sáng tạo, đổi mới và cam kết mang đến những trải nghiệm độc đáo cho khách hàng. Mỗi lần ghé thăm Haidilao, bạn không chỉ thưởng thức những món lẩu tuyệt hảo mà còn cảm nhận được sự chăm sóc, tận tâm trong từng chi tiết nhỏ nhất.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/ddeeaeb6-bf1c-4899-bafa-57f287234a2e_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_005",
      title: 'Thông tin về Haidilao Hùng Vương Plaza',
      content:
          'Lẩu Cà Chua: Với vị ngọt thanh tự nhiên từ cà chua tươi, xen lẫn chút chua dịu nhẹ, đây là lựa chọn “chân ái” cho mọi lứa tuổi. Nước lẩu này đặc biệt tôn lên vị ngọt của các loại hải sản tươi sống.\n'
          'Lẩu Dầu Cay (Mala): Dành cho những tín đồ ăn cay đích thực! Vị cay nồng đặc trưng của hoa tiêu Tứ Xuyên, tê tê đầu lưỡi nhưng lại cuốn hút lạ thường. Nhúng một miếng thịt dê mềm hay sách bò giòn sần sật vào nồi lẩu Mala thì không còn gì để chê.\n'
          'Lẩu Nấm: Một lựa chọn thanh mát, bổ dưỡng và nhẹ nhàng. Nước lẩu ngọt thơm từ các loại nấm quý, giúp cân bằng lại vị giác và cực kỳ tốt cho sức khỏe.\n'
          'Lẩu Thái (Tom Yum): Vị chua cay hài hòa, thơm lừng hương sả và lá chanh đặc trưng của ẩm thực Thái Lan, đánh thức mọi giác quan và khiến bạn không thể ngừng đũa.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7e47ea8d-0bec-4780-96d9-baf6fc9b869d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_006",
      title: 'Haidilao Ocean Park Hà Nội: Review, Menu, Giá & Đặt Bàn',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0ad29b77-1fc2-4999-9783-9d1f44e2a168_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_007",
      title: 'Địa Chỉ Haidilao Estella – Lẩu Ngon Tại TP.HCM',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0536dfc5-20e9-45a6-978d-640adc1242dd_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_008",
      title: 'LỢI THẾ “4 ĐƯỢC” DÀNH CHO FRANCHISE',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/c51eacfc-61e2-4204-845f-314584ceb807_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_009",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/a8855e50-9040-41b1-8690-9fd90907017c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_010",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0202a49e-d5ad-4196-bb2d-32b5c6de3ac9_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_011",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/70beeb1f-02b3-4f6e-a0b9-3748c0a8cb9c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_001",
      title:
          'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay! Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Thèm lẩu Haidilao nhưng không muốn ra ngoài? Đặt ngay lẩu Haidilao về nhà chỉ với vài thao tác đơn giản! Thưởng thức món lẩu tươi ngon, đầy đủ hương vị ngay tại không gian của bạn mà không cần phải di chuyển. Cùng haidilaovn.com khám phá thêm chi tiết dưới đây\n'
          'Một trong những lý do khiến Haidilao trở thành thương hiệu được ưa chuộng chính là sự tiện lợi trong việc đặt món. Bạn có thể dễ dàng đặt lẩu Haidilao về nhà chỉ với vài thao tác đơn giản qua ứng dụng di động hoặc website của Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/62438584-9271-4896-a34f-a2c28196dc17_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_002",
      title: 'Haidilao Đà Nẵng: Địa Chỉ, ?',
      content:
          'Haidilao, thương hiệu lẩu nổi tiếng từ Trung Quốc, đã gây sốt tại nhiều quốc gia và thành phố lớn. Mặc dù hiện tại chưa có chi nhánh Haidilao Đà Nẵng, nhưng sức hút của Haidilao vẫn khiến nhiều tín đồ ẩm thực nơi đây mong chờ sự xuất hiện của thương hiệu này. Cùng haidilaovn.com khám phá thêm về sự nổi bật của thương hiệu này nhé!',
      imageUrl:
          "https://img.lazcdn.com/us/domino/dbbefc6c-0834-465d-b06b-3de8ca81897d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_003",
      title: 'Cách Đặt Bàn Haidilao Dễ Dàng & Nhanh Chóng',
      content:
          'Nếu bạn đang tìm cách tránh phải chờ đợi lâu khi đến Haidilao, thì Cách Đặt Bàn Haidilao Và Các Tips Để Tránh Cảnh Chờ Đợi. Dưới Đây haidilaovn.com sẽ cung cấp cho bạn những thông tin hữu ích nhất để giải quyết vấn đề này nhé!\n'
          'Việc đặt bàn trước sẽ giúp bạn đảm bảo có chỗ ngồi ưng ý, tiết kiệm thời gian để thưởng thức những món lẩu thơm ngon mà không phải lo lắng về việc hết chỗ.\n'
          'Đặt bàn tại Haidilao trước khi đến là cách tuyệt vời để bạn có một trải nghiệm ẩm thực thoải mái mà không phải lo lắng về việc chờ đợi lâu. Đặc biệt vào những dịp lễ, Tết hoặc giờ cao điểm, việc đặt bàn trước càng trở nên quan trọng để bạn không phải xếp hàng. Dưới đây là các cách đơn giản và hiệu quả giúp bạn dễ dàng đặt chỗ tại Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7c11587b-e637-45e3-a77f-06a41c19485a_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_004",
      title: 'Haidilao – Lẩu Tươi Ngon, Trội Dịch Vụ 5 Sao',
      content:
          'Ra đời vào năm 1994 tại một quán nướng nhỏ ở Tứ Xuyên, Trung Quốc, Haidilao đã không ngừng phát triển và khẳng định mình là biểu tượng của văn hóa lẩu Trung Hoa. Từ một cửa hàng nhỏ, Haidilao đã vươn lên trở thành chuỗi nhà hàng lẩu nổi tiếng toàn cầu, với hơn 1.400 cơ sở tại 16 quốc gia trên bốn châu lục. Sự thành công này không chỉ đến từ hương vị đặc sắc của các món lẩu mà còn nhờ vào cam kết mang đến dịch vụ khách hàng xuất sắc và một không gian trải nghiệm đầy sáng tạo.\n'
          'Haidilao không chỉ là nơi để thưởng thức món lẩu nóng, mà còn là điểm đến mang đến những trải nghiệm ẩm thực độc đáo. Điều này được thể hiện rõ ràng qua sự sáng tạo không ngừng trong từng món ăn và dịch vụ, kết hợp hài hòa giữa truyền thống và hiện đại. Dù là một chuỗi nhà hàng nổi tiếng tại Trung Quốc, Haidilao cũng đã nhanh chóng chiếm lĩnh các thị trường quốc tế lớn như Singapore, Mỹ, Nhật Bản, Anh, Úc và nhiều quốc gia khác, với giá trị thương hiệu ngày càng được nâng cao.\n'
          'Kể từ năm 2019, Haidilao đã liên tục xuất hiện trong danh sách các chuỗi nhà hàng hàng đầu thế giới, trở thành niềm tự hào của ngành ẩm thực Trung Hoa. Với phương châm “đổi mới không ngừng”, Haidilao luôn chú trọng đến những trải nghiệm khách hàng vượt trội, từ việc đưa các đặc quyền cho khách hàng đang chờ đợi, đến sự sáng tạo trong không gian ăn uống. Mỗi chi tiết tại Haidilao đều được chăm chút kỹ lưỡng, từ dịch vụ mát-xa lưng miễn phí, các món ăn nhẹ miễn phí trong lúc chờ đợi, cho đến quy trình đặt món qua iPad giúp khách hàng dễ dàng lựa chọn mà không gặp phải khó khăn về ngôn ngữ.\n'
          'Với giá trị thương hiệu vượt mức một tỷ đô la và sự chuẩn bị cho đợt IPO trị giá 700 triệu đô la tại Hồng Kông, Haidilao tiếp tục khẳng định tham vọng toàn cầu và cam kết mang đến những trải nghiệm ẩm thực đáng nhớ. Việc mở rộng tại Việt Nam là bước tiến tiếp theo trong hành trình phát triển của thương hiệu, đưa văn hóa lẩu Trung Hoa đến gần hơn với thực khách quốc tế.\n'
          'Haidilao không chỉ là một chuỗi nhà hàng, mà là một biểu tượng của sự sáng tạo, đổi mới và cam kết mang đến những trải nghiệm độc đáo cho khách hàng. Mỗi lần ghé thăm Haidilao, bạn không chỉ thưởng thức những món lẩu tuyệt hảo mà còn cảm nhận được sự chăm sóc, tận tâm trong từng chi tiết nhỏ nhất.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/ddeeaeb6-bf1c-4899-bafa-57f287234a2e_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_005",
      title: 'Thông tin về Haidilao Hùng Vương Plaza',
      content:
          'Lẩu Cà Chua: Với vị ngọt thanh tự nhiên từ cà chua tươi, xen lẫn chút chua dịu nhẹ, đây là lựa chọn “chân ái” cho mọi lứa tuổi. Nước lẩu này đặc biệt tôn lên vị ngọt của các loại hải sản tươi sống.\n'
          'Lẩu Dầu Cay (Mala): Dành cho những tín đồ ăn cay đích thực! Vị cay nồng đặc trưng của hoa tiêu Tứ Xuyên, tê tê đầu lưỡi nhưng lại cuốn hút lạ thường. Nhúng một miếng thịt dê mềm hay sách bò giòn sần sật vào nồi lẩu Mala thì không còn gì để chê.\n'
          'Lẩu Nấm: Một lựa chọn thanh mát, bổ dưỡng và nhẹ nhàng. Nước lẩu ngọt thơm từ các loại nấm quý, giúp cân bằng lại vị giác và cực kỳ tốt cho sức khỏe.\n'
          'Lẩu Thái (Tom Yum): Vị chua cay hài hòa, thơm lừng hương sả và lá chanh đặc trưng của ẩm thực Thái Lan, đánh thức mọi giác quan và khiến bạn không thể ngừng đũa.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7e47ea8d-0bec-4780-96d9-baf6fc9b869d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_006",
      title: 'Haidilao Ocean Park Hà Nội: Review, Menu, Giá & Đặt Bàn',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0ad29b77-1fc2-4999-9783-9d1f44e2a168_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_007",
      title: 'Địa Chỉ Haidilao Estella – Lẩu Ngon Tại TP.HCM',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0536dfc5-20e9-45a6-978d-640adc1242dd_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_008",
      title: 'LỢI THẾ “4 ĐƯỢC” DÀNH CHO FRANCHISE',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/c51eacfc-61e2-4204-845f-314584ceb807_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_009",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/a8855e50-9040-41b1-8690-9fd90907017c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_010",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0202a49e-d5ad-4196-bb2d-32b5c6de3ac9_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_011",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/70beeb1f-02b3-4f6e-a0b9-3748c0a8cb9c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_001",
      title:
          'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay! Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Thèm lẩu Haidilao nhưng không muốn ra ngoài? Đặt ngay lẩu Haidilao về nhà chỉ với vài thao tác đơn giản! Thưởng thức món lẩu tươi ngon, đầy đủ hương vị ngay tại không gian của bạn mà không cần phải di chuyển. Cùng haidilaovn.com khám phá thêm chi tiết dưới đây\n'
          'Một trong những lý do khiến Haidilao trở thành thương hiệu được ưa chuộng chính là sự tiện lợi trong việc đặt món. Bạn có thể dễ dàng đặt lẩu Haidilao về nhà chỉ với vài thao tác đơn giản qua ứng dụng di động hoặc website của Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/62438584-9271-4896-a34f-a2c28196dc17_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_002",
      title: 'Haidilao Đà Nẵng: Địa Chỉ, ?',
      content:
          'Haidilao, thương hiệu lẩu nổi tiếng từ Trung Quốc, đã gây sốt tại nhiều quốc gia và thành phố lớn. Mặc dù hiện tại chưa có chi nhánh Haidilao Đà Nẵng, nhưng sức hút của Haidilao vẫn khiến nhiều tín đồ ẩm thực nơi đây mong chờ sự xuất hiện của thương hiệu này. Cùng haidilaovn.com khám phá thêm về sự nổi bật của thương hiệu này nhé!',
      imageUrl:
          "https://img.lazcdn.com/us/domino/dbbefc6c-0834-465d-b06b-3de8ca81897d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_003",
      title: 'Cách Đặt Bàn Haidilao Dễ Dàng & Nhanh Chóng',
      content:
          'Nếu bạn đang tìm cách tránh phải chờ đợi lâu khi đến Haidilao, thì Cách Đặt Bàn Haidilao Và Các Tips Để Tránh Cảnh Chờ Đợi. Dưới Đây haidilaovn.com sẽ cung cấp cho bạn những thông tin hữu ích nhất để giải quyết vấn đề này nhé!\n'
          'Việc đặt bàn trước sẽ giúp bạn đảm bảo có chỗ ngồi ưng ý, tiết kiệm thời gian để thưởng thức những món lẩu thơm ngon mà không phải lo lắng về việc hết chỗ.\n'
          'Đặt bàn tại Haidilao trước khi đến là cách tuyệt vời để bạn có một trải nghiệm ẩm thực thoải mái mà không phải lo lắng về việc chờ đợi lâu. Đặc biệt vào những dịp lễ, Tết hoặc giờ cao điểm, việc đặt bàn trước càng trở nên quan trọng để bạn không phải xếp hàng. Dưới đây là các cách đơn giản và hiệu quả giúp bạn dễ dàng đặt chỗ tại Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7c11587b-e637-45e3-a77f-06a41c19485a_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_004",
      title: 'Haidilao – Lẩu Tươi Ngon, Trội Dịch Vụ 5 Sao',
      content:
          'Ra đời vào năm 1994 tại một quán nướng nhỏ ở Tứ Xuyên, Trung Quốc, Haidilao đã không ngừng phát triển và khẳng định mình là biểu tượng của văn hóa lẩu Trung Hoa. Từ một cửa hàng nhỏ, Haidilao đã vươn lên trở thành chuỗi nhà hàng lẩu nổi tiếng toàn cầu, với hơn 1.400 cơ sở tại 16 quốc gia trên bốn châu lục. Sự thành công này không chỉ đến từ hương vị đặc sắc của các món lẩu mà còn nhờ vào cam kết mang đến dịch vụ khách hàng xuất sắc và một không gian trải nghiệm đầy sáng tạo.\n'
          'Haidilao không chỉ là nơi để thưởng thức món lẩu nóng, mà còn là điểm đến mang đến những trải nghiệm ẩm thực độc đáo. Điều này được thể hiện rõ ràng qua sự sáng tạo không ngừng trong từng món ăn và dịch vụ, kết hợp hài hòa giữa truyền thống và hiện đại. Dù là một chuỗi nhà hàng nổi tiếng tại Trung Quốc, Haidilao cũng đã nhanh chóng chiếm lĩnh các thị trường quốc tế lớn như Singapore, Mỹ, Nhật Bản, Anh, Úc và nhiều quốc gia khác, với giá trị thương hiệu ngày càng được nâng cao.\n'
          'Kể từ năm 2019, Haidilao đã liên tục xuất hiện trong danh sách các chuỗi nhà hàng hàng đầu thế giới, trở thành niềm tự hào của ngành ẩm thực Trung Hoa. Với phương châm “đổi mới không ngừng”, Haidilao luôn chú trọng đến những trải nghiệm khách hàng vượt trội, từ việc đưa các đặc quyền cho khách hàng đang chờ đợi, đến sự sáng tạo trong không gian ăn uống. Mỗi chi tiết tại Haidilao đều được chăm chút kỹ lưỡng, từ dịch vụ mát-xa lưng miễn phí, các món ăn nhẹ miễn phí trong lúc chờ đợi, cho đến quy trình đặt món qua iPad giúp khách hàng dễ dàng lựa chọn mà không gặp phải khó khăn về ngôn ngữ.\n'
          'Với giá trị thương hiệu vượt mức một tỷ đô la và sự chuẩn bị cho đợt IPO trị giá 700 triệu đô la tại Hồng Kông, Haidilao tiếp tục khẳng định tham vọng toàn cầu và cam kết mang đến những trải nghiệm ẩm thực đáng nhớ. Việc mở rộng tại Việt Nam là bước tiến tiếp theo trong hành trình phát triển của thương hiệu, đưa văn hóa lẩu Trung Hoa đến gần hơn với thực khách quốc tế.\n'
          'Haidilao không chỉ là một chuỗi nhà hàng, mà là một biểu tượng của sự sáng tạo, đổi mới và cam kết mang đến những trải nghiệm độc đáo cho khách hàng. Mỗi lần ghé thăm Haidilao, bạn không chỉ thưởng thức những món lẩu tuyệt hảo mà còn cảm nhận được sự chăm sóc, tận tâm trong từng chi tiết nhỏ nhất.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/ddeeaeb6-bf1c-4899-bafa-57f287234a2e_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_005",
      title: 'Thông tin về Haidilao Hùng Vương Plaza',
      content:
          'Lẩu Cà Chua: Với vị ngọt thanh tự nhiên từ cà chua tươi, xen lẫn chút chua dịu nhẹ, đây là lựa chọn “chân ái” cho mọi lứa tuổi. Nước lẩu này đặc biệt tôn lên vị ngọt của các loại hải sản tươi sống.\n'
          'Lẩu Dầu Cay (Mala): Dành cho những tín đồ ăn cay đích thực! Vị cay nồng đặc trưng của hoa tiêu Tứ Xuyên, tê tê đầu lưỡi nhưng lại cuốn hút lạ thường. Nhúng một miếng thịt dê mềm hay sách bò giòn sần sật vào nồi lẩu Mala thì không còn gì để chê.\n'
          'Lẩu Nấm: Một lựa chọn thanh mát, bổ dưỡng và nhẹ nhàng. Nước lẩu ngọt thơm từ các loại nấm quý, giúp cân bằng lại vị giác và cực kỳ tốt cho sức khỏe.\n'
          'Lẩu Thái (Tom Yum): Vị chua cay hài hòa, thơm lừng hương sả và lá chanh đặc trưng của ẩm thực Thái Lan, đánh thức mọi giác quan và khiến bạn không thể ngừng đũa.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7e47ea8d-0bec-4780-96d9-baf6fc9b869d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_006",
      title: 'Haidilao Ocean Park Hà Nội: Review, Menu, Giá & Đặt Bàn',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0ad29b77-1fc2-4999-9783-9d1f44e2a168_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_007",
      title: 'Địa Chỉ Haidilao Estella – Lẩu Ngon Tại TP.HCM',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0536dfc5-20e9-45a6-978d-640adc1242dd_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_008",
      title: 'LỢI THẾ “4 ĐƯỢC” DÀNH CHO FRANCHISE',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/c51eacfc-61e2-4204-845f-314584ceb807_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_009",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/a8855e50-9040-41b1-8690-9fd90907017c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_010",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0202a49e-d5ad-4196-bb2d-32b5c6de3ac9_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_011",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/70beeb1f-02b3-4f6e-a0b9-3748c0a8cb9c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_001",
      title:
          'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay! Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Thèm lẩu Haidilao nhưng không muốn ra ngoài? Đặt ngay lẩu Haidilao về nhà chỉ với vài thao tác đơn giản! Thưởng thức món lẩu tươi ngon, đầy đủ hương vị ngay tại không gian của bạn mà không cần phải di chuyển. Cùng haidilaovn.com khám phá thêm chi tiết dưới đây\n'
          'Một trong những lý do khiến Haidilao trở thành thương hiệu được ưa chuộng chính là sự tiện lợi trong việc đặt món. Bạn có thể dễ dàng đặt lẩu Haidilao về nhà chỉ với vài thao tác đơn giản qua ứng dụng di động hoặc website của Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/62438584-9271-4896-a34f-a2c28196dc17_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_002",
      title: 'Haidilao Đà Nẵng: Địa Chỉ, ?',
      content:
          'Haidilao, thương hiệu lẩu nổi tiếng từ Trung Quốc, đã gây sốt tại nhiều quốc gia và thành phố lớn. Mặc dù hiện tại chưa có chi nhánh Haidilao Đà Nẵng, nhưng sức hút của Haidilao vẫn khiến nhiều tín đồ ẩm thực nơi đây mong chờ sự xuất hiện của thương hiệu này. Cùng haidilaovn.com khám phá thêm về sự nổi bật của thương hiệu này nhé!',
      imageUrl:
          "https://img.lazcdn.com/us/domino/dbbefc6c-0834-465d-b06b-3de8ca81897d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_003",
      title: 'Cách Đặt Bàn Haidilao Dễ Dàng & Nhanh Chóng',
      content:
          'Nếu bạn đang tìm cách tránh phải chờ đợi lâu khi đến Haidilao, thì Cách Đặt Bàn Haidilao Và Các Tips Để Tránh Cảnh Chờ Đợi. Dưới Đây haidilaovn.com sẽ cung cấp cho bạn những thông tin hữu ích nhất để giải quyết vấn đề này nhé!\n'
          'Việc đặt bàn trước sẽ giúp bạn đảm bảo có chỗ ngồi ưng ý, tiết kiệm thời gian để thưởng thức những món lẩu thơm ngon mà không phải lo lắng về việc hết chỗ.\n'
          'Đặt bàn tại Haidilao trước khi đến là cách tuyệt vời để bạn có một trải nghiệm ẩm thực thoải mái mà không phải lo lắng về việc chờ đợi lâu. Đặc biệt vào những dịp lễ, Tết hoặc giờ cao điểm, việc đặt bàn trước càng trở nên quan trọng để bạn không phải xếp hàng. Dưới đây là các cách đơn giản và hiệu quả giúp bạn dễ dàng đặt chỗ tại Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7c11587b-e637-45e3-a77f-06a41c19485a_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_004",
      title: 'Haidilao – Lẩu Tươi Ngon, Trội Dịch Vụ 5 Sao',
      content:
          'Ra đời vào năm 1994 tại một quán nướng nhỏ ở Tứ Xuyên, Trung Quốc, Haidilao đã không ngừng phát triển và khẳng định mình là biểu tượng của văn hóa lẩu Trung Hoa. Từ một cửa hàng nhỏ, Haidilao đã vươn lên trở thành chuỗi nhà hàng lẩu nổi tiếng toàn cầu, với hơn 1.400 cơ sở tại 16 quốc gia trên bốn châu lục. Sự thành công này không chỉ đến từ hương vị đặc sắc của các món lẩu mà còn nhờ vào cam kết mang đến dịch vụ khách hàng xuất sắc và một không gian trải nghiệm đầy sáng tạo.\n'
          'Haidilao không chỉ là nơi để thưởng thức món lẩu nóng, mà còn là điểm đến mang đến những trải nghiệm ẩm thực độc đáo. Điều này được thể hiện rõ ràng qua sự sáng tạo không ngừng trong từng món ăn và dịch vụ, kết hợp hài hòa giữa truyền thống và hiện đại. Dù là một chuỗi nhà hàng nổi tiếng tại Trung Quốc, Haidilao cũng đã nhanh chóng chiếm lĩnh các thị trường quốc tế lớn như Singapore, Mỹ, Nhật Bản, Anh, Úc và nhiều quốc gia khác, với giá trị thương hiệu ngày càng được nâng cao.\n'
          'Kể từ năm 2019, Haidilao đã liên tục xuất hiện trong danh sách các chuỗi nhà hàng hàng đầu thế giới, trở thành niềm tự hào của ngành ẩm thực Trung Hoa. Với phương châm “đổi mới không ngừng”, Haidilao luôn chú trọng đến những trải nghiệm khách hàng vượt trội, từ việc đưa các đặc quyền cho khách hàng đang chờ đợi, đến sự sáng tạo trong không gian ăn uống. Mỗi chi tiết tại Haidilao đều được chăm chút kỹ lưỡng, từ dịch vụ mát-xa lưng miễn phí, các món ăn nhẹ miễn phí trong lúc chờ đợi, cho đến quy trình đặt món qua iPad giúp khách hàng dễ dàng lựa chọn mà không gặp phải khó khăn về ngôn ngữ.\n'
          'Với giá trị thương hiệu vượt mức một tỷ đô la và sự chuẩn bị cho đợt IPO trị giá 700 triệu đô la tại Hồng Kông, Haidilao tiếp tục khẳng định tham vọng toàn cầu và cam kết mang đến những trải nghiệm ẩm thực đáng nhớ. Việc mở rộng tại Việt Nam là bước tiến tiếp theo trong hành trình phát triển của thương hiệu, đưa văn hóa lẩu Trung Hoa đến gần hơn với thực khách quốc tế.\n'
          'Haidilao không chỉ là một chuỗi nhà hàng, mà là một biểu tượng của sự sáng tạo, đổi mới và cam kết mang đến những trải nghiệm độc đáo cho khách hàng. Mỗi lần ghé thăm Haidilao, bạn không chỉ thưởng thức những món lẩu tuyệt hảo mà còn cảm nhận được sự chăm sóc, tận tâm trong từng chi tiết nhỏ nhất.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/ddeeaeb6-bf1c-4899-bafa-57f287234a2e_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_005",
      title: 'Thông tin về Haidilao Hùng Vương Plaza',
      content:
          'Lẩu Cà Chua: Với vị ngọt thanh tự nhiên từ cà chua tươi, xen lẫn chút chua dịu nhẹ, đây là lựa chọn “chân ái” cho mọi lứa tuổi. Nước lẩu này đặc biệt tôn lên vị ngọt của các loại hải sản tươi sống.\n'
          'Lẩu Dầu Cay (Mala): Dành cho những tín đồ ăn cay đích thực! Vị cay nồng đặc trưng của hoa tiêu Tứ Xuyên, tê tê đầu lưỡi nhưng lại cuốn hút lạ thường. Nhúng một miếng thịt dê mềm hay sách bò giòn sần sật vào nồi lẩu Mala thì không còn gì để chê.\n'
          'Lẩu Nấm: Một lựa chọn thanh mát, bổ dưỡng và nhẹ nhàng. Nước lẩu ngọt thơm từ các loại nấm quý, giúp cân bằng lại vị giác và cực kỳ tốt cho sức khỏe.\n'
          'Lẩu Thái (Tom Yum): Vị chua cay hài hòa, thơm lừng hương sả và lá chanh đặc trưng của ẩm thực Thái Lan, đánh thức mọi giác quan và khiến bạn không thể ngừng đũa.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7e47ea8d-0bec-4780-96d9-baf6fc9b869d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_006",
      title: 'Haidilao Ocean Park Hà Nội: Review, Menu, Giá & Đặt Bàn',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0ad29b77-1fc2-4999-9783-9d1f44e2a168_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_007",
      title: 'Địa Chỉ Haidilao Estella – Lẩu Ngon Tại TP.HCM',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0536dfc5-20e9-45a6-978d-640adc1242dd_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_008",
      title: 'LỢI THẾ “4 ĐƯỢC” DÀNH CHO FRANCHISE',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/c51eacfc-61e2-4204-845f-314584ceb807_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_009",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/a8855e50-9040-41b1-8690-9fd90907017c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_010",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0202a49e-d5ad-4196-bb2d-32b5c6de3ac9_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_011",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/70beeb1f-02b3-4f6e-a0b9-3748c0a8cb9c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_001",
      title:
          'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay! Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Thèm lẩu Haidilao nhưng không muốn ra ngoài? Đặt ngay lẩu Haidilao về nhà chỉ với vài thao tác đơn giản! Thưởng thức món lẩu tươi ngon, đầy đủ hương vị ngay tại không gian của bạn mà không cần phải di chuyển. Cùng haidilaovn.com khám phá thêm chi tiết dưới đây\n'
          'Một trong những lý do khiến Haidilao trở thành thương hiệu được ưa chuộng chính là sự tiện lợi trong việc đặt món. Bạn có thể dễ dàng đặt lẩu Haidilao về nhà chỉ với vài thao tác đơn giản qua ứng dụng di động hoặc website của Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/62438584-9271-4896-a34f-a2c28196dc17_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_002",
      title: 'Haidilao Đà Nẵng: Địa Chỉ, ?',
      content:
          'Haidilao, thương hiệu lẩu nổi tiếng từ Trung Quốc, đã gây sốt tại nhiều quốc gia và thành phố lớn. Mặc dù hiện tại chưa có chi nhánh Haidilao Đà Nẵng, nhưng sức hút của Haidilao vẫn khiến nhiều tín đồ ẩm thực nơi đây mong chờ sự xuất hiện của thương hiệu này. Cùng haidilaovn.com khám phá thêm về sự nổi bật của thương hiệu này nhé!',
      imageUrl:
          "https://img.lazcdn.com/us/domino/dbbefc6c-0834-465d-b06b-3de8ca81897d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_003",
      title: 'Cách Đặt Bàn Haidilao Dễ Dàng & Nhanh Chóng',
      content:
          'Nếu bạn đang tìm cách tránh phải chờ đợi lâu khi đến Haidilao, thì Cách Đặt Bàn Haidilao Và Các Tips Để Tránh Cảnh Chờ Đợi. Dưới Đây haidilaovn.com sẽ cung cấp cho bạn những thông tin hữu ích nhất để giải quyết vấn đề này nhé!\n'
          'Việc đặt bàn trước sẽ giúp bạn đảm bảo có chỗ ngồi ưng ý, tiết kiệm thời gian để thưởng thức những món lẩu thơm ngon mà không phải lo lắng về việc hết chỗ.\n'
          'Đặt bàn tại Haidilao trước khi đến là cách tuyệt vời để bạn có một trải nghiệm ẩm thực thoải mái mà không phải lo lắng về việc chờ đợi lâu. Đặc biệt vào những dịp lễ, Tết hoặc giờ cao điểm, việc đặt bàn trước càng trở nên quan trọng để bạn không phải xếp hàng. Dưới đây là các cách đơn giản và hiệu quả giúp bạn dễ dàng đặt chỗ tại Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7c11587b-e637-45e3-a77f-06a41c19485a_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_004",
      title: 'Haidilao – Lẩu Tươi Ngon, Trội Dịch Vụ 5 Sao',
      content:
          'Ra đời vào năm 1994 tại một quán nướng nhỏ ở Tứ Xuyên, Trung Quốc, Haidilao đã không ngừng phát triển và khẳng định mình là biểu tượng của văn hóa lẩu Trung Hoa. Từ một cửa hàng nhỏ, Haidilao đã vươn lên trở thành chuỗi nhà hàng lẩu nổi tiếng toàn cầu, với hơn 1.400 cơ sở tại 16 quốc gia trên bốn châu lục. Sự thành công này không chỉ đến từ hương vị đặc sắc của các món lẩu mà còn nhờ vào cam kết mang đến dịch vụ khách hàng xuất sắc và một không gian trải nghiệm đầy sáng tạo.\n'
          'Haidilao không chỉ là nơi để thưởng thức món lẩu nóng, mà còn là điểm đến mang đến những trải nghiệm ẩm thực độc đáo. Điều này được thể hiện rõ ràng qua sự sáng tạo không ngừng trong từng món ăn và dịch vụ, kết hợp hài hòa giữa truyền thống và hiện đại. Dù là một chuỗi nhà hàng nổi tiếng tại Trung Quốc, Haidilao cũng đã nhanh chóng chiếm lĩnh các thị trường quốc tế lớn như Singapore, Mỹ, Nhật Bản, Anh, Úc và nhiều quốc gia khác, với giá trị thương hiệu ngày càng được nâng cao.\n'
          'Kể từ năm 2019, Haidilao đã liên tục xuất hiện trong danh sách các chuỗi nhà hàng hàng đầu thế giới, trở thành niềm tự hào của ngành ẩm thực Trung Hoa. Với phương châm “đổi mới không ngừng”, Haidilao luôn chú trọng đến những trải nghiệm khách hàng vượt trội, từ việc đưa các đặc quyền cho khách hàng đang chờ đợi, đến sự sáng tạo trong không gian ăn uống. Mỗi chi tiết tại Haidilao đều được chăm chút kỹ lưỡng, từ dịch vụ mát-xa lưng miễn phí, các món ăn nhẹ miễn phí trong lúc chờ đợi, cho đến quy trình đặt món qua iPad giúp khách hàng dễ dàng lựa chọn mà không gặp phải khó khăn về ngôn ngữ.\n'
          'Với giá trị thương hiệu vượt mức một tỷ đô la và sự chuẩn bị cho đợt IPO trị giá 700 triệu đô la tại Hồng Kông, Haidilao tiếp tục khẳng định tham vọng toàn cầu và cam kết mang đến những trải nghiệm ẩm thực đáng nhớ. Việc mở rộng tại Việt Nam là bước tiến tiếp theo trong hành trình phát triển của thương hiệu, đưa văn hóa lẩu Trung Hoa đến gần hơn với thực khách quốc tế.\n'
          'Haidilao không chỉ là một chuỗi nhà hàng, mà là một biểu tượng của sự sáng tạo, đổi mới và cam kết mang đến những trải nghiệm độc đáo cho khách hàng. Mỗi lần ghé thăm Haidilao, bạn không chỉ thưởng thức những món lẩu tuyệt hảo mà còn cảm nhận được sự chăm sóc, tận tâm trong từng chi tiết nhỏ nhất.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/ddeeaeb6-bf1c-4899-bafa-57f287234a2e_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_005",
      title: 'Thông tin về Haidilao Hùng Vương Plaza',
      content:
          'Lẩu Cà Chua: Với vị ngọt thanh tự nhiên từ cà chua tươi, xen lẫn chút chua dịu nhẹ, đây là lựa chọn “chân ái” cho mọi lứa tuổi. Nước lẩu này đặc biệt tôn lên vị ngọt của các loại hải sản tươi sống.\n'
          'Lẩu Dầu Cay (Mala): Dành cho những tín đồ ăn cay đích thực! Vị cay nồng đặc trưng của hoa tiêu Tứ Xuyên, tê tê đầu lưỡi nhưng lại cuốn hút lạ thường. Nhúng một miếng thịt dê mềm hay sách bò giòn sần sật vào nồi lẩu Mala thì không còn gì để chê.\n'
          'Lẩu Nấm: Một lựa chọn thanh mát, bổ dưỡng và nhẹ nhàng. Nước lẩu ngọt thơm từ các loại nấm quý, giúp cân bằng lại vị giác và cực kỳ tốt cho sức khỏe.\n'
          'Lẩu Thái (Tom Yum): Vị chua cay hài hòa, thơm lừng hương sả và lá chanh đặc trưng của ẩm thực Thái Lan, đánh thức mọi giác quan và khiến bạn không thể ngừng đũa.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7e47ea8d-0bec-4780-96d9-baf6fc9b869d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_006",
      title: 'Haidilao Ocean Park Hà Nội: Review, Menu, Giá & Đặt Bàn',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0ad29b77-1fc2-4999-9783-9d1f44e2a168_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_007",
      title: 'Địa Chỉ Haidilao Estella – Lẩu Ngon Tại TP.HCM',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0536dfc5-20e9-45a6-978d-640adc1242dd_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_008",
      title: 'LỢI THẾ “4 ĐƯỢC” DÀNH CHO FRANCHISE',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/c51eacfc-61e2-4204-845f-314584ceb807_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_009",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/a8855e50-9040-41b1-8690-9fd90907017c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_010",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0202a49e-d5ad-4196-bb2d-32b5c6de3ac9_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BannerModel(
      id: "banner_011",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/70beeb1f-02b3-4f6e-a0b9-3748c0a8cb9c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
  ];
}
