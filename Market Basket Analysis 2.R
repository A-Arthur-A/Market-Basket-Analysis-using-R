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

#Melakukan sorting pada data_item
data_item <- sort(data_item, decreasing = TRUE)

#Mengambil 3 item pertama
data_item <- data_item[1:3]

#Konversi data_item menjadi data frame dengan kolom Nama_Produk dan Jumlah
data_item <- data.frame("Nama Produk"=names(data_item), "Jumlah"=data_item, row.names=NULL)

#Menulis File Top 3 Item
write.csv(data_item, file="top3_item.txt", eol="\r\n")
