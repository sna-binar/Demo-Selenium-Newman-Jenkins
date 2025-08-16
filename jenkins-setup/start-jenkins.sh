#!/usr/bin/env bash
set -e
docker compose up -d
echo "⏳ Menunggu Jenkins inisialisasi..."
sleep 15
PASSWORD=$(docker exec -it jenkins bash -lc 'cat /var/jenkins_home/secrets/initialAdminPassword || true')
echo -e "\n➡️  Jenkins siap diakses di: http://localhost:8080"
echo "🔑 Password admin awal:"
echo "$PASSWORD"
