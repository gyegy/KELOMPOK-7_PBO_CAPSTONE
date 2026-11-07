## 1. Nama Program

# **AeroCare: Sistem Informasi Pengelolaan Fasilitas dan Pemeliharaan Bandara**

## 2. Deskripsi Singkat

AeroCare adalah sistem informasi untuk membantu pengelolaan fasilitas dan pemeliharaan bandara. Sistem ini dirancang untuk mencatat data fasilitas, menerima laporan kerusakan, mengatur penugasan petugas, serta memantau progres penanganan.

AeroCare memiliki tiga jenis pengguna, yaitu **Admin**, **Supervisor**, dan **Petugas**. Setiap pengguna memiliki hak akses dan tanggung jawab yang berbeda. Sistem ini masih dalam tahap pengembangan; fitur dan dokumentasi akan diperbarui seiring dengan penyelesaian program.

## 3. Fitur Utama Program

Fitur yang dirancang dalam AeroCare meliputi:

- **Login dan hak akses pengguna** berdasarkan peran Admin, Supervisor, atau Petugas.
- **Pengelolaan data pengguna** oleh Admin.
- **Pengelolaan data fasilitas bandara**, termasuk penambahan, penampilan, perubahan, dan penghapusan data.
- **Pencatatan dan pengelolaan laporan kerusakan** fasilitas.
- **Pencarian laporan** berdasarkan kriteria seperti ID laporan, tanggal, fasilitas atau lokasi, status, prioritas, dan petugas.
- **Penugasan petugas** untuk menangani laporan kerusakan oleh Supervisor.
- **Pemantauan progres penanganan** dan riwayat progres oleh Supervisor.
- **Pencatatan progres pekerjaan** oleh Petugas.
- **Dashboard dan rekap laporan** untuk membantu pemantauan kondisi fasilitas serta penanganan kerusakan.

## 4. Tech Stack

| Bagian | Teknologi |
|---|---|
| Bahasa pemrograman | Java |
| Antarmuka pengguna | Java Swing |
| Basis data | MySQL |
| Koneksi Java ke basis data | JDBC |
| Perancangan diagram | Draw.io |

## 5. Perancangan Sistem

### 5.1 Flowchart

Flowchart berikut menggambarkan alur penggunaan dan proses utama AeroCare, mulai dari login hingga pengelolaan fasilitas, laporan, penugasan, progres, pencarian, dan rekap.

#### Mulai, Login, dan Hak Akses

<img width="1023" height="844" alt="Capstone_Flowchart-1  Mulai, Login   Hak Akses drawio" src="https://github.com/user-attachments/assets/586ed9cc-f5e3-46a1-b048-10093f00b0e1" />

#### Menu Admin

<img width="1563" height="414" alt="Capstone_Flowchart-2  Menu Admin drawio" src="https://github.com/user-attachments/assets/4bc45723-1ab4-47aa-a40b-82c68c9d5a50" />

#### Kelola Pengguna

<img width="2788" height="1198" alt="Capstone_Flowchart-3  Kelola Pengguna drawio" src="https://github.com/user-attachments/assets/1e020eb8-9b75-4a70-a924-b9db05559ea4" />


#### Kelola Fasilitas

<img width="2888" height="1108" alt="Capstone_Flowchart-4  Kelola Fasilitas drawio" src="https://github.com/user-attachments/assets/e88dcd94-d6d0-42fb-9d2f-e6626e9545f3" />


#### Pengelolaan Laporan Kerusakan

<img width="2398" height="1184" alt="Capstone_Flowchart-5  Laporan Kerusakan drawio" src="https://github.com/user-attachments/assets/4a1e83f0-b66f-42a7-978b-b69491ed80b2" />


#### Penugasan oleh Supervisor

<img width="1968" height="1694" alt="Capstone_Flowchart-6  Supervisor - Penugasan drawio" src="https://github.com/user-attachments/assets/47357cd1-c8f2-4253-8514-f56a90efeb2a" />


#### Pemantauan Progres oleh Supervisor

<img width="528" height="802" alt="Capstone_Flowchart-7  Supervisor - Pantau Progres drawio" src="https://github.com/user-attachments/assets/89c7c0cb-a940-4f81-ac33-fa7995824eea" />


#### Progres Penanganan oleh Petugas

<img width="3018" height="1578" alt="Capstone_Flowchart-8  Petugas - Progres Penanganan drawio" src="https://github.com/user-attachments/assets/69a2144c-db87-41ea-b7ed-5a3d55fbfd4f" />


