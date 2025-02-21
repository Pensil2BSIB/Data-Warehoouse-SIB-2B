
# Panduan Step by Step Perubahan di Repository Git

## 1. Clone Repository
Langkah pertama, clone repo ke dalam folder yang ingin kamu gunakan dengan perintah berikut:
sh
git clone <url-repo>

Setelah selesai, akan muncul folder hasil clone dengan nama repository tersebut.

![image](https://github.com/user-attachments/assets/d2053d32-883d-4029-8d24-e0d931f02aad)


## 2. Buat Folder dengan Nama Kalian
Di dalam folder hasil clone, buat folder baru dan beri nama sesuai dengan nama kalian.

![image](https://github.com/user-attachments/assets/0c1bba6b-d25c-4bed-a09d-d6fce45183b4)


## 3. Masukkan File ke Dalam Folder Baru
Pindahkan atau tambahkan file yang ingin di-upload ke dalam folder yang sudah kalian buat.

![image](https://github.com/user-attachments/assets/cc1785b2-11e0-434a-9ebe-821386c44b33)


## 4. Buka Git Bash atau CMD
Arahkan terminal ke dalam folder hasil clone (contoh: Data Warehouse-SIB-2B).
sh
cd path/to/Data-Warehouse-SIB-2B

![image](https://github.com/user-attachments/assets/e65ea779-2390-4edf-983b-84a316b623a5)

![image](https://github.com/user-attachments/assets/e7979b7c-74ea-4980-aa5a-506a6ea364bc)


## 5. Tarik Perubahan Terbaru dari Repository
Sebelum menambahkan file, pastikan repo lokal sudah up-to-date dengan menjalankan:
sh
git pull

![image](https://github.com/user-attachments/assets/3b53a0fe-cfec-4b1e-8bf2-8b0e280ae0eb)


## 6. Tambahkan File ke Staging Area
Gunakan salah satu perintah berikut:
- Untuk menambahkan semua file:
  sh
  git add .
  
- Untuk menambahkan file tertentu:
  sh
  git add <nama-file>
  
![image](https://github.com/user-attachments/assets/3526621b-12fd-40fb-9ece-416992e24305)


## 7. Commit Perubahan
Setelah file ditambahkan, buat commit dengan pesan yang sesuai:
sh
git commit -m "Menambahkan file baru oleh [Nama Kamu]"

![image](https://github.com/user-attachments/assets/4311bb9b-6db5-4d38-acbe-12d28fdbfd69)


## 8. Kirim Perubahan ke Repository
Dorong perubahan ke repository menggunakan:
sh
git push

![image](https://github.com/user-attachments/assets/d8508239-9cd1-4659-a064-790a04b22ee3)


### 🎉 Selesai! Perubahanmu telah berhasil dikirim ke repository. 🎉

---
### ⚠️ Catatan Penting
Jika saat menjalankan git add . muncul warning seperti ini:

warning: LF will be replaced by CRLF in <nama-file>

![WhatsApp Image 2025-02-21 at 13 07 11_9da08526](https://github.com/user-attachments/assets/f8d3fa42-5ad6-4faf-936a-5c3158e081a0)

Coba langsung lakukan git push. Jika berhasil, berarti tidak ada masalah.

Selamat berkontribusi! 🚀