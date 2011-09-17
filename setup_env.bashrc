
# Sets some convenience shell variables for us.
#
# Matti Kariluoma <matti.kariluoma@gmail.com> Sep 17 2011


echo "Where is your toolchain located?"

# TODO: Check input.

TOOLCHAIN_BINDIR='/opt/Sourcery/bin'
export PATH="$PATH:$TOOLCHAIN_BINDIR"

echo "We will alias arm-none-eabi-* to arm-kinetis-eabi-* . Proceed?"

# TODO: Check input.
#alias arm-none-eabi-gcc='arm-kinetis-eabi-gcc'
#alias arm-none-eabi-g++='arm-kinetis-eabi-g++'
#alias arm-none-eabi-ar='arm-kinetis-eabi-ar'
#alias arm-none-eabi-ld='arm-kinetis-eabi-ld'

mkdir -p bin/
ln -s "$(which arm-kinetis-eabi-gcc)" bin/arm-none-eabi-gcc
ln -s "$(which arm-kinetis-eabi-g++)" bin/arm-none-eabi-g++
ln -s "$(which arm-kinetis-eabi-ar)" bin/arm-none-eabi-ar
ln -s "$(which arm-kinetis-eabi-ld)" bin/arm-none-eabi-ld

export PATH="$PATH:$(pwd)/bin/"
