from django.db import models
from django.contrib.auth.models import User


class Dagangan(models.Model):
    penjual = models.ForeignKey(User, to_field='username', on_delete=models.CASCADE)
    nama_barang = models.CharField(max_length=60,blank=False, null=False)
    harga_barang = models.IntegerField(blank=False, null=False)
    kategori_barang = models.CharField(max_length=10, blank=False, null=True)
    gambar_barang = models.TextField(default='https://via.placeholder.com/500x500.jpg?text=no+image')
    deskripsi_barang=models.TextField(blank=True,null=True)

    def __str__(self):
        return "{}. {}".format(self.id, self.nama_barang)

class Keranjang(models.Model):
    pemilik = models.ForeignKey(User, to_field='username', on_delete=models.CASCADE)
    kode_item = models.ForeignKey(Dagangan, to_field='id',on_delete=models.CASCADE)
    jumlah_item = models.IntegerField()
    def __str__(self):
        return "{} {}".format(self.id, self.pemilik)

class Order(models.Model):
    penjual_order = models.CharField(max_length=50)
    pembeli_order = models.CharField(max_length=50)
    status_order = models.CharField(max_length=20)
    kode_item_order = models.ForeignKey(Dagangan,to_field='id',on_delete=models.CASCADE)
    jumlah_item_order =  models.IntegerField()
    pengiriman = models.CharField(max_length=20,default='J&T')
    kota_asal = models.CharField(max_length=30,default='belum ditentukan')
    kota_tujuan = models.CharField(max_length=30,default='belum ditentukan')
    def __str__(self):
        return self.id
    

