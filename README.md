# ims_recompile


sed -i "s|com/andorid/ims|android/telephony/ims|g" `grep -rl com/android/ims`
sed -i "s|Lcom/android|Landroid/telephony|g" `grep -rl com/android/ims`
grep -irnl . -e com.android.ims | xargs sed -i 's/com\.android\.ims/android\.telephony\.ims/g'
