#!/bin/bash
#
# Installs the BEAST2 NS package 
# using the R code in the 'mauricerinstall' and 'mauricer' package
#
# Because the R code in the package uses 'mauricerinstall::' 
# and 'mauricer::' in calling
# its functions, this scipt removes these
#
# Usage:
#
#  ./scripts/install_beast2_ns_pkg.sh
#
#
mkdir temp
mkdir temp/mauricer
mkdir temp/mauricerinstall
git clone --depth 1 https://github.com/ropensci/mauricer temp/mauricer
git clone --depth 1 https://github.com/richelbilderbeek/mauricerinstall temp/mauricerinstall
cat temp/mauricer/R/*.R > install_beast2_ns_pkg.R
cat temp/mauricerinstall/R/*.R >> install_beast2_ns_pkg.R
echo 'install_beast2_pkg("NS")' >> install_beast2_ns_pkg.R
sed -i'.orginal' "s/mauricer:://g" install_beast2_ns_pkg.R
sed -i'.orginal' "s/mauricerinstall:://g" install_beast2_ns_pkg.R
cat install_beast2_ns_pkg.R

# Run
Rscript install_beast2_ns_pkg.R

# Cleanup
rm -rf temp
rm install_beast2_ns_pkg.R
rm install_beast2_ns_pkg.R.orginal

