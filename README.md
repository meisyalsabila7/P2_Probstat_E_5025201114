# P2_Probstat_E_5025201114

* Nama  : Meisya Salsabila Indrijo Putri 
* NRP   : 5025201114
* Kelas : Probabilitas dan Statistika E

## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas?

![1](https://user-images.githubusercontent.com/94627623/170870568-23dd8c2f-f763-475c-8823-01f856c8bf72.jpg)

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.
```
install.packages("BSDA")
library(BSDA)
```
### 1A
Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas
* Data Sebelum dan Sesudah melakukan aktivitas
```
orang.ke = c(seq(1:9))
sebelum = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
sesudah = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
data = data.frame(orang.ke,sebelum, sesudah)
n = 9
```
* Standar Deviasi
```
selisih = data$sesudah - data$sebelum
standardev = sd(selisih)
standardev
```
### 1B
Carilah nilai t (p-value)
```
mu = 0
```
* Cari rata rata selisihnya terlebih dahulu
```
xbar = mean(selisih)
xbar
```
* Cari nilai t
```
t =((xbar - mu) / (standardev/sqrt(n)))
t
```
* Cari p-value
```
pvalue = 2 * pt(-abs(t), df=n-1)
pvalue
```
#### Hasil 1A dan 1B
![1b](https://user-images.githubusercontent.com/94627623/170870571-f7766ac6-c6ed-4510-a505-accaf9aa91c6.jpg)
### 1C
Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
```
t.test(x=data$sesudah, 
       y=data$sebelum,
       alternative = "two.sided", 
       mu = 0, 
       paired = TRUE, 
       var.equal = TRUE, 
       conf.level = 0.95)
```
#### Hasil 1C
![1c](https://user-images.githubusercontent.com/94627623/170870573-e0f2a513-8fe2-4a6b-876f-8c63abe04c33.jpg)


## Soal 2
Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).
* Memasukkan data yang ada
```
standardev = 3900
n = 100
xbar = 23500
mu = 20000
```
* Cari p-value
```
z =( (xbar - mu) / (standardev / sqrt(n)))
pvalue = pnorm(-abs(z))
pvalue
```
### 2A
Apakah Anda setuju dengan klaim tersebut?

`Setuju, karena H0 yaitu mobil rata-rata dikemudikan > 20.000km/tahun`
### 2B
Jelaskan maksud dari output yang dihasilkan!

![2](https://user-images.githubusercontent.com/94627623/170871099-d89d74d0-59ef-4924-8a47-b8b8375362a7.jpg)

### 2C
Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!
#### Jawaban 2B dan 2C
```
Tidak adanya level yang siginificant. Namun p-value yang bernilai 1.425032e-19 sudah cukup kecil.
Maka didapat keputusan bahwa H0 yaitu mobil rata-rata dikemudikan > 20.000km/tahun.
```


## Soal 3
Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

![3](https://user-images.githubusercontent.com/94627623/170876942-0f2c3ae4-1f70-4deb-ae3e-8727fa563ab1.jpg)

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah :
### 3A 
H0 dan H1

![3a](https://user-images.githubusercontent.com/94627623/170876945-4f06d952-e86a-4491-9172-6a9f3f8d28c0.jpg)

```
H0 = 9.50
H1 = 10.98
```
### 3B
Hitung Sampel Statistik
```
nBDG = 19
nBL = 27
meanBDG = 3.64
meanBL = 2.79
sdBDG = 1.67
sdBL = 1.32
signLevel = 0.05
```
* Cari SP2 dulu
```
SP2 = ((nBDG-1)*sdBDG*sdBDG + (nBL-1)*sdBL*sdBL)/ (nBDG+nBL-2)
```
* Hitung t
```
t = (meanBDG-meanBL - 0)/(sqrt(SP2*(1/nBDG + 1/nBL)))
```
#### Hasil
![3b](https://user-images.githubusercontent.com/94627623/170876946-4e36dd8b-2d21-46bc-9764-20e9618e30cd.jpg)

### 3C
Lakukan Uji Statistik (df =2)
```
t = qt(p=signLevel, df=2)
batasAtas = (meanBDG - meanBL) - t*(sqrt(SP2*(1/nBDG + 1/nBL)))
batasBawah = (meanBDG - meanBL) + t*(sqrt(SP2*(1/nBDG + 1/nBL)))
```
#### Hasil
![3c](https://user-images.githubusercontent.com/94627623/170876947-eafd7d39-5e61-4b15-ac0f-4c97f8a6c047.jpg)

### 3D
Nilai Kritikal
```
t = qt(p=signLevel, df=2)
```
#### Hasil
![3d](https://user-images.githubusercontent.com/94627623/170876948-64f34274-dee4-4a2f-add5-d5af69ba24be.jpg)

### 3E
Keputusan, didapatkan hasil;
* batasAtas = 2.138197 
* batasBawah = -0.4381968
batas tersebut merupakan meanBDG - meanBL maka, `-0.4381968 < mean Bandung - mean Bali < 2.138197`
### 3F
Kesimpulan yang didapatkan menerima Hipotesis 0, dikarenakan meanBDG = meanBL.
