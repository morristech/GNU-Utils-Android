for i in $TMPDIR/$ARCH/*; do
  if [ "$(basename $i)" == "bash" ] && [ -d "/system/xbin" ] && [ -f "/system/bin/bash" ]; then
    cp_ch -i $i $TMPDIR/system/bin/$(basename $i)
  else
    cp_ch -i $i $TMPDIR/system/xbin/$(basename $i)
  fi
done
