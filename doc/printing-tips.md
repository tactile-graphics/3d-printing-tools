# Printing Tips

# Paper Type
Tyler has had good results with Canon Photo Paper Glossy (GP-701)
Chris has had good results with 80lb-110lb cardstock

# Printer Type
Tyler uses an Ender 3 Pro
Chris currently uses an Ultimaker S5 

# Printer Filament
Chris has had good results with PLA. The filament adheres to cardstock but will flake off if the paper is roughly folded. This does not limit usability and is simlar to current tactile graphics produced using micro-encapsulated paper (swell paper). 

Tyler has been testing out PET-G and has found it adheres very well on photo paper.

# Paper Placement
Tyler uses paper clips at the edges of the printer bed to hold the paper in place. Tape also works, but it leaves residue.

![Clip Placement on Printer](img/clips.jpg)

Chris has been using low tack painters tape to tape down paper. 

# Print Dimensions
* Use 0.2mm layer height. Any additional layers increase the likelihood that the extruded material will break off when touched. (80% nozzle diameter is a good rule of thumb for the maximum layer height). .2mm has been found to be tactually discernable.
* Make sure to pay attention to the initial layer width factor and other initial layer settings. These will over ride your settings and may lead to your print coming out differently then expected as we are only printing one layer.
* Your line width will limit how fine of lines you can print. If your lines are too fine for your set line width the slicer will omit them from the print. A line width of .24mm has been found satisfactory for a range of tactually discernible lines. 
![Not thin enough line width setting](https://github.com/tactile-graphics/guides/tree/main/3d-printing/trials/22_1_14_trials/trial1.jpg)


# Print Settings
Tyler and Chris both use Ultimaker Cura for printer configuration. The screenshots are from version 4.12.1. Chris uses version 4.13.0.

## General Settings
These settings for PLA should be a good place to start. If you experience issues with paper warping or PLA stringing try knocking the temperature down of the extruder and bed by 5-10c.

| Setting | Value |
| ------ | ------ |
| Printing Material | PLA | 
| Tool Temp | 200c |
| Bed Temp | 65c |
| Build Plate Adhesion Type | none |

## Special Settings
These are mostly custom settings and may need to be turned on in the settings visibility area of your slicer program.

### Z-Hop
Use the z-hope option. This helps avoid blurred lines between dots in braille characters. I set the hop distance to at least 0.5mm (you need to go into the custom settings sub-menu to enable the z-hope height option).

![Screenshot of Z-Hop setting](img/retraction.png)

### Thin Walls
Turn on Print Thin Walls to avoid losing fine lines. Again, this is a custom setting you may have to turn on.

![Screenshot of Walls setting](img/walls.png)

### Infill
You can get the slicer to replace solid fills with infill patterns. You will need to change the Top/Bottom settings to 0 so that there are 0 top layers and 0 bottom layers. This can have the added benefit of adding multiple textures to a graphic without the need to do any design alteration. As well having infill patterns instead of solid fills can help with paper warping due to plastic shrinkage. Large solids can shrink and cause paper to warp up![warped paper](https://github.com/tactile-graphics/guides/blob/main/3d-printing/trials/22_1_24_trials/warp.jpeg)

![Nice line infilled tactile map](https://github.com/tactile-graphics/guides/blob/main/3d-printing/trials/22_1_24_trials/infill_map.jpeg)

Pay attention to the following infill settings as they will determine your print speed/ how tactually discernable the infill is:
* Infill Line Width
* Infill Multiplier 
* Infill Layer Thickness
* Connect Infill Lines = False

### Ironing
Some printers have the ability to go over a print with a very thin layer of filament to promote a smoother surface finish. While this has proven successful in trials it adds a large amount of time to the print and is not necessary if you dial in your settings appropriately.

## Multiple Objects in a print
It may be helpful to import a tactile graphic into your slicer in multiple pieces. This can be helpful if you would like to have multiple infills or layer heights on a print.

## Printing Braille
TODO: Add best practices for design (fonts/sizes) and slicing

# Legal

Copyright 2022 Adventium Labs
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
