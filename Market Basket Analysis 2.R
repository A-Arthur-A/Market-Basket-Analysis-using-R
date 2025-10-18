#Menggunakan library arules
library(arules)

#Membaca transaksi dari file data_transaksi.txt
transaksi <- read.transactions(file="https://storage.googleapis.com/dqlab-dataset/data_transaksi.txt", format="single", sep="\t", cols=c(1,2), skip=1)

#Menampilkan daftar item transaksi
transaksi@itemInfo

#Menampilkan daftar kode transaksi
transaksi@itemsetInfo

#Menampilkan transaksi dalam bentuk matrix
transaksi@data

#Menampilkan jumlah kemunculan item pada keseluruhan transaksi
data_item <- itemFrequency(transaksi, type="absolute")
data_item
