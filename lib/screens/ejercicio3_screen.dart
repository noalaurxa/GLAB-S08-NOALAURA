import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImagenGaleria {
  final String nombre;
  final String tipo;
  final String url;

  const ImagenGaleria({
    required this.nombre,
    required this.tipo,
    required this.url,
  });
}

const List<ImagenGaleria> imagenesGaleria = [
  ImagenGaleria(
    nombre: 'Paisaje Montaña',
    tipo: 'png',
    url:
        'https://images.unsplash.com/photo-1506905925346-21bda4d32df4?w=400',
  ),
  ImagenGaleria(
    nombre: 'Bosque Verde',
    tipo: 'png',
    url:
        'https://images.unsplash.com/photo-1448375240586-882707db888b?w=400',
  ),
  ImagenGaleria(
    nombre: 'Lago Azul',
    tipo: 'png',
    url:
        'https://images.unsplash.com/photo-1439066615861-d1af74d74000?w=400',
  ),
  ImagenGaleria(
    nombre: 'Ciudad Nocturna',
    tipo: 'jpeg',
    url:
        'https://images.unsplash.com/photo-1477959858617-67f85cf4f1df?w=400',
  ),
  ImagenGaleria(
    nombre: 'Playa Tropical',
    tipo: 'jpeg',
    url:
        'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400',
  ),
  ImagenGaleria(
    nombre: 'Desierto Arena',
    tipo: 'jpeg',
    url:
        'https://images.unsplash.com/photo-1509316785289-025f5b846b35?w=400',
  ),
  ImagenGaleria(
    nombre: 'Ícono Flutter',
    tipo: 'svg',
    url: 'flutter',
  ),
  ImagenGaleria(
    nombre: 'Ícono Dart',
    tipo: 'svg',
    url: 'dart',
  ),
  ImagenGaleria(
    nombre: 'Ícono Android',
    tipo: 'svg',
    url: 'android',
  ),
];

const String svgFlutter = '''
<svg viewBox="0 0 128 128" xmlns="http://www.w3.org/2000/svg">
<path fill="#54C5F8" d="M12.3 64.2L76.3 0h39.4L51.7 64.2z"/>
<path fill="#01579B" d="M12.3 64.2L51.7 64.2 76.3 89.2 51.7 114.2z" opacity=".8"/>
<path fill="#29B6F6" d="M51.7 64.2h39.4l24.6 25-24.6 24.6H51.7l24.6-24.6z"/>
<path fill="#01579B" d="M76.3 89.2l15.6 15.6-15.6 15.4-24.6-24.6z" opacity=".8"/>
</svg>
''';

const String svgDart = '''
<svg viewBox="0 0 128 128" xmlns="http://www.w3.org/2000/svg">
<path fill="#00BCD4" d="M29 101.7L7.6 80.4c-2-2-3.1-4.8-3.1-7.6V29L29 4h45.8c2.8 0 5.5 1.1 7.5 3.1l21.4 21.4L29 101.7z"/>
<path fill="#0097A7" d="M103.8 28.5L82.4 7.1C80.4 5.1 77.6 4 74.8 4H29L4.5 28.5h99.3z" opacity=".5"/>
<path fill="#00BCD4" d="M99 101.7l21.4-21.3c2-2 3.1-4.8 3.1-7.6V28.5L99 4H53.2c-2.8 0-5.5 1.1-7.5 3.1L24.3 28.5 99 101.7z"/>
<path fill="#00BCD4" d="M64 124l-35-22.3 35-35 35 35z"/>
</svg>
''';

const String svgAndroid = '''
<svg viewBox="0 0 128 128" xmlns="http://www.w3.org/2000/svg">
<path fill="#97C03D" d="M46 37.6h36v54H46z"/>
<path fill="#97C03D" d="M30 55.6c-4.4 0-8 3.6-8 8v17c0 4.4 3.6 8 8 8s8-3.6 8-8v-17c0-4.4-3.6-8-8-8zM98 55.6c-4.4 0-8 3.6-8 8v17c0 4.4 3.6 8 8 8s8-3.6 8-8v-17c0-4.4-3.6-8-8-8z"/>
<path fill="#97C03D" d="M82 19.6l5.7-9.9c.4-.7.1-1.5-.6-1.9-.7-.4-1.5-.1-1.9.6L79.4 19c-4.7-2-9.9-3.1-15.4-3.1s-10.7 1.1-15.4 3.1l-5.8-10.6c-.4-.7-1.2-1-1.9-.6-.7.4-1 1.2-.6 1.9L46 19.6C35.7 25 28.8 35 28 46.6h72c-.8-11.6-7.7-21.6-18-27z"/>
<circle fill="#fff" cx="53" cy="34.6" r="4"/>
<circle fill="#fff" cx="75" cy="34.6" r="4"/>
<path fill="#97C03D" d="M46 91.6v13c0 4.4 3.6 8 8 8s8-3.6 8-8v-13H46zM66 91.6v13c0 4.4 3.6 8 8 8s8-3.6 8-8v-13H66z"/>
</svg>
''';

