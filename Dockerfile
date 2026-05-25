# 1. Pake base image Node.js versi terbaru yang stabil dan ringan (Alpine Linux)
FROM node:20-alpine

# 2. Tentukan folder kerja di dalam container
WORKDIR /app

# 3. Copy file package.json dan package-lock.json dulu buat install dependencies
COPY package*.json ./

# 4. Install semua library/dependencies aplikasi Node.js lu
RUN npm install --production

# 5. Copy seluruh sisa kode aplikasi dari laptop lu ke dalam container
COPY . .

# 6. Buka port aplikasi (sesuaikan dengan port aplikasi Node.js lu, biasanya 3000)
EXPOSE 3000

# 7. Perintah utama untuk ngejalanin aplikasi lu pas containernya aktif
CMD ["npm", "start"] 