FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json tsconfig.json ./
RUN npm install

COPY . .

# คอมไพล์ TypeScript เป็น JavaScript
RUN npm run build

# รันแอปใน Production Mode
CMD ["node", "dist/index.js"]

EXPOSE 5000
