#Install library arules
install.packages("arules")

#Menggunakan library arules
library(arules)

#Membaca transaksi dari file data_transaksi.txt
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menampilkan data transaksi
inspect(transaksi)

#Menghasilkan model Market Basket Analysis
mba <- apriori(transaksi, parameter = list(supp=0.1, confidence=0.5))

#Menampilkan paket produk
inspect(subset(mba, lift>1))

#Menampilkan jumlah kombinasi dari produk yang terdapat pada daftar transaksi yang ada
inspect(apriori(transaksi, parameter=list(support=.1, minlen=2, target="frequent itemset")))

#Membaca transaksi dari file data_transaksi2.txt
transaksi2 <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi2.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menampilkan jumlah kombinasi dari produk yang terdapat pada daftar transaksi yang ada
inspect(apriori(transaksi2, parameter = list(support=.03, minlen=2, target='frequent itemsets')))

