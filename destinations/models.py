from django.db import models

# Create your models here.
class destinasi(models.Model):
    nama = models.CharField(max_length=50)
    alamat = models.TextField()
    htm = models.IntegerField()
    jambuka = models.TextField()
    fasilitas = models.TextField()
    deskripsi = models.TextField(null=True)

    # pagelink akan menggunakan id agar lebih ringkas
    #pagelink = models.CharField(max_length=50)
    maplink = models.TextField(default="<img href=\"https://via.placeholder.com/600x400.jpg?text=belum+ada+map\"")
    weblink = models.TextField(default="<a href=\"#\"></a>")
    thumbnail = models.TextField(default="https://via.placeholder.com/300x200.jpg?text=tidak+ada+gambar")
    

    def __str__(self):
        return "{} - {}".format(self.id, self.nama)