#### Pencarian Laporan

<img width="851" height="1447" alt="Capstone_Flowchart-9  Pencarian  drawio" src="https://github.com/user-attachments/assets/4f18eeba-13c9-4a64-9d74-90384a99df4f" />


#### Dashboard dan Rekap

<img width="766" height="1212" alt="Capstone_Flowchart-10  Dashboard_Rekap drawio" src="https://github.com/user-attachments/assets/d54f2eac-4aac-4006-b899-01253cbb942a" />


### 5.2 Use Case Diagram

Use Case Diagram menunjukkan interaksi Admin, Supervisor, dan Petugas dengan fitur-fitur yang tersedia di AeroCare.

<img width="1414" height="1672" alt="Use Case AEROCARE drawio (10)" src="https://github.com/user-attachments/assets/13077903-cb3b-44d0-ac01-25e4f9cf42e1" />


### 5.3 Entity Relationship Diagram (ERD)

ERD menggambarkan entitas, atribut, serta hubungan antarentitas yang digunakan dalam sistem AeroCare. Perancangan ERD terdiri atas ERD Logical dan ERD Relational.

#### ERD Logical

ERD Logical menggambarkan entitas dan hubungan antarentitas secara konseptual dalam sistem AeroCare.

<img width="1600" height="764" alt="WhatsApp Image 2026-11-02 at 18 50 12" src="https://github.com/user-attachments/assets/6edf7616-b993-4a7f-8b88-7161399503b5" />


#### ERD Relational

ERD Relational menggambarkan struktur tabel, atribut, primary key, foreign key, serta hubungan antar tabel dalam basis data AeroCare.

<img width="1600" height="779" alt="WhatsApp Image 2026-11-02 at 18 50 12 (1)" src="https://github.com/user-attachments/assets/9511f91b-557a-42db-902c-a252291e517f" />

---

## 6. Struktur Folder/Package

Proyek AeroCare dikelola dengan **Maven** dan menggunakan pola **MVC (Model–View–Controller)** yang dipisahkan lagi dengan lapisan **DAO** untuk akses basis data.

```text
KELOMPOK-7_PBO_CAPSTONE/
├── pom.xml                          # konfigurasi Maven & dependency (MySQL Connector/J)
├── nbactions.xml                    # konfigurasi run project NetBeans
├── README.md
├── docs/
│   ├── images/                      # flowchart, use case, ERD
│   └── screenshots/                 # screenshot GUI aplikasi
└── src/
    └── main/
        ├── java/
        │   └── com/mycompany/aerocare/
        │       ├── AeroCare.java            # entry point aplikasi
        │       ├── config/
        │       │   ├── Koneksi.java         # konfigurasi koneksi JDBC ke MySQL
        │       │   ├── Sesi.java            # penyimpanan sesi pengguna yang login
        │       │   └── TestKoneksi.java     # pengecekan koneksi basis data
        │       ├── controller/
        │       │   ├── BaseController.java      # kelas abstrak induk controller
        │       │   ├── AuthController.java      # autentikasi login & logout
        │       │   ├── AdminController.java     # logika fitur Admin
        │       │   └── ...                      # controller fitur lainnya
        │       ├── dao/
        │       │   ├── PenggunaDAO.java
        │       │   ├── FasilitasDAO.java
        │       │   ├── LaporanKerusakanDAO.java
        │       │   ├── PenugasanDAO.java
        │       │   ├── DetailPenugasanDAO.java
        │       │   ├── ProgresPenangananDAO.java
        │       │   └── RekapDAO.java
        │       ├── model/
        │       │   ├── Pengguna.java            # kelas abstrak (superclass)
        │       │   ├── Admin.java               # subclass Pengguna
        │       │   ├── Supervisor.java          # subclass Pengguna
        │       │   ├── Petugas.java             # subclass Pengguna
        │       │   ├── Fasilitas.java
        │       │   ├── LaporanKerusakan.java
        │       │   ├── Penugasan.java
        │       │   └── ProgresPenanganan.java
        │       ├── pengguna/
        │       │   └── ...                      # tampilan login & keluar
        │       └── view/
        │           ├── LoginFrame.java
        │           ├── DashboardAdmin.java
        │           ├── DashboardSupervisor.java
        │           ├── DashboardPetugas.java
        │           ├── PenggunaFrame.java / PenggunaDialog.java / PenggunaView.java
        │           ├── FasilitasFrame.java / FasilitasDialog.java / FasilitasView.java
        │           ├── LaporanFrame.java / LaporanDialog.java / LaporanView.java
        │           ├── PenugasanFrame.java / PenugasanView.java
        │           ├── ProgresFrame.java / ProgresView.java
        │           ├── RiwayatProgresFrame.java / RiwayatPenugasanFrame.java
        │           ├── CariLaporanView.java
        │           ├── RekapFrame.java / RekapitulasiView.java
        │           ├── RiwayatGangguanFrame.java
        │           ├── Sidebar.java / Header.java
        │           ├── DialogKonfirmasi.java
        │           ├── PrioritasRenderer.java
        │           ├── SupervisorUtil.java
        │           ├── ViewUtil.java / ViewHelper.java
        │           └── *.form                   # form NetBeans (GUI builder)
        └── resources/
            └── images/                          # aset gambar dan logo aplikasi
```

