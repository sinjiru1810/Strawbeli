from django.shortcuts import render
from .models import destinasi

#variabel global untuk context
nav = [
            ['/','Home','Kembali ke halaman awal'],
            ['/gallery','360 Gallery','Wisata virtual 360 kebun strawberry Malang Raya'],
            ['/destinations','Destinations','Pilihan destinasi wisata strawberry Malang Raya'],
            ['/edu','Cultivation','Edukasi penanaman strawberry'],
            ['/market','Shop','Jual beli hasil tani dan peralatan'],          
            ['/forum','Forum','Forum jual beli'],
        ]

pagename = {
            'web' : 'Strawbeli',
            'page' : 'Destinations',
        }

# Create your views here.


def dest(request):
    tempats = destinasi.objects.all()
    
    context = {
        'pagename' : pagename,
        'tempats' : tempats,

        'nav' : nav
    }
    return render(request, 'destinations/index.html',context)

def spesifik(request,aidi):
    tempats = destinasi.objects.all()
    
    
    context = {
        'pagename' : pagename,
        'tempats' : tempats,
        'nav' : nav,
        'aidi' : aidi,
    }
    return render(request,'destinations/index.html',context)