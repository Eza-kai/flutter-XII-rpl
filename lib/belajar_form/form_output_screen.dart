import 'package:flutter/material.dart';

class OutputFormScreen extends StatefulWidget {
  final String nama;
  final String jk;
  final String tglLahir;
  final String agama;

  const OutputFormScreen({
    Key? key,
    required this.nama,
    required this.jk,
    required this.tglLahir,
    required this.agama,
  }) : super(key: key);

  @override
  State<OutputFormScreen> createState() => _OutputFormScreenState();
}

class _OutputFormScreenState extends State<OutputFormScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.3),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutExpo,
    ));

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Color softBlue = const Color(0xFFB3E5FC);
    Color white = Colors.white;
    Color borderBlue = const Color(0xFF64B5F6);

    return Scaffold(
      backgroundColor: softBlue,
      appBar: AppBar(
        title: const Text('✨ Data Formulir'),
        backgroundColor: softBlue,
        elevation: 0,
        centerTitle: true,
      ),
      body: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _offsetAnimation,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Center(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: white.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: borderBlue, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.blueAccent.withOpacity(0.25),
                        blurRadius: 30,
                        offset: const Offset(0, 16),
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/Arona.jpg',
                          width: 90,
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        '📄 Data Pribadi',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 24),
                      _buildDataRow(Icons.person, 'Nama Lengkap', widget.nama),
                      _buildDataRow(Icons.wc, 'Jenis Kelamin', widget.jk),
                      _buildDataRow(Icons.cake, 'Tanggal Lahir', widget.tglLahir),
                      _buildDataRow(Icons.auto_awesome, 'Agama', widget.agama),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDataRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue.withOpacity(0.25),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.blueAccent.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(2, 4),
                )
              ],
            ),
            padding: const EdgeInsets.all(10),
            child: Icon(icon, color: Colors.blueAccent),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value.isEmpty ? 'Tidak diisi' : value,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