**Keterangan pembagian tanggung jawab tiap package:**

| Package | Tanggung Jawab |
|---|---|
| `com.mycompany.aerocare` | Kelas utama `AeroCare` sebagai titik masuk aplikasi |
| `config` | Koneksi basis data (`Koneksi`), sesi pengguna aktif (`Sesi`), dan pengujian koneksi |
| `controller` | Logika aplikasi: autentikasi, validasi, dan penghubung antara view dan DAO |
| `dao` | Seluruh perintah SQL dan akses data MySQL melalui JDBC |
| `model` | Representasi data/entitas sistem, termasuk hierarki pengguna |
| `pengguna` | Tampilan proses login dan keluar |
| `view` | Seluruh antarmuka Java Swing (frame, panel, dialog, renderer tabel) |
| `resources/images` | Aset visual aplikasi (logo dan gambar pendukung) |

## 7. Penjelasan Penerapan 4 Pilar OOP di dalam Program

### 7.1 Enkapsulasi

Enkapsulasi diterapkan dengan menyembunyikan atribut sebagai `private` dan menyediakan akses terkontrol melalui getter/setter atau method tertentu.

- Seluruh kelas pada package `model` (`Pengguna`, `Fasilitas`, `LaporanKerusakan`, `Penugasan`, `ProgresPenanganan`) menyimpan atributnya sebagai `private` dan hanya dapat diakses lewat getter/setter, misalnya `getNamaFasilitas()`, `setKondisi()`, dan `getStatusProgres()`.
- Kelas `Sesi` menyimpan data sesi secara `private` dengan constructor `private`, sehingga objek sesi tidak dapat dibuat sembarangan dari luar kelas. Data sesi hanya diakses melalui method yang disediakan.
- `PenggunaDialog` menyimpan field `dataLama` dan `berhasil` sebagai `private`; status keberhasilan proses hanya dibaca lewat `isBerhasil()`.
- `Header` menyimpan `breadcrumb`, `nama`, dan `peran` sebagai `private` dan diperbarui melalui `setNama()` dan `setPeran()`.
- `Sidebar` menyimpan state `peran` dan `aktif` sebagai field `private` dan mengubah tampilannya melalui method internal.

```java
public class Fasilitas {
    private String idFasilitas;
    private String namaFasilitas;
    private String kondisi;

    public String getNamaFasilitas() { return namaFasilitas; }
    public void setNamaFasilitas(String namaFasilitas) { this.namaFasilitas = namaFasilitas; }
    public void setKondisi(String kondisi) { this.kondisi = kondisi; }
}
```

### 7.2 Abstraksi

Abstraksi diterapkan dengan menyembunyikan detail implementasi dan hanya menampilkan fungsi yang penting bagi pengguna kelas.

- `Pengguna` merupakan **kelas abstrak** yang mendefinisikan method abstrak `getInformasiPeran()`. Setiap subclass wajib mengimplementasikan method tersebut sesuai karakteristik perannya.
- `BaseController` adalah **kelas abstrak** yang menyediakan operasi umum bagi seluruh controller turunan, sehingga kode berulang tidak ditulis ulang.
- Lapisan DAO (`PenggunaDAO`, `FasilitasDAO`, `LaporanKerusakanDAO`, `PenugasanDAO`, `DetailPenugasanDAO`, `ProgresPenangananDAO`, `RekapDAO`) menyembunyikan detail SQL dan JDBC. View hanya memanggil method seperti `ambilSemua()` atau `simpan()` tanpa mengetahui perintah SQL di dalamnya.
- `SupervisorUtil` dan `ViewUtil` merangkum proses pengambilan serta pengolahan data, sehingga kelas GUI tidak perlu menangani logika tersebut secara langsung.