class Ejercicio3Screen extends StatefulWidget {
  const Ejercicio3Screen({super.key});

  @override
  State<Ejercicio3Screen> createState() => _Ejercicio3ScreenState();
}

class _Ejercicio3ScreenState extends State<Ejercicio3Screen> {
  String _filtro = 'todos';

  TextStyle _getFuente(String tipo) {
    switch (tipo) {
      case 'png':
        return GoogleFonts.arimo(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        );

      case 'jpeg':
        return GoogleFonts.tinos(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: Colors.white,
        );

      case 'svg':
        return GoogleFonts.roboto(
          fontSize: 13,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF1A1A2E),
        );

      default:
        return const TextStyle(
          fontSize: 13,
          color: Colors.white,
        );
    }
  }

  Color _getColor(String tipo) {
    switch (tipo) {
      case 'png':
        return const Color(0xFF1E88E5);

      case 'jpeg':
        return const Color(0xFF7B1FA2);

      case 'svg':
        return const Color(0xFF00ACC1);

      default:
        return Colors.grey;
    }
  }

  String _getSvg(String url) {
    switch (url) {
      case 'flutter':
        return svgFlutter;

      case 'dart':
        return svgDart;

      case 'android':
        return svgAndroid;

      default:
        return svgFlutter;
    }
  }

  List<ImagenGaleria> get _filtradas {
    if (_filtro == 'todos') {
      return imagenesGaleria;
    }

    return imagenesGaleria.where((i) => i.tipo == _filtro).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),

      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Galería de Imágenes',
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

      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),

            child: Row(
              children: ['todos', 'png', 'jpeg', 'svg'].map((tipo) {
                final bool activo = _filtro == tipo;

                return Padding(
                  padding: const EdgeInsets.only(right: 8),

                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _filtro = tipo;
                      });
                    },

                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),

                      padding: const EdgeInsets.symmetric(
                        horizontal: 14,
                        vertical: 7,
                      ),

                      decoration: BoxDecoration(
                        color: activo
                            ? const Color(0xFF1E88E5)
                            : Colors.white,

                        borderRadius: BorderRadius.circular(20),

                        border: Border.all(
                          color: activo
                              ? const Color(0xFF1E88E5)
                              : const Color(0xFFEEEEEE),
                        ),
                      ),

                      child: Text(
                        tipo.toUpperCase(),

                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: activo
                              ? Colors.white
                              : const Color(0xFF9E9E9E),
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 4),

            child: Row(
              children: [
                Text(
                  '${_filtradas.length} imágenes',

                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: const Color(0xFF9E9E9E),
                  ),
                ),
              ],
            ),
          ),

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 24),

              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.82,
              ),

              itemCount: _filtradas.length,

              itemBuilder: (context, index) {
                final img = _filtradas[index];
                final bool esSvg = img.tipo == 'svg';

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => _DetalleImagen(
                          imagen: img,
                          svgString:
                              esSvg ? _getSvg(img.url) : null,
                        ),
                      ),
                    );
                  },

                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: const Border.fromBorderSide(
                        BorderSide(color: Color(0xFFEEEEEE)),
                      ),
                    ),

                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,

                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.vertical(
                              top: Radius.circular(16),
                            ),

                            child: esSvg
                                ? Container(
                                    width: double.infinity,
                                    color:
                                        const Color(0xFFF5F7FA),
                                    padding:
                                        const EdgeInsets.all(20),

                                    child: SvgPicture.string(
                                      _getSvg(img.url),
                                      fit: BoxFit.contain,
                                    ),
                                  )
                                : Image.network(
                                    img.url,
                                    width: double.infinity,
                                    fit: BoxFit.cover,

                                    loadingBuilder:
                                        (ctx, child, p) {
                                      if (p == null) {
                                        return child;
                                      }

                                      return Container(
                                        color: const Color(
                                          0xFFF5F7FA,
                                        ),

                                        child: const Center(
                                          child:
                                              CircularProgressIndicator(
                                            strokeWidth: 2,
                                            color: Color(
                                              0xFF1E88E5,
                                            ),
                                          ),
                                        ),
                                      );
                                    },

                                    errorBuilder:
                                        (ctx, e, s) {
                                      return Container(
                                        color: const Color(
                                          0xFFF5F7FA,
                                        ),

                                        child: const Icon(
                                          Icons.image_outlined,
                                          color:
                                              Color(0xFFBDBDBD),
                                          size: 40,
                                        ),
                                      );
                                    },
                                  ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10),

                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,

                            children: [
                              Text(
                                img.nombre,

                                style: GoogleFonts.inter(
                                  fontSize: 12,
                                  fontWeight:
                                      FontWeight.w600,
                                  color:
                                      const Color(0xFF1A1A2E),
                                ),

                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),

                              const SizedBox(height: 5),

                              Container(
                                padding:
                                    const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 3,
                                ),

                                decoration: BoxDecoration(
                                  color: _getColor(img.tipo)
                                      .withOpacity(0.1),

                                  borderRadius:
                                      BorderRadius.circular(6),
                                ),

                                child: Text(
                                  img.tipo.toUpperCase(),

                                  style: GoogleFonts.inter(
                                    fontSize: 10,
                                    fontWeight:
                                        FontWeight.w700,
                                    color:
                                        _getColor(img.tipo),
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
          ),
        ],
      ),
    );
  }
}

