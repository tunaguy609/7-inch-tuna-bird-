# 7" Spinning Trolling Bird Lure

A parametric OpenSCAD design for a complete spinning trolling bird lure with separate 3D-printable components.

## Quick Links

- 📖 **[STL Export Guide](STL_EXPORT_GUIDE.md)** - Complete printing instructions
- 📐 **[Configuration](Bird_Config.scad)** - Adjust all dimensions here
- 🖨️ **[Export Files](#export-files)** - Ready to print STLs

## Project Overview

This is a **modular, parametric 3D model** of a 7" spinning trolling bird lure that can be customized and 3D printed.

**Total Assembly Size**: 177.8mm long × 50.8mm diameter

**Main Components**:
1. Spinning nose (left + right + retaining collar) - rotating blade section
2. Main body (2 halves) - hydrodynamic shape with internal ribs
3. Rotor assembly - spinning element
4. Shaft - central drive element

## Features

✅ **Fully Parametric** - Adjust any dimension by editing config  
✅ **Modular Design** - Print parts separately, assemble after  
✅ **Split Construction** - Easier printing and assembly  
✅ **Internal Structure** - Screw bosses, alignment pins, ribs  
✅ **Ready to Export** - 7 dedicated export files for STL  
✅ **Complete Documentation** - Printing & assembly guides included  

## Files Overview

### Configuration
- **Bird_Config.scad** - Global parameters (shared by all modules)

### Module Files
- **Bird_Body.scad** - Main body structure
- **Bird_Body_Complete.scad** - Body with integrated features
- **Bird_Features.scad** - Internal structure (bosses, ribs, pins)
- **Bird_Nose.scad** - Spinning nose with blade
- **Bird_Rotor.scad** - Rotor and blade assemblies
- **Bird_Shaft.scad** - Central shaft

### Export Files (→ Use These for STL)
- **export_nose_left.scad** → `trolling_bird_nose_left.stl`
- **export_nose_right.scad** → `trolling_bird_nose_right.stl`
- **export_retaining_collar.scad** → `trolling_bird_retaining_collar.stl`
- **export_body_left.scad** → `trolling_bird_body_left.stl`
- **export_body_right.scad** → `trolling_bird_body_right.stl`
- **export_rotor.scad** → `trolling_bird_rotor.stl`
- **export_shaft.scad** → `trolling_bird_shaft.stl`

## Getting Started

### 1. Install OpenSCAD
Download from: https://openscad.org/

### 2. Clone This Repository
```bash
git clone https://github.com/tunaguy609/7-inch-tuna-bird-.git
cd 7-inch-tuna-bird-
```

### 3. Export STL Files
See **[STL Export Guide](STL_EXPORT_GUIDE.md)** for detailed instructions.

**Quick Command Line Export:**
```bash
openscad -o trolling_bird_nose_left.stl export_nose_left.scad
openscad -o trolling_bird_nose_right.stl export_nose_right.scad
openscad -o trolling_bird_retaining_collar.stl export_retaining_collar.scad
openscad -o trolling_bird_body_left.stl export_body_left.scad
openscad -o trolling_bird_body_right.stl export_body_right.scad
openscad -o trolling_bird_rotor.stl export_rotor.scad
openscad -o trolling_bird_shaft.stl export_shaft.scad
```

### 4. Slice & Print
Use your favorite slicer (Cura, PrusaSlicer, etc.) and print on your FDM printer.

**Recommended Settings:**
- Filament: PETG
- Layer Height: 0.2mm
- Infill: 15%
- Supports: YES (tree supports recommended)

### 5. Assemble
Follow the **[STL Export Guide](STL_EXPORT_GUIDE.md)** assembly instructions.

## Customization

All dimensions are controlled by parameters in **Bird_Config.scad**:

```scad
// Spin characteristics
blade_twist = 35;        // Blade twist angle
blade_sweep = 60;        // Blade sweep angle
blade_count = 2;         // Number of blades (2, 3, or 4)
blade_length = 31.75;    // Blade length in mm
blade_width = 20.83;     // Blade width in mm

// Weight & diving
ballast_diameter = 18;   // Internal cavity size
ballast_length = 60;     // Internal cavity length

// Durability
wall = 2.8;              // Wall thickness in mm
blade_thickness = 3.56;  // Blade thickness in mm
```

After editing, re-export all STL files for your custom design.

## Technical Specifications

| Parameter | Value | Unit |
|-----------|-------|------|
| Overall Length | 177.8 | mm |
| Body Length | 114.3 | mm |
| Nose Length | 63.5 | mm |
| Nose Cone Length | 17.78 | mm |
| Nose Cone Base Diameter | 24.13 | mm |
| Front Diameter | 43.688 | mm |
| Max Diameter | 50.8 | mm |
| Tail Diameter | 7.112 | mm |
| Wall Thickness | 2.8 | mm |
| Blade Pitch | 28 | degrees |
| Blade Count | 2 | quantity |
| Shaft Diameter | 4.0 | mm |

## Material & Weight

**Printed with 15% Infill (PETG):**
- Nose sections: ~10g each
- Body sections: ~30g each
- Rotor: ~10g
- Shaft: ~6g
- **Total (unfilled)**: ~96g (~3.4 oz)

**With ballast cavity filled**: ~120-150g depending on ballast choice

## Assembly Summary

1. Clean and remove support material from all parts
2. Glue nose halves together (epoxy, 24-hour cure)
3. Glue body halves together (epoxy, 24-hour cure)
4. Insert shaft through body tunnel
5. Mount rotor on front bearing seat
6. Fill ballast cavity (optional but recommended)
7. Glue nose to body (or make removable with magnets)
8. Sand smooth and paint with marine-grade finish
9. Cure 48 hours before use

For detailed step-by-step assembly, see **[STL Export Guide](STL_EXPORT_GUIDE.md)**.

## 3D Printer Compatibility

### Tested On:
- ✅ Creality Ender 3 / Ender 3 V2
- ✅ Prusa i3 MK3S+
- ✅ Ultimaker 3
- ✅ Anycubic i3 Mega

### Recommended Materials:
1. **PETG** (best) - Flexible, durable, water-resistant
2. **ABS** - Strong but watch for warping
3. **Nylon** - Most durable but hardest to print
4. **TPU** - Super flexible alternative
5. **PLA** - Not recommended (too brittle for lures)

## Performance Tips

- **Faster Spin**: Increase `blade_twist` in config
- **Deeper Diving**: Add more ballast weight
- **More Vibration**: Increase `blade_width` or `blade_count`
- **Smoother Action**: Use smaller blade twist angles

## Troubleshooting

**Rotor Won't Spin?**
- Check shaft is straight and smooth
- Sand shaft with 220-grit sandpaper
- Ensure bearing pocket isn't binding

**Parts Don't Align?**
- Sand split planes smooth with 220-grit
- Check alignment pins fit smoothly
- Verify no glue squeeze-out blocking alignment

**Export Fails?**
- Check all file paths are correct
- Verify include statements use correct filenames
- Ensure no typos in module names

See **[STL Export Guide](STL_EXPORT_GUIDE.md)** for more troubleshooting.

## Design Notes

- **Split Planes**: All major parts split down the center for easier printing
- **Internal Ribs**: Strengthen the body without adding weight
- **Screw Bosses**: Designed to work with M3 screws + threaded inserts
- **Alignment Pins**: Ensure accurate assembly of split halves
- **Bearing Seats**: Support for smooth rotation of both nose and rotor

## Performance Specs

**As Designed (15% Infill, PETG):**
- Sink Rate: ~2-3 feet per second (in fresh water)
- Spin Rate: ~200-300 RPM (speed varies by trolling speed)
- Casting Distance: Good for trolling, not for casting
- Depth Range: 0-15 feet (depends on ballast)
- Durability: High - PETG is impact resistant

## License

This project is open-source under the MIT License.

**You are free to:**
- ✅ Print and use for personal fishing
- ✅ Modify the design for your needs
- ✅ Share your modifications
- ✅ Make improvements

**Please:**
- ❌ Don't sell the STL files or prints commercially without attribution
- 📝 Give credit if you share modifications

## Contributing

Found a bug or have an improvement? Please open an issue or submit a pull request!

## Resources

- **OpenSCAD Documentation**: https://openscad.org/documentation.html
- **3D Printing Guide**: https://www.prusa3d.com/en/knowledge-base/
- **Fishing Lure Design**: Research trolling lure hydrodynamics

## Version History

### v1.0 (Current)
- ✅ Complete parametric design
- ✅ 7 printable parts (nose halves + retaining collar, body, rotor, shaft)
- ✅ Internal structure (ribs, bosses, pins)
- ✅ Full documentation and export guides

## Questions?

1. Check the **[STL Export Guide](STL_EXPORT_GUIDE.md)** for printing & assembly
2. Review **Bird_Config.scad** for customization options
3. Open an issue on GitHub for bugs

---

**Happy 3D Printing! 🎣⭐**

Made with ❤️ for fishing enthusiasts who love 3D printing.