```java
public abstract class Pengguna {
    private String idPengguna;
    private String namaLengkap;

    public abstract String getInformasiPeran();

    public String getNamaLengkap() { return namaLengkap; }
}
```

### 7.3 Pewarisan (Inheritance)

Pewarisan diterapkan untuk menghindari duplikasi kode dan membangun hubungan "adalah sebuah" (is-a) antar kelas.

- `Admin`, `Supervisor`, dan `Petugas` merupakan subclass dari kelas abstrak `Pengguna`.
- `AdminController` mewarisi `AuthController`, yang sebelumnya juga mewarisi `BaseController`. Dengan demikian terbentuk rantai pewarisan `AdminController` → `AuthController` → `BaseController`.
- Seluruh frame pada package `view` mewarisi `javax.swing.JFrame` (`LoginFrame`, `DashboardAdmin`, `DashboardSupervisor`, `DashboardPetugas`, `FasilitasFrame`, `LaporanFrame`, `PenggunaFrame`, `PenugasanFrame`, `ProgresFrame`, `RekapFrame`).
- Panel mewarisi `javax.swing.JPanel` (`FasilitasView`, `LaporanView`, `PenggunaView`, `PenugasanView`, `ProgresView`, `CariLaporanView`, `RekapitulasiView`, `Header`, `Sidebar`).
- Dialog mewarisi `javax.swing.JDialog` (`FasilitasDialog`, `LaporanDialog`, `PenggunaDialog`, `DialogKonfirmasi`).
- `PrioritasRenderer` mewarisi `javax.swing.JLabel` untuk menampilkan badge prioritas pada tabel.

```java
public class Petugas extends Pengguna {
    private String spesialisasi;
    private String shiftKerja;

    @Override
    public String getInformasiPeran() {
        return "Petugas - " + spesialisasi + " (" + shiftKerja + ")";
    }
}
```

### 7.4 Polimorfisme

Polimorfisme diterapkan agar satu tipe data atau satu nama method dapat memiliki perilaku berbeda sesuai objek yang menjalankannya.

- Method `getInformasiPeran()` di-override oleh `Admin`, `Supervisor`, dan `Petugas` dengan hasil berbeda sesuai peran.
- `PenggunaDAO.ambilDataPengguna()` membentuk objek subclass (`Admin`, `Supervisor`, atau `Petugas`) berdasarkan nilai kolom `peran`, lalu mengembalikannya sebagai tipe `Pengguna`. Pemanggil cukup memakai tipe `Pengguna` tanpa perlu mengetahui kelas aslinya.
- Daftar bertipe `List<Pengguna>` dapat menampung objek dari ketiga peran sekaligus. Method `dataKhusus(Pengguna p)` menampilkan informasi berbeda menggunakan `instanceof`: hak akses untuk Admin, area pengawasan untuk Supervisor, serta spesialisasi dan shift untuk Petugas.
- `LoginFrame.bukaMenu(String peran)` memilih dan menampilkan frame yang berbeda (`AdminMenuFrame`, `SupervisorMenuFrame`, atau `PetugasMenuFrame`) berdasarkan peran pengguna.
- `PrioritasRenderer` mengimplementasikan `TableCellRenderer` dan meng-override `getTableCellRendererComponent()` serta `paintComponent()`, sehingga tampilan sel prioritas berbeda dari sel biasa meskipun dirender oleh tabel yang sama.

```java
Pengguna p = PenggunaDAO.ambilDataPengguna(username);   // bisa Admin, Supervisor, atau Petugas
System.out.println(p.getInformasiPeran());               // hasil berbeda sesuai objek aslinya
```

**Ringkasan penerapan:**

| Pilar OOP | Bentuk Penerapan | Contoh Kelas / Method |
|---|---|---|
| Enkapsulasi | Atribut `private` + getter/setter, constructor `private` | `Pengguna`, `Fasilitas`, `Sesi`, `Header` |
| Abstraksi | Kelas abstrak dan method abstrak, penyembunyian detail SQL | `Pengguna`, `BaseController`, seluruh kelas DAO |
| Pewarisan | Subclass mewarisi superclass dan komponen Swing | `Admin`/`Supervisor`/`Petugas` extends `Pengguna`; frame extends `JFrame` |
| Polimorfisme | Method overriding, objek subclass dalam tipe superclass, `instanceof` | `getInformasiPeran()`, `PenggunaDAO.ambilDataPengguna()`, `PrioritasRenderer` |

