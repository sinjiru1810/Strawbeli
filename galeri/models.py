from django.db import models

# Create your models here.
class galeri(models.Model):
    destinasi = models.CharField(max_length=50)
    lokasi = models.CharField(max_length=50)
    link360 = models.TextField(default="https://via.placeholder.com/600x400.jpg?text=nopic")
    tag = models.CharField(max_length=10,default="slave")
    def __str__(self):
        return "{} - {}".format(self.destinasi, self.lokasi)


    