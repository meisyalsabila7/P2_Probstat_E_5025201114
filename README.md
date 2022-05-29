# P2_Probstat_E_5025201114

* Nama  : Meisya Salsabila Indrijo Putri 
* NRP   : 5025201114
* Kelas : Probabilitas dan Statistika E

## Soal 1
Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas?

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


## Soal 2
