from django.db import models

# Create your models here.
class DaftarForum(models.Model):
    topik = models.CharField(max_length=50)
    deskripsi_topik = models.CharField(max_length=140)
    last_updated = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return "{}. {}".format(self.id, self.topik)