import 'package:redplus_ft/domain/model/brand_detail.dart';

class MockBrandDetail {
  List<BrandDetailModel> getListBrandDetail() {
    return mockListBrandDetail;
  }

  List<BrandDetailModel> getListBrandDetailPaging(int page, int limit) {
    try {
      return mockListBrandDetails
          .getRange((page - 1) * limit, page * limit)
          .toList();
    } catch (e) {
      return [];
    }
  }

  List<BrandDetailModel> mockListBrandDetail = [
    BrandDetailModel(
      id: "BrandDetail_001",
      title:
          'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay! Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Thèm lẩu Haidilao nhưng không muốn ra ngoài? Đặt ngay lẩu Haidilao về nhà chỉ với vài thao tác đơn giản! Thưởng thức món lẩu tươi ngon, đầy đủ hương vị ngay tại không gian của bạn mà không cần phải di chuyển. Cùng haidilaovn.com khám phá thêm chi tiết dưới đây\n'
          'Một trong những lý do khiến Haidilao trở thành thương hiệu được ưa chuộng chính là sự tiện lợi trong việc đặt món. Bạn có thể dễ dàng đặt lẩu Haidilao về nhà chỉ với vài thao tác đơn giản qua ứng dụng di động hoặc website của Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/62438584-9271-4896-a34f-a2c28196dc17_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BrandDetailModel(
      id: "BrandDetail_002",
      title: 'Haidilao Đà Nẵng: Địa Chỉ, ?',
      content:
          'Haidilao, thương hiệu lẩu nổi tiếng từ Trung Quốc, đã gây sốt tại nhiều quốc gia và thành phố lớn. Mặc dù hiện tại chưa có chi nhánh Haidilao Đà Nẵng, nhưng sức hút của Haidilao vẫn khiến nhiều tín đồ ẩm thực nơi đây mong chờ sự xuất hiện của thương hiệu này. Cùng haidilaovn.com khám phá thêm về sự nổi bật của thương hiệu này nhé!',
      imageUrl:
          "https://img.lazcdn.com/us/domino/dbbefc6c-0834-465d-b06b-3de8ca81897d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BrandDetailModel(
      id: "BrandDetail_003",
      title: 'Cách Đặt Bàn Haidilao Dễ Dàng & Nhanh Chóng',
      content:
          'Nếu bạn đang tìm cách tránh phải chờ đợi lâu khi đến Haidilao, thì Cách Đặt Bàn Haidilao Và Các Tips Để Tránh Cảnh Chờ Đợi. Dưới Đây haidilaovn.com sẽ cung cấp cho bạn những thông tin hữu ích nhất để giải quyết vấn đề này nhé!\n'
          'Việc đặt bàn trước sẽ giúp bạn đảm bảo có chỗ ngồi ưng ý, tiết kiệm thời gian để thưởng thức những món lẩu thơm ngon mà không phải lo lắng về việc hết chỗ.\n'
          'Đặt bàn tại Haidilao trước khi đến là cách tuyệt vời để bạn có một trải nghiệm ẩm thực thoải mái mà không phải lo lắng về việc chờ đợi lâu. Đặc biệt vào những dịp lễ, Tết hoặc giờ cao điểm, việc đặt bàn trước càng trở nên quan trọng để bạn không phải xếp hàng. Dưới đây là các cách đơn giản và hiệu quả giúp bạn dễ dàng đặt chỗ tại Haidilao',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7c11587b-e637-45e3-a77f-06a41c19485a_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BrandDetailModel(
      id: "BrandDetail_004",
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
    BrandDetailModel(
      id: "BrandDetail_005",
      title: 'Thông tin về Haidilao Hùng Vương Plaza',
      content:
          'Lẩu Cà Chua: Với vị ngọt thanh tự nhiên từ cà chua tươi, xen lẫn chút chua dịu nhẹ, đây là lựa chọn “chân ái” cho mọi lứa tuổi. Nước lẩu này đặc biệt tôn lên vị ngọt của các loại hải sản tươi sống.\n'
          'Lẩu Dầu Cay (Mala): Dành cho những tín đồ ăn cay đích thực! Vị cay nồng đặc trưng của hoa tiêu Tứ Xuyên, tê tê đầu lưỡi nhưng lại cuốn hút lạ thường. Nhúng một miếng thịt dê mềm hay sách bò giòn sần sật vào nồi lẩu Mala thì không còn gì để chê.\n'
          'Lẩu Nấm: Một lựa chọn thanh mát, bổ dưỡng và nhẹ nhàng. Nước lẩu ngọt thơm từ các loại nấm quý, giúp cân bằng lại vị giác và cực kỳ tốt cho sức khỏe.\n'
          'Lẩu Thái (Tom Yum): Vị chua cay hài hòa, thơm lừng hương sả và lá chanh đặc trưng của ẩm thực Thái Lan, đánh thức mọi giác quan và khiến bạn không thể ngừng đũa.',
      imageUrl:
          "https://img.lazcdn.com/us/domino/7e47ea8d-0bec-4780-96d9-baf6fc9b869d_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BrandDetailModel(
      id: "BrandDetail_006",
      title: 'Haidilao Ocean Park Hà Nội: Review, Menu, Giá & Đặt Bàn',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0ad29b77-1fc2-4999-9783-9d1f44e2a168_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BrandDetailModel(
      id: "BrandDetail_007",
      title: 'Địa Chỉ Haidilao Estella – Lẩu Ngon Tại TP.HCM',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0536dfc5-20e9-45a6-978d-640adc1242dd_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BrandDetailModel(
      id: "BrandDetail_008",
      title: 'LỢI THẾ “4 ĐƯỢC” DÀNH CHO FRANCHISE',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/c51eacfc-61e2-4204-845f-314584ceb807_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BrandDetailModel(
      id: "BrandDetail_009",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/a8855e50-9040-41b1-8690-9fd90907017c_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BrandDetailModel(
      id: "BrandDetail_010",
      title: 'Cách Đặt Lẩu Haidilao Về Nhà Tiện Lợi | Thưởng Thức Ngay!',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          "https://img.lazcdn.com/us/domino/0202a49e-d5ad-4196-bb2d-32b5c6de3ac9_VN-1976-688.jpg_2200x2200q80.jpg_.avif",
    ),
    BrandDetailModel(
      id: "BrandDetail_011",
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

  List<BrandDetailModel> mockListBrandDetails = [
    BrandDetailModel(
      id: "BrandDetail_001",
      brandId: 'brand_003',
      districtId: 'district_007',
      title: 'Khao Lao Cresent Mall',
      content: '',
      imageUrl:
          'https://pastaxi-manager.onepas.vn/content/uploads/articles/dungtv/CHU%C3%94%CC%83I%20KHAO%20LAO/chuoi-nha-hang-khao-lao-14.jpg',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://khaolao.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_002",
      brandId: 'brand_005',
      districtId: 'district_007',
      title: 'King BBQ SC Vivo City',
      content:
          'Tại King BBQ, chúng tôi không chỉ mang đến những bữa ăn thông thường, mà còn là hành trình trải nghiệm ẩm thực Hàn Quốc đích thực. Mỗi món nướng trong Menu Gọi Món đều được chế biến tỉ mỉ bởi đội ngũ đầu bếp tài hoa, sử dụng nguyên liệu thượng hạng và bí quyết tẩm ướp độc đáo, tái hiện hương vị cung đình trứ danh.\n'
          'Diềm thăn bò Prime là sự kết hợp tinh tế giữa phần thịt nạc mềm mại, những vân mỡ béo ngậy và lớp gân mỏng giòn sần sật. Khi nướng, phần mỡ tan chảy, quyện vào từng thớ thịt, tạo nên hương vị ngọt thanh, béo ngậy, tan chảy trong miệng. Mỗi miếng diềm thăn là một bản giao hưởng hương vị độc đáo, mang đến trải nghiệm ẩm thực khó cưỡng',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-king-bbq-deli-royal-city-nguyen-trai-slide-10-normal-125375513102.webp',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://kingbbq.vn/thuc-don-mien-nam/',
    ),
    BrandDetailModel(
      id: "BrandDetail_003",
      brandId: 'brand_005',
      districtId: 'district_007',
      title: 'King BBQ Cresent Mall',
      content:
          'Tại King BBQ, chúng tôi không chỉ mang đến những bữa ăn thông thường, mà còn là hành trình trải nghiệm ẩm thực Hàn Quốc đích thực. Mỗi món nướng trong Menu Gọi Món đều được chế biến tỉ mỉ bởi đội ngũ đầu bếp tài hoa, sử dụng nguyên liệu thượng hạng và bí quyết tẩm ướp độc đáo, tái hiện hương vị cung đình trứ danh.\n'
          'Diềm thăn bò Prime là sự kết hợp tinh tế giữa phần thịt nạc mềm mại, những vân mỡ béo ngậy và lớp gân mỏng giòn sần sật. Khi nướng, phần mỡ tan chảy, quyện vào từng thớ thịt, tạo nên hương vị ngọt thanh, béo ngậy, tan chảy trong miệng. Mỗi miếng diềm thăn là một bản giao hưởng hương vị độc đáo, mang đến trải nghiệm ẩm thực khó cưỡng',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-king-bbq-deli-royal-city-nguyen-trai-slide-10-normal-125375513102.webp',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://kingbbq.vn/thuc-don-mien-nam/',
    ),
    BrandDetailModel(
      id: "BrandDetail_004",
      brandId: 'brand_004',
      districtId: 'district_006',
      title: 'Sushi kei Vạn Hạnh mall',
      content: '',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV_O8bAQRutzasBECXmZzvsqP4nqPkGo7RsQ&s',
      address: '11 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://vanhanhmall.com/',
    ),
    BrandDetailModel(
      id: "BrandDetail_005",
      brandId: 'brand_002',
      districtId: 'district_006',
      title: 'Hotpot Story Vạn Hạnh mall',
      content:
          'Hotpot Story là chuỗi nhà hàng buffet lẩu quốc tế nổi tiếng tại TP.HCM và Việt Nam, chuyên phục vụ các hương vị lẩu châu Á đặc trưng từ Thái, Hàn, Nhật, Trung Quốc như Tomyum, Bulgogi, Tứ Xuyên, Miso và Thảo dược. Với nguyên liệu tươi ngon (thịt bò Mỹ, rau Đà Lạt), không gian hiện đại, đây là điểm hẹn quen thuộc cho gia đình và bạn bè',
      imageUrl:
          'https://oms.hotdeal.vn/images/editors/sources/000363119735/363119-363119-body%20(2).jpg',
      address: '11 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://vanhanhmall.com/',
    ),
    BrandDetailModel(
      id: "BrandDetail_006",
      brandId: 'brand_003',
      districtId: 'district_005',
      title: 'Khao Lao Vạn Hạnh Mall',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          'https://pastaxi-manager.onepas.vn/content/uploads/articles/dungtv/CHU%C3%94%CC%83I%20KHAO%20LAO/chuoi-nha-hang-khao-lao-14.jpg',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://khaolao.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_007",
      brandId: 'brand_008',
      districtId: 'district_005',
      title: 'Meiwei Vạn Hạnh Mall',
      content:
          'Xuyên suốt chiều dài hàng ngàn năm lịch sử, và chịu ảnh hưởng từ nhiều vùng miền văn hóa khác nhau, ẩm thực Trung Hoa luôn mang đến nhiều bất ngờ cho giới sành ăn bởi sự độc đáo và tinh tế trong từng món ăn.',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-meiwei-giga-mall-1-normal-1880472249613.webp',
      address:
          'Số 05-10 & 05-11, Giga Mall, Số 240 - 242 Phạm Văn Đồng, P.Hiệp Bình Chánh, Q. Thủ Đức',
      phone: '+1900234546',
      openHour: '10:00 – 22:00',
      link: 'http://meiwei.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_008",
      brandId: 'brand_007',
      districtId: 'district_005',
      title: 'Tasaki Vạn Hạnh Mall',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          'https://cdn.pastaxi-manager.onepas.vn/content/uploads/articles/huyen/tasakivanhanh/New%20folder/nha-hang-tasaki-bbq-van-hanh-mall-1up.jpg',
      address:
          'Số 05-10 & 05-11, Giga Mall, Số 240 - 242 Phạm Văn Đồng, P.Hiệp Bình Chánh, Q. Thủ Đức',
      phone: '02873032739',
      openHour: '10:00 – 22:00',
      link: 'https://tasaki.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_009",
      brandId: 'brand_006',
      districtId: 'district_011',
      title: 'Buk Buk Lê Đức Thọ',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-buk-buk-le-duc-tho-slide-1-normal-51314658790.webp',
      address: 'CT 2A-B Lê Đức Thọ, Tầng 1, Q. Nam Từ Liêm',
      phone: '0931006005',
      openHour: '10:00 – 22:00',
      link: 'http://bukbuk.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_010",
      brandId: 'brand_009',
      districtId: 'district_011',
      title: 'Tian Xin - Hong Kong Handmade Dessert (Vạn Hạnh Mall)',
      content:
          'Nước lẫu đậm đà, các bạn nv nhiệt tình dễ thương, t7 cn thì có ca múa. Không gian ấm cúng. Set menu combo thì hơi bị giới hạn & nhìn thực đơn hơi phân khúc tầm cao.',
      imageUrl:
          'https://chiefeater.com/wp-content/uploads/2024/09/tian_xin_lou_sep2024_leemun_01.jpg',
      address:
          'Lô 5-11, Tầng 5, TTTM, 11 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh 700000, Việt Nam',
      phone: '02873092955',
      openHour: '10:00 – 22:00',
      link: 'https://tianxin.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_011",
      brandId: 'brand_003',
      districtId: 'district_011',
      title: 'Khao Lao Cresent Mall',
      content: '',
      imageUrl:
          'https://pastaxi-manager.onepas.vn/content/uploads/articles/dungtv/CHU%C3%94%CC%83I%20KHAO%20LAO/chuoi-nha-hang-khao-lao-14.jpg',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://khaolao.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_012",
      brandId: 'brand_005',
      districtId: 'district_08',
      title: 'King BBQ SC Vivo City',
      content:
          'Tại King BBQ, chúng tôi không chỉ mang đến những bữa ăn thông thường, mà còn là hành trình trải nghiệm ẩm thực Hàn Quốc đích thực. Mỗi món nướng trong Menu Gọi Món đều được chế biến tỉ mỉ bởi đội ngũ đầu bếp tài hoa, sử dụng nguyên liệu thượng hạng và bí quyết tẩm ướp độc đáo, tái hiện hương vị cung đình trứ danh.\n'
          'Diềm thăn bò Prime là sự kết hợp tinh tế giữa phần thịt nạc mềm mại, những vân mỡ béo ngậy và lớp gân mỏng giòn sần sật. Khi nướng, phần mỡ tan chảy, quyện vào từng thớ thịt, tạo nên hương vị ngọt thanh, béo ngậy, tan chảy trong miệng. Mỗi miếng diềm thăn là một bản giao hưởng hương vị độc đáo, mang đến trải nghiệm ẩm thực khó cưỡng',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-king-bbq-deli-royal-city-nguyen-trai-slide-10-normal-125375513102.webp',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://kingbbq.vn/thuc-don-mien-nam/',
    ),
    BrandDetailModel(
      id: "BrandDetail_013",
      brandId: 'brand_005',
      districtId: 'district_08',
      title: 'King BBQ Cresent Mall',
      content:
          'Tại King BBQ, chúng tôi không chỉ mang đến những bữa ăn thông thường, mà còn là hành trình trải nghiệm ẩm thực Hàn Quốc đích thực. Mỗi món nướng trong Menu Gọi Món đều được chế biến tỉ mỉ bởi đội ngũ đầu bếp tài hoa, sử dụng nguyên liệu thượng hạng và bí quyết tẩm ướp độc đáo, tái hiện hương vị cung đình trứ danh.\n'
          'Diềm thăn bò Prime là sự kết hợp tinh tế giữa phần thịt nạc mềm mại, những vân mỡ béo ngậy và lớp gân mỏng giòn sần sật. Khi nướng, phần mỡ tan chảy, quyện vào từng thớ thịt, tạo nên hương vị ngọt thanh, béo ngậy, tan chảy trong miệng. Mỗi miếng diềm thăn là một bản giao hưởng hương vị độc đáo, mang đến trải nghiệm ẩm thực khó cưỡng',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-king-bbq-deli-royal-city-nguyen-trai-slide-10-normal-125375513102.webp',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://kingbbq.vn/thuc-don-mien-nam/',
    ),
    BrandDetailModel(
      id: "BrandDetail_014",
      brandId: 'brand_004',
      districtId: 'district_08',
      title: 'Sushi kei Vạn Hạnh mall',
      content: '',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV_O8bAQRutzasBECXmZzvsqP4nqPkGo7RsQ&s',
      address: '11 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://vanhanhmall.com/',
    ),
    BrandDetailModel(
      id: "BrandDetail_015",
      brandId: 'brand_002',
      districtId: 'district_009',
      title: 'Hotpot Story Vạn Hạnh mall',
      content:
          'Hotpot Story là chuỗi nhà hàng buffet lẩu quốc tế nổi tiếng tại TP.HCM và Việt Nam, chuyên phục vụ các hương vị lẩu châu Á đặc trưng từ Thái, Hàn, Nhật, Trung Quốc như Tomyum, Bulgogi, Tứ Xuyên, Miso và Thảo dược. Với nguyên liệu tươi ngon (thịt bò Mỹ, rau Đà Lạt), không gian hiện đại, đây là điểm hẹn quen thuộc cho gia đình và bạn bè',
      imageUrl:
          'https://oms.hotdeal.vn/images/editors/sources/000363119735/363119-363119-body%20(2).jpg',
      address: '11 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://vanhanhmall.com/',
    ),
    BrandDetailModel(
      id: "BrandDetail_016",
      brandId: 'brand_003',
      districtId: 'district_009',
      title: 'Khao Lao Vạn Hạnh Mall',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          'https://pastaxi-manager.onepas.vn/content/uploads/articles/dungtv/CHU%C3%94%CC%83I%20KHAO%20LAO/chuoi-nha-hang-khao-lao-14.jpg',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://khaolao.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_017",
      brandId: 'brand_008',
      districtId: 'district_009',
      title: 'Meiwei Vạn Hạnh Mall',
      content:
          'Xuyên suốt chiều dài hàng ngàn năm lịch sử, và chịu ảnh hưởng từ nhiều vùng miền văn hóa khác nhau, ẩm thực Trung Hoa luôn mang đến nhiều bất ngờ cho giới sành ăn bởi sự độc đáo và tinh tế trong từng món ăn.',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-meiwei-giga-mall-1-normal-1880472249613.webp',
      address:
          'Số 05-10 & 05-11, Giga Mall, Số 240 - 242 Phạm Văn Đồng, P.Hiệp Bình Chánh, Q. Thủ Đức',
      phone: '+1900234546',
      openHour: '10:00 – 22:00',
      link: 'http://meiwei.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_018",
      brandId: 'brand_007',
      districtId: 'district_010',
      title: 'Tasaki Vạn Hạnh Mall',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          'https://cdn.pastaxi-manager.onepas.vn/content/uploads/articles/huyen/tasakivanhanh/New%20folder/nha-hang-tasaki-bbq-van-hanh-mall-1up.jpg',
      address:
          'Số 05-10 & 05-11, Giga Mall, Số 240 - 242 Phạm Văn Đồng, P.Hiệp Bình Chánh, Q. Thủ Đức',
      phone: '02873032739',
      openHour: '10:00 – 22:00',
      link: 'https://tasaki.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_019",
      brandId: 'brand_006',
      districtId: 'district_010',
      title: 'Buk Buk Lê Đức Thọ',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-buk-buk-le-duc-tho-slide-1-normal-51314658790.webp',
      address: 'CT 2A-B Lê Đức Thọ, Tầng 1, Q. Nam Từ Liêm',
      phone: '0931006005',
      openHour: '10:00 – 22:00',
      link: 'http://bukbuk.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_020",
      brandId: 'brand_009',
      districtId: 'district_010',
      title: 'Tian Xin - Hong Kong Handmade Dessert (Vạn Hạnh Mall)',
      content:
          'Nước lẫu đậm đà, các bạn nv nhiệt tình dễ thương, t7 cn thì có ca múa. Không gian ấm cúng. Set menu combo thì hơi bị giới hạn & nhìn thực đơn hơi phân khúc tầm cao.',
      imageUrl:
          'https://chiefeater.com/wp-content/uploads/2024/09/tian_xin_lou_sep2024_leemun_01.jpg',
      address:
          'Lô 5-11, Tầng 5, TTTM, 11 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh 700000, Việt Nam',
      phone: '02873092955',
      openHour: '10:00 – 22:00',
      link: 'https://tianxin.vn/',
    ),

    BrandDetailModel(
      id: "BrandDetail_021",
      brandId: 'brand_003',
      districtId: 'district_001',
      title: 'Khao Lao Cresent Mall',
      content: '',
      imageUrl:
          'https://pastaxi-manager.onepas.vn/content/uploads/articles/dungtv/CHU%C3%94%CC%83I%20KHAO%20LAO/chuoi-nha-hang-khao-lao-14.jpg',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://khaolao.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_022",
      brandId: 'brand_005',
      districtId: 'district_001',
      title: 'King BBQ SC Vivo City',
      content:
          'Tại King BBQ, chúng tôi không chỉ mang đến những bữa ăn thông thường, mà còn là hành trình trải nghiệm ẩm thực Hàn Quốc đích thực. Mỗi món nướng trong Menu Gọi Món đều được chế biến tỉ mỉ bởi đội ngũ đầu bếp tài hoa, sử dụng nguyên liệu thượng hạng và bí quyết tẩm ướp độc đáo, tái hiện hương vị cung đình trứ danh.\n'
          'Diềm thăn bò Prime là sự kết hợp tinh tế giữa phần thịt nạc mềm mại, những vân mỡ béo ngậy và lớp gân mỏng giòn sần sật. Khi nướng, phần mỡ tan chảy, quyện vào từng thớ thịt, tạo nên hương vị ngọt thanh, béo ngậy, tan chảy trong miệng. Mỗi miếng diềm thăn là một bản giao hưởng hương vị độc đáo, mang đến trải nghiệm ẩm thực khó cưỡng',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-king-bbq-deli-royal-city-nguyen-trai-slide-10-normal-125375513102.webp',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://kingbbq.vn/thuc-don-mien-nam/',
    ),
    BrandDetailModel(
      id: "BrandDetail_023",
      brandId: 'brand_005',
      districtId: 'district_001',
      title: 'King BBQ Cresent Mall',
      content:
          'Tại King BBQ, chúng tôi không chỉ mang đến những bữa ăn thông thường, mà còn là hành trình trải nghiệm ẩm thực Hàn Quốc đích thực. Mỗi món nướng trong Menu Gọi Món đều được chế biến tỉ mỉ bởi đội ngũ đầu bếp tài hoa, sử dụng nguyên liệu thượng hạng và bí quyết tẩm ướp độc đáo, tái hiện hương vị cung đình trứ danh.\n'
          'Diềm thăn bò Prime là sự kết hợp tinh tế giữa phần thịt nạc mềm mại, những vân mỡ béo ngậy và lớp gân mỏng giòn sần sật. Khi nướng, phần mỡ tan chảy, quyện vào từng thớ thịt, tạo nên hương vị ngọt thanh, béo ngậy, tan chảy trong miệng. Mỗi miếng diềm thăn là một bản giao hưởng hương vị độc đáo, mang đến trải nghiệm ẩm thực khó cưỡng',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-king-bbq-deli-royal-city-nguyen-trai-slide-10-normal-125375513102.webp',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://kingbbq.vn/thuc-don-mien-nam/',
    ),
    BrandDetailModel(
      id: "BrandDetail_024",
      brandId: 'brand_004',
      districtId: 'district_001',
      title: 'Sushi kei Vạn Hạnh mall',
      content: '',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSV_O8bAQRutzasBECXmZzvsqP4nqPkGo7RsQ&s',
      address: '11 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://vanhanhmall.com/',
    ),
    BrandDetailModel(
      id: "BrandDetail_025",
      brandId: 'brand_002',
      districtId: 'district_002',
      title: 'Hotpot Story Vạn Hạnh mall',
      content:
          'Hotpot Story là chuỗi nhà hàng buffet lẩu quốc tế nổi tiếng tại TP.HCM và Việt Nam, chuyên phục vụ các hương vị lẩu châu Á đặc trưng từ Thái, Hàn, Nhật, Trung Quốc như Tomyum, Bulgogi, Tứ Xuyên, Miso và Thảo dược. Với nguyên liệu tươi ngon (thịt bò Mỹ, rau Đà Lạt), không gian hiện đại, đây là điểm hẹn quen thuộc cho gia đình và bạn bè',
      imageUrl:
          'https://oms.hotdeal.vn/images/editors/sources/000363119735/363119-363119-body%20(2).jpg',
      address: '11 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://vanhanhmall.com/',
    ),
    BrandDetailModel(
      id: "BrandDetail_026",
      brandId: 'brand_003',
      districtId: 'district_002',
      title: 'Khao Lao Vạn Hạnh Mall',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          'https://pastaxi-manager.onepas.vn/content/uploads/articles/dungtv/CHU%C3%94%CC%83I%20KHAO%20LAO/chuoi-nha-hang-khao-lao-14.jpg',
      address:
          '101 Đ. Tôn Dật Tiên, phường Tân Mỹ, Quận 7, Thành phố Hồ Chí Minh',
      phone: '028 3859 6666',
      openHour: '10:00 – 22:00',
      link: 'https://khaolao.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_027",
      brandId: 'brand_008',
      districtId: 'district_003',
      title: 'Meiwei Vạn Hạnh Mall',
      content:
          'Xuyên suốt chiều dài hàng ngàn năm lịch sử, và chịu ảnh hưởng từ nhiều vùng miền văn hóa khác nhau, ẩm thực Trung Hoa luôn mang đến nhiều bất ngờ cho giới sành ăn bởi sự độc đáo và tinh tế trong từng món ăn.',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-meiwei-giga-mall-1-normal-1880472249613.webp',
      address:
          'Số 05-10 & 05-11, Giga Mall, Số 240 - 242 Phạm Văn Đồng, P.Hiệp Bình Chánh, Q. Thủ Đức',
      phone: '+1900234546',
      openHour: '10:00 – 22:00',
      link: 'http://meiwei.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_028",
      brandId: 'brand_007',
      districtId: 'district_003',
      title: 'Tasaki Vạn Hạnh Mall',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          'https://cdn.pastaxi-manager.onepas.vn/content/uploads/articles/huyen/tasakivanhanh/New%20folder/nha-hang-tasaki-bbq-van-hanh-mall-1up.jpg',
      address:
          'Số 05-10 & 05-11, Giga Mall, Số 240 - 242 Phạm Văn Đồng, P.Hiệp Bình Chánh, Q. Thủ Đức',
      phone: '02873032739',
      openHour: '10:00 – 22:00',
      link: 'https://tasaki.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_029",
      brandId: 'brand_006',
      districtId: 'district_003',
      title: 'Buk Buk Lê Đức Thọ',
      content:
          'Tọa lạc tại “Quận Ocean” sầm uất phía Đông thủ đô, Haidilao Ocean Park đã nhanh chóng trở thành điểm hẹn ẩm thực không thể bỏ lỡ của người dân Hà Nội. Nổi bật với không gian hiện đại, dịch vụ chăm sóc khách hàng đỉnh cao và thực đơn lẩu trứ danh, đây là lựa chọn hoàn hảo cho mọi cuộc vui từ hẹn hò, sum họp gia đình đến tụ tập bạn bè.\n'
          'Hãy cùng Haidilao khám phá tất tần tật về chi nhánh Haidilao Vincom Ocean Park Gia Lâm trong bài viết này nhé!\n'
          'Nằm trong lòng đại đô thị hiện đại, Haidilao Ocean Park sở hữu một không gian rộng rãi, thoáng đãng với thiết kế sang trọng nhưng không kém phần ấm cúng. Các dãy bàn được bố trí hợp lý, tạo ra những khoảng không gian riêng tư cần thiết, dù bạn đi hai người hay một nhóm đông.\n'
          'Điểm cộng lớn nhất vẫn là dịch vụ chăm sóc khách hàng “thần thánh” làm nên thương hiệu Haidilao. Từ nhân viên chào đón, hướng dẫn tận tình, cho đến các dịch vụ miễn phí như làm móng, đồ ăn nhẹ trong lúc chờ… tất cả đều góp phần tạo nên một trải nghiệm ẩm thực trọn vẹn và khác biệt.\n',
      imageUrl:
          'https://pasgo.vn/Upload/anh-chi-tiet/nha-hang-buk-buk-le-duc-tho-slide-1-normal-51314658790.webp',
      address: 'CT 2A-B Lê Đức Thọ, Tầng 1, Q. Nam Từ Liêm',
      phone: '0931006005',
      openHour: '10:00 – 22:00',
      link: 'http://bukbuk.vn/',
    ),
    BrandDetailModel(
      id: "BrandDetail_030",
      brandId: 'brand_009',
      districtId: 'district_003',
      title: 'Tian Xin - Hong Kong Handmade Dessert (Vạn Hạnh Mall)',
      content:
          'Nước lẫu đậm đà, các bạn nv nhiệt tình dễ thương, t7 cn thì có ca múa. Không gian ấm cúng. Set menu combo thì hơi bị giới hạn & nhìn thực đơn hơi phân khúc tầm cao.',
      imageUrl:
          'https://chiefeater.com/wp-content/uploads/2024/09/tian_xin_lou_sep2024_leemun_01.jpg',
      address:
          'Lô 5-11, Tầng 5, TTTM, 11 Sư Vạn Hạnh, Phường 12, Quận 10, Thành phố Hồ Chí Minh 700000, Việt Nam',
      phone: '02873092955',
      openHour: '10:00 – 22:00',
      link: 'https://tianxin.vn/',
    ),
  ];
}