## 8. Cara Penggunaan Program

### 8.1 Prasyarat

- **JDK** (disarankan JDK 17 atau lebih baru)
- **Apache Maven**
- **MySQL** (XAMPP/Laragon atau MySQL Server)
- **NetBeans IDE** (opsional, untuk membuka form `.java` + `.form`)

### 8.2 Persiapan Menjalankan Program

1. Clone repositori:
   ```bash
   git clone https://github.com/gyegy/KELOMPOK-7_PBO_CAPSTONE.git
   ```
2. Buat basis data `aerocare` di MySQL, lalu impor file SQL yang disediakan.
3. Sesuaikan konfigurasi koneksi pada `src/main/java/com/mycompany/aerocare/config/Koneksi.java`:
   ```java
   jdbc:mysql://localhost:3306/aerocare
   ```
   Secara bawaan proyek memakai user `root` tanpa password. Ubah bila konfigurasi MySQL di komputer berbeda.
4. Jalankan aplikasi melalui kelas utama `com.mycompany.aerocare.AeroCare`, atau lewat Maven:
   ```bash
   mvn clean package
   mvn exec:java
   ```
5. Saat aplikasi dijalankan, sistem memeriksa koneksi basis data terlebih dahulu, lalu menampilkan halaman login.

### 8.3 Login dan Hak Akses

1. Masukkan **username** dan **password** akun yang aktif.
2. Klik **Login**.
3. Sistem memeriksa username, kecocokan password, dan status akun. Jika gagal, muncul pesan "Login gagal: username/password salah atau akun nonaktif".
4. Jika berhasil, sesi pengguna disimpan dan sistem menampilkan menu sesuai peran: **Admin**, **Supervisor**, atau **Petugas**.

![Tampilan Login AeroCare](docs/screenshots/login.png)

### 8.4 Penggunaan oleh Admin

Admin bertanggung jawab atas data pengguna, data fasilitas, laporan kerusakan, dan pencarian laporan.

**a. Kelola Data Pengguna**

1. Buka menu **Kelola Pengguna**.
2. Tabel menampilkan ID, nama, username, peran, status, dan data khusus tiap peran.
3. Gunakan kolom pencarian untuk mencari pengguna, atau tombol **Tampilkan Semua** untuk memuat ulang seluruh data.
4. Klik **Tambah Pengguna**, isi nama, username, password, telepon, dan peran. Email bersifat opsional. Batas panjang: nama 60, username 30, password 6–30, email 50, telepon 20 karakter. Username harus unik.
5. Untuk mengubah data, pilih baris pada tabel lalu klik **Ubah**. Username dan peran tidak dapat diubah; password boleh dikosongkan agar tidak berubah.
6. Akun sendiri tidak dapat dinonaktifkan.

![Kelola Data Pengguna](docs/screenshots/kelola-pengguna.png)

**b. Kelola Data Fasilitas**

1. Buka menu **Kelola Fasilitas**.
2. Tabel menampilkan ID, nama, jenis, lokasi, kondisi, dan keterangan fasilitas.
3. Klik **+ Tambah Fasilitas**, pilih jenis (Ruang Tunggu, Toilet, Troli Bagasi, Lift, Eskalator), lalu isi nama, lokasi, kondisi, dan keterangan. Batas panjang: nama 30, jenis 30, lokasi 50, keterangan 60 karakter.
4. Pilih baris lalu klik **Ubah** untuk memperbarui data.
5. Untuk menghapus, pilih baris lalu klik **Hapus**. Fasilitas yang sudah memiliki riwayat laporan kerusakan tidak dapat dihapus dan akan menampilkan pesan penolakan.

![Kelola Data Fasilitas](docs/screenshots/kelola-fasilitas.png)

**c. Pengelolaan Laporan Kerusakan**

1. Buka menu **Laporan Kerusakan**.
2. Klik **Catat Laporan Kerusakan**, pilih fasilitas, isi deskripsi maksimal 150 karakter, lalu pilih prioritas (**Tinggi**, **Sedang**, atau **Rendah**).
3. Klik **Simpan**. Sistem membuat `id_laporan` otomatis, menetapkan tanggal hari ini, status **Menunggu**, dan mengubah kondisi fasilitas menjadi **Rusak**.
4. Laporan hanya dapat diubah selama statusnya masih **Menunggu**.

![Pengelolaan Laporan Kerusakan](docs/screenshots/laporan-kerusakan.png)

**d. Cari Laporan**

