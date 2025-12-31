#!/bin/bash

# Nama file CAR
CAR_FILE="./target/poc-wso2mi-telkom_1.0.0.car"

# Tujuan remote
REMOTE_USER="swamedia"
REMOTE_HOST="localswa"
REMOTE_PATH="/home/swamedia/apps/wso2mi-4.4.0-telkom/repository/deployment/server/carbonapps"

# Jalankan SCP
echo "Uploading $CAR_FILE to $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH"
scp "$CAR_FILE" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH"

# Cek hasil
if [ $? -eq 0 ]; then
  echo "✅ Deploy sukses!"
else
  echo "❌ Deploy gagal!"
fi