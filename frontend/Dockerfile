# ใช้ Node.js เวอร์ชันเบา (Alpine)
FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json ./
RUN npm install

COPY . .

# สร้าง production build
RUN npm run build

# ใช้ Vite Preview Server สำหรับ production
CMD ["npm", "run", "preview"]

# เปิดพอร์ต 5173
EXPOSE 5173
