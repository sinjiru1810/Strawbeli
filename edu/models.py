from django.db import models

# Create your models here.
class langkah(models.Model):
    judul = models.CharField(max_length=50)
    konten = models.TextField(null=True)
    thumbnail = models.TextField(default="https://via.placeholder.com/300x200.jpg?text=tidak+ada+gambar")
    def __str__(self):
        return "{}. {}".format(self.id,self.judul)

class gambar_langkah(models.Model):
    langkah_id = models.ForeignKey(langkah,on_delete=models.CASCADE,to_field='id')
    gambar_langkah = models.TextField()
    gambar_desc = models.CharField(max_length=50)
    def __str__(self):
        return "langkah {} id {}".format(self.langkah_id,self.id)
