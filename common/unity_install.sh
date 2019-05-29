ui_print "   Extracting files..."
tar -xf $TMPDIR/$ARCH.tar.xz -C $TMPDIR 2>/dev/null
BINARIES=$(ls -A $TMPDIR/$ARCH | sed '/bash/d')
for i in $TMPDIR/$ARCH/*; do
  if [ "$(basename $i)" == "bash" ] && [ -d "/system/xbin" ] && [ -f "/system/bin/bash" ]; then
    cp_ch -i $i $TMPDIR/system/bin/$(basename $i)
  else
    cp_ch -i $i $TMPDIR/system/xbin/$(basename $i)
  fi
done