class _DetalleImagen extends StatelessWidget {
  final ImagenGaleria imagen;
  final String? svgString;

  const _DetalleImagen({
    required this.imagen,
    this.svgString,
  });

  Color _getColor(String tipo) {
    switch (tipo) {
      case 'png':
        return const Color(0xFF1E88E5);

      case 'jpeg':
        return const Color(0xFF7B1FA2);

      case 'svg':
        return const Color(0xFF00ACC1);

      default:
        return Colors.grey;
    }
  }

  TextStyle _getFuente(String tipo) {
    switch (tipo) {
      case 'png':
        return GoogleFonts.arimo(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: const Color(0xFF1A1A2E),
        );

      case 'jpeg':
        return GoogleFonts.tinos(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: const Color(0xFF1A1A2E),
        );

      case 'svg':
        return GoogleFonts.roboto(
          fontSize: 22,
          fontWeight: FontWeight.w700,
          color: const Color(0xFF1A1A2E),
        );

      default:
        return const TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w700,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool esSvg = imagen.tipo == 'svg';

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.transparent,

        title: Text(
          imagen.nombre,

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
          Container(
            height: 280,
            width: double.infinity,
            color: const Color(0xFFF5F7FA),
            padding:
                esSvg ? const EdgeInsets.all(40) : EdgeInsets.zero,

            child: esSvg && svgString != null
                ? SvgPicture.string(
                    svgString!,
                    fit: BoxFit.contain,
                  )
                : Image.network(
                    imagen.url,
                    fit: BoxFit.cover,

                    errorBuilder: (ctx, e, s) {
                      return const Icon(
                        Icons.image_outlined,
                        size: 64,
                        color: Color(0xFFBDBDBD),
                      );
                    },
                  ),
          ),

          Padding(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  imagen.nombre,
                  style: _getFuente(imagen.tipo),
                ),

                const SizedBox(height: 12),

                Row(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),

                      decoration: BoxDecoration(
                        color: _getColor(imagen.tipo)
                            .withOpacity(0.1),

                        borderRadius:
                            BorderRadius.circular(8),
                      ),

                      child: Text(
                        imagen.tipo.toUpperCase(),

                        style: GoogleFonts.inter(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color:
                              _getColor(imagen.tipo),
                        ),
                      ),
                    ),

                    const SizedBox(width: 12),

                    Text(
                      imagen.tipo == 'png'
                          ? 'Fuente: Arial'
                          : imagen.tipo == 'jpeg'
                              ? 'Fuente: Times New Roman'
                              : 'Fuente: Roboto',

                      style: GoogleFonts.inter(
                        fontSize: 13,
                        color: const Color(0xFF9E9E9E),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}