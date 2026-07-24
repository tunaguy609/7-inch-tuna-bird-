# 7" Spinning Trolling Bird Lure - Complete STL Export Guide

## Quick Start - Export All Parts to STL

### What You Need
1. **OpenSCAD** - Free 3D modeling software (https://openscad.org/)
2. **Your OpenSCAD files** from this repository

### All Export Files (Ready to Use)

| File | Part Name | Material |
|------|-----------|----------|
| `export_nose_left.scad` | Nose Left Half | ~8-12g PETG |
| `export_nose_right.scad` | Nose Right Half | ~8-12g PETG |
| `export_body_left.scad` | Body Left Half | ~25-35g PETG |
| `export_body_right.scad` | Body Right Half | ~25-35g PETG |
| `export_rotor.scad` | Rotor Assembly | ~8-12g PETG |
| `export_shaft.scad` | Shaft Assembly | ~5-8g PETG |

---

## Export Steps (GUI Method)

1. **Open OpenSCAD**

2. **Export Each Part** (repeat for each file):
   - File → Open → Select export file
   - Wait for preview to render (may take 30-60 seconds)
   - File → Export as STL
   - Save with descriptive name

```
export_nose_left.scad      → trolling_bird_nose_left.stl
export_nose_right.scad     → trolling_bird_nose_right.stl
export_body_left.scad      → trolling_bird_body_left.stl
export_body_right.scad     → trolling_bird_body_right.stl
export_rotor.scad          → trolling_bird_rotor.stl
export_shaft.scad          → trolling_bird_shaft.stl
```

### Export Steps (Command Line - Faster)

```bash
# Windows
openscad -o trolling_bird_nose_left.stl export_nose_left.scad
openscad -o trolling_bird_nose_right.stl export_nose_right.scad
openscad -o trolling_bird_body_left.stl export_body_left.scad
openscad -o trolling_bird_body_right.stl export_body_right.scad
openscad -o trolling_bird_rotor.stl export_rotor.scad
openscad -o trolling_bird_shaft.stl export_shaft.scad

# Mac/Linux
openscad -o trolling_bird_nose_left.stl export_nose_left.scad
openscad -o trolling_bird_nose_right.stl export_nose_right.scad
openscad -o trolling_bird_body_left.stl export_body_left.scad
openscad -o trolling_bird_body_right.stl export_body_right.scad
openscad -o trolling_bird_rotor.stl export_rotor.scad
openscad -o trolling_bird_shaft.stl export_shaft.scad
```

---

## Complete Parts List

### Part 1: Nose Left Half
- **File**: `trolling_bird_nose_left.stl`
- **Qty**: 1
- **Print Time**: ~4-6 hours
- **Material**: ~8-12g PETG
- **Supports**: YES - Required for blade

### Part 2: Nose Right Half
- **File**: `trolling_bird_nose_right.stl`
- **Qty**: 1
- **Print Time**: ~4-6 hours
- **Material**: ~8-12g PETG
- **Supports**: YES - Required for blade

### Part 3: Body Left Half
- **File**: `trolling_bird_body_left.stl`
- **Qty**: 1
- **Print Time**: ~8-12 hours
- **Material**: ~25-35g PETG
- **Supports**: YES - Required for bosses and ribs

### Part 4: Body Right Half
- **File**: `trolling_bird_body_right.stl`
- **Qty**: 1
- **Print Time**: ~8-12 hours
- **Material**: ~25-35g PETG
- **Supports**: YES - Required for bosses and ribs

### Part 5: Rotor Assembly
- **File**: `trolling_bird_rotor.stl`
- **Qty**: 1
- **Print Time**: ~2-4 hours
- **Material**: ~8-12g PETG
- **Supports**: YES - Tree supports recommended for blade tips

### Part 6: Shaft
- **File**: `trolling_bird_shaft.stl`
- **Qty**: 1
- **Print Time**: ~1-2 hours
- **Material**: ~5-8g PETG
- **Supports**: NO

---

## Recommended Print Settings

### Filament: PETG (Recommended for Lures)

| Setting | Value | Notes |
|---------|-------|-------|
| Nozzle Temp | 240-250°C | PETG specific |
| Bed Temp | 70-80°C | Adhesion help |
| Layer Height | 0.2 mm | Standard |
| Infill | 15% | Lightweight |
| Infill Pattern | Grid/Honeycomb | Balanced strength |
| Print Speed | 40-50 mm/s | Careful with supports |
| Support Type | Tree | Better for complex shapes |
| Support Density | 15-20% | Easier cleanup |
| Nozzle Diameter | 0.4 mm | Standard |
| Adhesion | Brim | Prevent warping |
| Cooling | ON | Especially for PETG |

### Build Plate Orientation

**Nose Halves**:
- Split plane **parallel to build plate** (horizontal)
- Blade pointing up
- Tip away from heat bed
- Tree supports for blade

**Body Halves**:
- Split plane **parallel to build plate** (horizontal)
- Interior features face down
- Tree supports for bosses and ribs

**Rotor**:
- Hub axis **horizontal** (left-right)
- Blade tips up and down
- Tree supports around blades

**Shaft**:
- **Vertical** (along Z-axis)
- No supports needed
- Fastest print

---

## Assembly Instructions

### Tools Required
- Epoxy adhesive (5-minute or 24-hour)
- Sandpaper (120, 180, 220 grit)
- Tweezers or forceps
- Small file (needle file)
- M3 screws × 6
- M3 threaded inserts × 6 (optional but recommended)
- Bearings or bushings × 2 (optional, improves spin)

### Step-by-Step Assembly

#### Step 1: Clean Parts
1. Remove all support material
2. Sand split planes smooth (220 grit)
3. Clean interior surfaces with brush
4. Inspect for loose bits

#### Step 2: Install Hardware (Optional)
If using threaded inserts:
1. Heat insert tool to 220°C
2. Press inserts into pockets on both body halves
3. Allow to cool (1-2 minutes)

#### Step 3: Assemble Body Halves
1. Dry fit (no glue) to test alignment
2. Apply epoxy to split planes
3. Add epoxy to alignment pins
4. Press halves together firmly
5. Clamp or wrap with rubber bands
6. Cure 24 hours (or per epoxy instructions)
7. Wipe excess epoxy immediately

#### Step 4: Assemble Nose Halves
1. Repeat steps 1-3 for nose halves
2. Ensure blade alignment is smooth
3. Cure 24 hours

#### Step 5: Install Shaft
1. Insert shaft through body tunnel
2. Should slide with minimal friction
3. If tight, wrap shaft lightly with PTFE tape
4. Position shaft so it's centered

#### Step 6: Install Rotor
1. Mount rotor onto front bearing seat
2. Ensure it spins freely
3. Add bearing or bushing if needed for smoother spin
4. Test rotation - should spin easily

#### Step 7: Add Ballast (Recommended)
1. Fill ballast cavity with lead shot or tungsten powder
2. Pour epoxy to seal
3. Allows lure to dive deeper and track straighter

#### Step 8: Finish Assembly
1. Attach nose section to main body
   - Can be glued permanently or made removable
2. Attach tow eye to rear
3. Sand exterior smooth (120 → 180 → 220 grit)

#### Step 9: Paint/Seal (Important!)
1. Prime with water-resistant primer
2. Paint with marine-grade paint or epoxy
3. Add detail colors (eyes, stripes, etc.)
4. Seal with polyurethane or epoxy resin
5. Cure fully before use (48 hours minimum)

---

## Assembly Variations

### Option A: Fixed Assembly (Most Durable)
- Glue all pieces permanently with epoxy
- Nose is sealed to body
- Most durable, cannot be serviced
- Best for heavy fishing use

### Option B: Removable Nose
- Glue body and nose separately
- Use small neodymium magnets to attach nose to body
- Allows access to internals
- Better for customization

### Option C: Modular Design
- Print multiple interchangeable noses
- Change blade angles or blade count
- Same body with different performance characteristics

---

## 3D Printer Compatibility

### Tested Successfully On:
- ✅ Creality Ender 3 / Ender 3 V2
- ✅ Prusa i3 MK3S+
- ✅ Ultimaker 3
- ✅ Anycubic i3 Mega
- ✅ Formlabs Form 3 (resin)

### Recommended Materials:

| Material | Pros | Cons | Rating |
|----------|------|------|--------|
| **PETG** | Flexible, durable, water-resistant, easy print | Requires heated bed | ⭐⭐⭐⭐⭐ |
| **ABS** | Strong, durable, classic feel | Warping issues, requires enclosure | ⭐⭐⭐⭐ |
| **Nylon** | Toughest, most durable | Hard to print, requires special nozzle | ⭐⭐⭐⭐⭐ |
| **TPU** | Super flexible, bounces off rocks | Slow print, hard to dial in | ⭐⭐⭐ |
| **PLA** | Easy to print, cheap | Brittle, degrades in sun | ⭐⭐ |

---

## Performance Tuning

### Adjust Spin Speed
Edit `Bird_Config.scad`:
```scad
blade_pitch = 28;  // Default
// Increase to 35-40 for faster spin
// Decrease to 20-25 for slower, steadier spin
```

### Adjust Diving Depth
```scad
ballast_diameter = 18;   // Default
ballast_length = 60;     // Default
// Increase either to dive deeper
// Decrease to fish shallower
```

### Adjust Aggressiveness
```scad
blade_span = 62;  // Default
blade_width = 18; // Default
// Increase blade_width for more vibration
// Increase blade_span for wider displacement
```

---

## Troubleshooting

### Print Issues

**STL Export Fails**
- Ensure all include statements are correct
- Check file paths match your directory structure
- Try opening in Cura or other slicer to validate

**Parts Won't Print / Preview Is Blank**
- Check for typos in include statements
- Verify all referenced modules exist
- Look for unclosed brackets in code

**Supports Too Hard to Remove**
- Use lower support density (10-15%)
- Try tree supports instead of linear
- Wash with warm water before removal

### Assembly Issues

**Rotor Doesn't Spin**
- Check shaft is straight and smooth
- Ensure bearing pocket isn't binding rotor
- Sand shaft lightly with 220 grit paper
- Try adding lubricant (silicone spray, not WD-40)

**Body Halves Don't Align**
- Verify alignment pins fit smoothly
- Sand split planes with 220 grit
- Check for glue squeeze-out
- File down any irregularities

**Screw Bosses Break During Installation**
- Use threaded inserts instead of direct screws
- Don't over-tighten screws
- Consider slightly larger diameter hardware
- Pre-drill pilot holes if using self-tapping screws

**Lure Doesn't Swim Right**
- Add more ballast to body cavity
- Check that rotor spins freely
- Verify nose blade angle
- Test in pool before ocean use

---

## Advanced Options

### Add Weight Strategically
- **Nose pocket**: Heavier nose = dives deeper
- **Body cavity**: Overall weight adjustment
- **Rear ballast**: Maintains stability

### Customize Blade Angle
Edit `Bird_Nose.scad`:
```scad
rotate([0,-18,25])  // Y and Z rotation
// Adjust these angles for different swimming patterns
```

### Add Color Pigment
- Mix color pigment into filament before printing
- Or paint after printing (recommended)
- Use epoxy paint for durability

---

## File Overview

### Core Modules
| File | Contains |
|------|----------|
| `Bird_Config.scad` | All global parameters |
| `Bird_Body.scad` | Main body modules |
| `Bird_Body_Complete.scad` | Body with internal features |
| `Bird_Features.scad` | Bosses, ribs, alignment pins |
| `Bird_Nose.scad` | Spinning nose assembly |
| `Bird_Rotor.scad` | Rotor and blade modules |
| `Bird_Shaft.scad` | Shaft assembly |

### Export Files (Use These!)
| File | Exports |
|------|----------|
| `export_nose_left.scad` | Nose left half STL |
| `export_nose_right.scad` | Nose right half STL |
| `export_body_left.scad` | Body left half STL |
| `export_body_right.scad` | Body right half STL |
| `export_rotor.scad` | Rotor assembly STL |
| `export_shaft.scad` | Shaft assembly STL |

---

## Total Print Time & Material Estimate

**With 15% Infill, Standard Settings:**

| Part | Time | Material |
|------|------|----------|
| Nose Left | 4-6 hrs | 10g |
| Nose Right | 4-6 hrs | 10g |
| Body Left | 8-12 hrs | 30g |
| Body Right | 8-12 hrs | 30g |
| Rotor | 2-4 hrs | 10g |
| Shaft | 1-2 hrs | 6g |
| **TOTAL** | **~27-42 hours** | **~96g (3.4 oz)** |

---

## Next Steps

1. **Download & Install OpenSCAD** - https://openscad.org/
2. **Clone or download this repository**
3. **Export all 6 STL files** using the methods above
4. **Slice in your favorite slicer** (Cura, PrusaSlicer, etc.)
5. **Print all parts** - Start with the shaft (quickest)
6. **Assemble following the guide above**
7. **Test in water** before ocean use
8. **Share your makes!** 🎣

---

## Support & Documentation

- **OpenSCAD Docs**: https://openscad.org/documentation.html
- **3D Printing Tips**: https://www.prusa3d.com/en/knowledge-base/
- **Fishing Lure Design**: Research trolling lure hydrodynamics

---

## License

This is an open-source design. Feel free to:
- ✅ Print and use for personal fishing
- ✅ Modify for your preferences
- ✅ Share your modifications
- ✅ Make improvements
- ❌ Commercial use without attribution

Happy 3D printing! 🎣⭐