#!/bin/bash

# ------------------------------------------------------------------------------
# Clone the repositories required to build Osate2 from the sources.
# ------------------------------------------------------------------------------
echo "Checking CertWare -master"
if [ -d "CertWare" ]; then
  cd CertWare  
  git pull  
else
  git clone https://github.com/nasa/CertWare.git
  cd CertWare
fi
git reset --hard cbbfdb6012229444d3c0d7e64c08ac2a15081518
cd ..


echo "Checking ErrorModelV2 -develop"
if [ -d "ErrorModelV2" ]; then
  cd ErrorModelV2  
  git pull  
else
  git clone https://github.com/osate/ErrorModelV2.git -b develop
  cd ErrorModelV2
fi
git reset --hard 2790b1c7ddc487e542acba174abad9e607f43d2f
cd ..


echo "Checking osate2-ba -develop"
if [ -d "osate2-ba" ]; then
  cd osate2-ba  
  git pull  
else
  git clone https://github.com/osate/osate2-ba.git -b develop
  cd osate2-ba
fi
git reset --hard 7c8cbbec5cd1e8f06bb40e1cacee92b97befb7da
cd ..


echo "Checking osate2-core -develop"
if [ -d "osate2-core" ]; then
  cd osate2-core  
  git pull  
else
  git clone https://github.com/osate/osate2-core.git -b develop
  cd osate2-core
fi
git reset --hard f784e1d9b02ac849149ab9242ae25c7c51b13d0b
cd ..


echo "Checking osate2-ocarina -master"
if [ -d "osate2-ocarina" ]; then
  cd osate2-ocarina  
  git pull  
else
  git clone https://github.com/OpenAADL/osate2-ocarina.git
  cd osate2-ocarina
fi
git reset --hard 73ce60786699c32abba6c1488622c9f5c92853a2
cd ..


echo "Checking osate2-plugins -develop"
if [ -d "osate2-plugins" ]; then
  cd osate2-plugins  
  git pull  
else
  git clone https://github.com/osate/osate2-plugins.git -b develop
  cd osate2-plugins
fi
git reset --hard 1fbe8907615b18bccd7b958e93776d89aa6ad311
cd ..


echo "Checking osate-ge -develop"
if [ -d "osate-ge" ]; then
  cd osate-ge  
  git pull  
else
  git clone https://github.com/osate/osate-ge.git -b develop
  cd osate-ge
fi
git reset --hard f5407e1a91a2aa6e0eafe46e02595c03e7d70932
cd ..


echo "Checking smaccm -develop"
if [ -d "smaccm" ]; then
  cd smaccm
  git reset --hard
  git pull
  cd ..
else
  git clone https://github.com/smaccm/smaccm.git -b develop
fi


# ------------------------------------------------------------------------------
# Clone the Regression Suite
# ------------------------------------------------------------------------------
if [ -d "regressionSuite" ]; then
   cd ./regressionSuite
   git reset --hard
   git pull
   cd ..
else
   git clone https://github.com/pr-martin/regressionSuite.git regressionSuite -b master
fi
