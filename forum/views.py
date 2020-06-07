from django.shortcuts import render
from .models import DaftarForum
pagename = {
            'web' : 'Strawbeli',
            'page' : 'Forum',
        }
nav = [
            ['/','Home','Kembali ke halaman awal'],
            ['/gallery','360 Gallery','Wisata virtual 360 kebun strawberry Malang Raya'],
            ['/destinations','Destinations','Pilihan destinasi wisata strawberry Malang Raya'],
            ['/edu','Cultivation','Edukasi penanaman strawberry'],
            ['/market','Shop','Jual beli hasil tani dan peralatan'],          
            ['/forum','Forum','Forum jual beli'],
        ]
# Create your views here.
def forum(request):
    list_forum = DaftarForum.objects.all()
    if not list_forum:
        list_forum = 'none'
    context = {
        'pagename':pagename,
        'nav':nav,
        'list_forum':list_forum,
    }
    return render(request,'forum/index.html',context)