import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AccountInfoPage extends StatelessWidget {
  const AccountInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final User? user =
        FirebaseAuth.instance.currentUser; // Obtiene el usuario actual

    return Scaffold(
      appBar: AppBar(
        title: const Text('Información de la cuenta'),
        backgroundColor: Colors.pink,
      ),
      body: user != null ? _buildUserInfo(user, context) : _buildNoUserInfo(),
    );
  }

  Widget _buildUserInfo(User user, BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Muestra la imagen de perfil
          Center(
            child: CircleAvatar(
              radius: 50, // Ajusta el tamaño del avatar
              backgroundImage: user.photoURL != null
                  ? NetworkImage(user.photoURL!)
                  : const AssetImage('lib/icons/default_avatar.png')
                      as ImageProvider,
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Información de la Cuenta',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          // Tarjeta para mostrar la información del usuario
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow('Nombre:', user.displayName ?? 'No disponible'),
                  _buildInfoRow('Email:', user.email ?? 'No disponible'),
                  _buildInfoRow(
                      'Teléfono:', user.phoneNumber ?? 'No disponible'),
                  _buildInfoRow(
                      'Verificado:', user.emailVerified ? 'Sí' : 'No'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Método para construir cada fila de información
  Widget _buildInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.black54,
            ),
          ),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNoUserInfo() {
    return Center(
      child: const Text(
        'No has iniciado sesión.',
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
