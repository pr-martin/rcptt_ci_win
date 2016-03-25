#!/bin/bash

# ------------------------------------------------------------------------------
# Clone the repositories required to build Osate2 from the sources.
# ------------------------------------------------------------------------------
echo "Checking CertWare -master"
if [ -d "CertWare" ]; then
  cd CertWare
  git reset --hard
  git pull
  cd ..
else
  git clone https://github.com/nasa/CertWare.git
fi

echo "Checking ErrorModelV2 -develop"
if [ -d "ErrorModelV2" ]; then
  cd ErrorModelV2
  git reset --hard  
  git pull
  cd ..
else
  git clone https://github.com/osate/ErrorModelV2.git -b develop
fi

echo "Checking osate2-ba -develop"
if [ -d "osate2-ba" ]; then
  cd osate2-ba
  git reset --hard
  git pull
  cd ..
else
  git clone https://github.com/osate/osate2-ba.git -b develop
fi

echo "Checking osate2-core -develop"
if [ -d "osate2-core" ]; then
  cd osate2-core
  git reset --hard
  git pull
  cd ..
else
  git clone https://github.com/osate/osate2-core.git -b develop
fi

echo "Checking osate2-ocarina -master"
if [ -d "osate2-ocarina" ]; then
  cd osate2-ocarina
  git reset --hard
  git pull
  cd ..
else
  git clone https://github.com/OpenAADL/osate2-ocarina.git
fi

echo "Checking osate2-plugins -develop"
if [ -d "osate2-plugins" ]; then
  cd osate2-plugins
  git reset --hard
  git pull
  cd ..
else
  git clone https://github.com/osate/osate2-plugins.git -b develop
fi

echo "Checking osate-ge -develop"
if [ -d "osate-ge" ]; then
  cd osate-ge
  git reset --hard
  git pull
  cd ..
else
  git clone https://github.com/osate/osate-ge.git -b develop
fi

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
