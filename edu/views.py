from django.shortcuts import render
from .models import langkah, gambar_langkah
pagename = {
            'web' : 'Strawbeli',
            'page' : 'Cultivation',
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
def edu(request):
    steps = langkah.objects.all()
    gambar = gambar_langkah.objects.all()
    context = {
        'pagename' : pagename,
        'nav' : nav,
        'langkah' : steps,
        'gambar' : gambar,
    }
    return render(request,'edu/index.html',context)