1. Buka menu **Cari Laporan**.
2. Isi salah satu atau beberapa kriteria: ID laporan, rentang tanggal, fasilitas/lokasi, status, prioritas, dan petugas.
3. Klik **Cari** untuk menampilkan hasil, atau **Reset** untuk mengosongkan filter.
4. Klik kolom **Aksi** pada baris hasil untuk melihat detail laporan, petugas penanggung jawab, catatan, dan riwayat progres.

![Pencarian Laporan](docs/screenshots/cari-laporan.png)

### 8.5 Penggunaan oleh Supervisor

Supervisor bertanggung jawab atas penugasan petugas, pemantauan progres, dan rekapitulasi laporan.

**a. Penugasan Laporan ke Petugas**

1. Buka menu **Penugasan Laporan**.
2. Sistem menampilkan daftar laporan berstatus **Menunggu**. Jika tidak ada, muncul pesan "Tidak ada laporan menunggu penugasan".
3. Pilih satu laporan, lalu pilih satu atau lebih petugas aktif.
4. Petugas pertama yang dipilih menjadi **petugas utama**; urutan dapat diubah dengan tombol **Jadikan Petugas Utama**.
5. Isi catatan penugasan bila perlu (opsional, maksimal 150 karakter), lalu klik **Simpan**.
6. Sistem membuat data `PENUGASAN` dan `DETAIL_PENUGASAN`, serta mengubah status laporan menjadi **Ditugaskan**.

![Penugasan Laporan](docs/screenshots/penugasan.png)

**b. Pantau Progres Penugasan**

1. Buka menu **Pantau Progres**.
2. Pilih penugasan untuk melihat riwayat progres penanganan beserta waktu update dan tindakan yang dilakukan petugas.

![Pantau Progres](docs/screenshots/pantau-progres.png)

**c. Rekap Laporan**

1. Buka menu **Rekap Laporan**.
2. Masukkan tanggal awal dan/atau tanggal akhir dengan format `yyyy-MM-dd` (boleh dikosongkan), lalu klik **Terapkan**.
3. Dashboard menampilkan rekap jumlah laporan per status dan prioritas, fasilitas dengan gangguan berulang, beban penugasan per petugas, serta rata-rata waktu penyelesaian.
4. Pilih salah satu fasilitas lalu klik **Lihat Riwayat Gangguan** untuk melihat riwayat gangguan dan penanganannya.
5. Klik **Reset** untuk menghapus filter periode.

![Rekap Laporan](docs/screenshots/rekap-laporan.png)

### 8.6 Penggunaan oleh Petugas

Petugas bertanggung jawab melihat tugas dan mencatat progres penanganan.

1. Setelah login, dashboard menampilkan jumlah tugas aktif, tugas diproses, prioritas tinggi, dan tugas selesai bulan ini.
2. Buka menu **Tugas Saya** untuk melihat daftar penugasan yang melibatkan petugas tersebut.
3. Pilih tugas lalu klik **Perbarui Progres**.
4. Pilih status progres: **Pemeriksaan**, **Perbaikan**, **Pengujian**, atau **Selesai**.
5. Isi tindakan penanganan (opsional, maksimal 150 karakter). Jika dikosongkan, sistem memakai tindakan bawaan sesuai status.
6. Klik **Simpan Progres**. Jika status dipilih **Selesai**, sistem menutup penugasan, mengubah laporan menjadi **Selesai**, dan mengembalikan kondisi fasilitas menjadi **Baik**.
7. Buka menu **Riwayat Progres Saya** untuk melihat seluruh progres yang pernah dicatat, diurutkan dari waktu update terbaru.

![Dashboard Petugas](docs/screenshots/dashboard-petugas.png)

![Perbarui Progres Penanganan](docs/screenshots/perbarui-progres.png)

### 8.7 Logout

Klik tombol **Logout** pada dashboard. Sistem meminta konfirmasi, menghapus sesi login, lalu menampilkan kembali halaman login.

## 9. Kontributor

| No | Nama | NIM | Peran |
|---|---|---|---|
| 1 | Muhammad Arzad | 2509116014 | Pengembangan Program |
| 2 | Fatimatuzzahrah | 2509116020 | Pengembangan Database |
| 3 | Aulia Aisyah Al Humaira | 2509116029 | Pengembangan Database |
| 4 | Muhammad Ilham Zaini | 2509116091 | Pengembangan Program |

**Program Studi Sistem Informasi — Universitas Mulawarman, 2026**

---
