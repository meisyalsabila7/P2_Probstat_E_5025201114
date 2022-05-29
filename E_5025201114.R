# Soal 1
# 1a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

# Data Sebelum dan Sesudah melakukan aktivitas
orang.ke = c(seq(1:9))
sebelum = c(78, 75, 67, 77, 70, 72, 78, 74, 77)
sesudah = c(100, 95, 70, 90, 90, 90, 89, 90, 100)
data = data.frame(orang.ke,sebelum, sesudah)
n = 9

# Standar Deviasi
selisih = data$sesudah - data$sebelum
standardev = sd(selisih)
standardev

# 1b. Carilah nilai t (p-value)
mu = 0

# Cari rata rata selisihnya terlebih dahulu
xbar = mean(selisih)
xbar

# Cari nilai t
t =((xbar - mu) / (standardev/sqrt(n)))
t

# Cari p-value
pvalue = 2 * pt(-abs(t), df=n-1)
pvalue

# 1c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”
t.test(x=data$sesudah, 
       y=data$sebelum,
       alternative = "two.sided", 
       mu = 0, 
       paired = TRUE, 
       var.equal = TRUE, 
       conf.level = 0.95)


# Soal 2
standardev = 3900
n = 100
xbar = 23500
mu = 20000

# Cari p-value
z =( (xbar - mu) / (standardev / sqrt(n)))
pvalue = pnorm(-abs(z))
pvalue

# 2a, b, c
# Jawaban di README


# Soal 3
# 3a
H0 = 9.50
H1 = 10.98

# 3b
nBDG = 19
nBL = 27
meanBDG = 3.64
meanBL = 2.79
sdBDG = 1.67
sdBL = 1.32
signLevel = 0.05

#Cari SP2 dulu
SP2 = ((nBDG-1)*sdBDG*sdBDG + (nBL-1)*sdBL*sdBL)/ (nBDG+nBL-2)

#Hitung t
t = (meanBDG-meanBL - 0)/(sqrt(SP2*(1/nBDG + 1/nBL)))

# 3c
t = qt(p=signLevel, df=2)
batasAtas = (meanBDG - meanBL) - t*(sqrt(SP2*(1/nBDG + 1/nBL)))
batasBawah = (meanBDG - meanBL) + t*(sqrt(SP2*(1/nBDG + 1/nBL)))

# 3d
t = qt(p=signLevel, df=2)

# 3e dan 3f
# Jawaban di README
