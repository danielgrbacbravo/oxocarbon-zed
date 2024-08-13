#!/bin/bash

# Define the old and new colors
# Define the old and new colors
oldcolors=("#161616" "#262626" "#393939" "#525252" "#ddele6" "#f2f4f8" "#ffffff" "#08bdba" "#3ddbd9" "#78a9ff" "#ее5396" "#33b1ff" "#ff7eb6" "#42be65" "#be95ff" "#82cfff")
newcolors=("#ffffff" "#f2f2f2" "#d0d0d0" "#161616" "#37474F" "#90A4AE" "#525252" "#08bdba" "#ff7eb6" "#ee5396" "#FF6F00" "#0f62fe" "#673AB7" "#42be65" "#be95ff" "#FFAB91")

# Check if the arrays have the same length
if [ ${#oldcolors[@]} -ne ${#newcolors[@]} ]; then
    echo "Error: The number of old colors and new colors must be the same."
    exit 1
fi

# Make a copy of the original file
cp original.json temp.json

# Perform the replacements
for index in ${!oldcolors[*]}; do
    sed -i '' "s/${oldcolors[$index]}/TEMP$index/g" temp.json
done

for index in ${!newcolors[*]}; do
    sed -i '' "s/TEMP$index/${newcolors[$index]}/g" temp.json
done

# Rename the temporary file
mv temp.json newfile.json

echo "Done. The new file is named newfile.json."
