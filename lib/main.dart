import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // SafeArea giúp giao diện không bị đè bởi tai thỏ, camera của điện thoại
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 1. Thanh điều hướng trên cùng (Nút Back và Nút Edit)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Nút mũi tên quay lại bên trái
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black54),
                      onPressed: () {},
                    ),
                  ),
                  // Nút chỉnh sửa bên phải
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.edit_outlined, color: Colors.green),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),

              // Khoảng cách từ thanh điều hướng xuống ảnh đại diện
              const SizedBox(height: 60),

              // 2. Ảnh đại diện hình tròn (CircleAvatar)
              Center(
                child: Container(
                  padding: const EdgeInsets.all(4), // Tạo viền ngoài nhẹ
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    shape: BoxShape.circle,
                  ),
                  child: const CircleAvatar(
                    radius: 70, // Độ lớn của ảnh đại diện
                    // Thay link ảnh bằng ảnh bất kỳ bạn muốn hoặc dùng NetworkImage mẫu dưới đây
                    backgroundImage: AssetImage('assets/images/ngua.jpg'),
                  ),
                ),
              ),

              // Khoảng cách giữa ảnh và Tên
              const SizedBox(height: 24),

              // 3. Hiển thị Tên (Chữ đậm)
              const Text(
                'Nguyễn Quốc Thái',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),

              // Khoảng cách nhỏ giữa Tên và MSSV
              const SizedBox(height: 8),

              // 4. Hiển thị Mã số sinh viên
              const Text(
                'MSSV: 087206004822',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  letterSpacing: 0.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
