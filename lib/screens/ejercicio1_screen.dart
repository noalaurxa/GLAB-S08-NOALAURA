import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/items_data.dart';
import '../models/categoria_item.dart';

class Ejercicio1Screen extends StatefulWidget {
  const Ejercicio1Screen({super.key});

  @override
  State<Ejercicio1Screen> createState() => _Ejercicio1ScreenState();
}

class _Ejercicio1ScreenState extends State<Ejercicio1Screen> {
  // Mapa que agrupa items por categoría
  final Map<String, List<CategoriaItem>> itemsPorCategoria = {
    'alimento': todosLosItems.where((i) => i.categoria == 'alimento').toList(),
    'animal': todosLosItems.where((i) => i.categoria == 'animal').toList(),
    'lugar': todosLosItems.where((i) => i.categoria == 'lugar').toList(),
  };

  final Map<String, Map<String, dynamic>> configCategoria = {
    'alimento': {
      'titulo': 'Alimentos',
      'color': const Color(0xFFFF7043),
      'icono': Icons.restaurant_outlined
    },
    'animal': {
      'titulo': 'Animales',
      'color': const Color(0xFF26A69A),
      'icono': Icons.pets_outlined
    },
    'lugar': {
      'titulo': 'Lugares',
      'color': const Color(0xFF1E88E5),
      'icono': Icons.place_outlined
    },
  };

  // Open Sans → alimentos | Lato → animales | Ubuntu → lugares
  TextStyle _getFuente(String categoria) {
    switch (categoria) {
      case 'alimento':
        return GoogleFonts.openSans(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1A1A2E),
        );

      case 'animal':
        return GoogleFonts.lato(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1A1A2E),
        );

      case 'lugar':
        return GoogleFonts.ubuntu(
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1A1A2E),
        );

      default:
        return const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w600,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text(
          'Lista con Imágenes',
          style: GoogleFonts.inter(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1A1A2E),
          ),
        ),

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(
            height: 1,
            color: const Color(0xFFEEEEEE),
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.only(top: 8, bottom: 24),

        children: itemsPorCategoria.entries.map((entry) {
          final String categoria = entry.key;
          final List<CategoriaItem> items = entry.value;

          final config = configCategoria[categoria]!;
          final Color color = config['color'] as Color;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // Encabezado de categoría
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),

                child: Row(
                  children: [
                    Container(
                      width: 32,
                      height: 32,

                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),

                      child: Icon(
                        config['icono'] as IconData,
                        color: color,
                        size: 18,
                      ),
                    ),

                    const SizedBox(width: 10),

                    Text(
                      config['titulo'] as String,

                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1A1A2E),
                      ),
                    ),

                    const SizedBox(width: 8),

                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),

                      decoration: BoxDecoration(
                        color: color.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Text(
                        '${items.length}',

                        style: TextStyle(
                          fontSize: 11,
                          color: color,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Items
              ...items.map(
                (item) => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),

                  child: InkWell(
                    borderRadius: BorderRadius.circular(16),

                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => _DetalleItem(item: item),
                      ),
                    ),

                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),

                        border: const Border.fromBorderSide(
                          BorderSide(
                            color: Color(0xFFEEEEEE),
                          ),
                        ),
                      ),

                      child: Row(
                        children: [
                          // Imagen
                          ClipRRect(
                            borderRadius: const BorderRadius.horizontal(
                              left: Radius.circular(16),
                            ),

                            child: Image.network(
                              item.imagenUrl,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,

                              loadingBuilder: (ctx, child, progress) {
                                if (progress == null) return child;

                                return Container(
                                  width: 80,
                                  height: 80,
                                  color: const Color(0xFFF5F7FA),

                                  child: const Center(
                                    child: CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  ),
                                );
                              },

                              errorBuilder: (ctx, e, s) => Container(
                                width: 80,
                                height: 80,
                                color: const Color(0xFFF5F7FA),

                                child: const Icon(
                                  Icons.image_outlined,
                                  color: Color(0xFFBDBDBD),
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(width: 14),

                          Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,

                              children: [
                                Text(
                                  item.nombre,
                                  style: _getFuente(categoria),
                                ),

                                const SizedBox(height: 4),

                                Text(
                                  item.descripcion,

                                  style: GoogleFonts.inter(
                                    fontSize: 12,
                                    color: const Color(0xFF9E9E9E),
                                    height: 1.4,
                                  ),

                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),

                          const SizedBox(width: 8),

                          Container(
                            margin: const EdgeInsets.only(right: 14),
                            width: 28,
                            height: 28,

                            decoration: BoxDecoration(
                              color: color.withValues(alpha: 0.1),
                              shape: BoxShape.circle,
                            ),

                            child: Icon(
                              Icons.chevron_right,
                              color: color,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 8),
            ],
          );
        }).toList(),
      ),
    );
  }
}

class _DetalleItem extends StatelessWidget {
  final CategoriaItem item;

  const _DetalleItem({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: Text(
          item.nombre,

          style: GoogleFonts.inter(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: const Color(0xFF1A1A2E),
          ),
        ),

        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),

          child: Container(
            height: 1,
            color: const Color(0xFFEEEEEE),
          ),
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Image.network(
            item.imagenUrl,
            width: double.infinity,
            height: 240,
            fit: BoxFit.cover,

            errorBuilder: (ctx, e, s) => Container(
              height: 240,
              color: const Color(0xFFF5F7FA),

              child: const Icon(
                Icons.image_outlined,
                size: 64,
                color: Color(0xFFBDBDBD),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 5,
                  ),

                  decoration: BoxDecoration(
                    color: const Color(0xFFE3F2FD),
                    borderRadius: BorderRadius.circular(20),
                  ),

                  child: Text(
                    item.categoria.toUpperCase(),

                    style: GoogleFonts.inter(
                      fontSize: 11,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1E88E5),
                      letterSpacing: 1,
                    ),
                  ),
                ),

                const SizedBox(height: 14),

                Text(
                  item.nombre,

                  style: GoogleFonts.inter(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF1A1A2E),
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  item.descripcion,

                  style: GoogleFonts.inter(
                    fontSize: 15,
                    color: const Color(0xFF757575),
                    height: 1.6,
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