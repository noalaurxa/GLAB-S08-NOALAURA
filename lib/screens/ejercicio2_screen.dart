import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../data/productos_detalle_data.dart';
import '../models/producto_detalle.dart';

class Ejercicio2Screen extends StatelessWidget {
  const Ejercicio2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,

        title: Text(
          'Detalles de Producto',
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

      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 16),
        itemCount: productos.length,

        itemBuilder: (context, index) {
          final ProductoDetalle p = productos[index];

          return GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => _DetalleProducto(producto: p),
              ),
            ),

            child: Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),

                border: const Border.fromBorderSide(
                  BorderSide(
                    color: Color(0xFFEEEEEE),
                  ),
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  // Imagen
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),

                    child: Image.network(
                      p.imagenUrl,
                      width: double.infinity,
                      height: 160,
                      fit: BoxFit.cover,

                      loadingBuilder: (ctx, child, progress) {
                        if (progress == null) return child;

                        return Container(
                          height: 160,
                          color: const Color(0xFFF5F7FA),

                          child: const Center(
                            child: CircularProgressIndicator(
                              strokeWidth: 2,
                              color: Color(0xFF1E88E5),
                            ),
                          ),
                        );
                      },

                      errorBuilder: (ctx, e, s) => Container(
                        height: 160,
                        color: const Color(0xFFF5F7FA),

                        child: const Icon(
                          Icons.image_outlined,
                          size: 48,
                          color: Color(0xFFBDBDBD),
                        ),
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(16),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        // Badge categoría
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 4,
                          ),

                          decoration: BoxDecoration(
                            color: const Color(0xFFE3F2FD),
                            borderRadius: BorderRadius.circular(20),
                          ),

                          child: Text(
                            p.categoria,

                            style: GoogleFonts.inter(
                              fontSize: 11,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF1E88E5),
                            ),
                          ),
                        ),

                        const SizedBox(height: 10),

                        // Nombre — Montserrat
                        Text(
                          p.nombre,

                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1A1A2E),
                          ),
                        ),

                        const SizedBox(height: 6),

                        // Precio — Roboto
                        Text(
                          'S/ ${p.precio.toStringAsFixed(2)}',

                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFF1E88E5),
                          ),
                        ),

                        const SizedBox(height: 8),

                        // Descripción — Nunito
                        Text(
                          p.descripcion,

                          style: GoogleFonts.nunito(
                            fontSize: 13,
                            color: const Color(0xFF9E9E9E),
                            height: 1.5,
                          ),

                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        const SizedBox(height: 14),

                        SizedBox(
                          width: double.infinity,

                          child: ElevatedButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) =>
                                    _DetalleProducto(producto: p),
                              ),
                            ),

                            child: Text(
                              'Ver detalle',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _DetalleProducto extends StatelessWidget {
  final ProductoDetalle producto;

  const _DetalleProducto({
    required this.producto,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,

        title: Text(
          producto.nombre,

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

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Image.network(
              producto.imagenUrl,
              width: double.infinity,
              height: 260,
              fit: BoxFit.cover,

              errorBuilder: (ctx, e, s) => Container(
                height: 260,
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
                      producto.categoria.toUpperCase(),

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
                    producto.nombre,

                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1A2E),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    'S/ ${producto.precio.toStringAsFixed(2)}',

                    style: GoogleFonts.roboto(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1E88E5),
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Divider(
                    color: Color(0xFFEEEEEE),
                  ),

                  const SizedBox(height: 14),

                  Text(
                    'Descripción',

                    style: GoogleFonts.inter(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF1A1A2E),
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    producto.descripcion,

                    style: GoogleFonts.nunito(
                      fontSize: 15,
                      color: const Color(0xFF757575),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 28),

                  SizedBox(
                    width: double.infinity,

                    child: ElevatedButton.icon(
                      onPressed: () => ScaffoldMessenger.of(context)
                          .showSnackBar(
                        SnackBar(
                          content: Text(
                            '${producto.nombre} agregado al carrito',
                          ),

                          backgroundColor:
                              const Color(0xFF1E88E5),

                          behavior: SnackBarBehavior.floating,

                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(12),
                          ),
                        ),
                      ),

                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                      ),

                      label: Text(
                        'Agregar al carrito',
                        style: GoogleFonts.inter(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}