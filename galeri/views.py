from django.shortcuts import render
from .models import galeri
# Create your views here.
def gallery(request):
    #queryset
    tempat = galeri.objects.all()
    
    context = {
        'pagename' : {
            'web' : 'Strawbeli',
            'page' : '360 Gallery',
        },
        'tempat' : tempat,
      
        'nav' : [
            ['/','Home','Kembali ke halaman awal'],
            ['/gallery','360 Gallery','Wisata virtual 360 kebun strawberry Malang Raya'],
            ['/destinations','Destinations','Pilihan destinasi wisata strawberry Malang Raya'],
            ['/edu','Cultivation','Edukasi penanaman strawberry'],
            ['/market','Shop','Jual beli hasil tani dan peralatan'],          
            ['/forum','Forum','Forum jual beli'],
        ]
    }
    return render(request,'galeri/index.html',context)

def gallery_perlokasi(request,lokasi):
    context = {
        'pagename' : {
            'web' : 'Strawbeli',
            'page' : '360 Gallery',
        },
   
        'nav' : [
            ['/','Home','Kembali ke halaman awal'],
            ['/gallery','360 Gallery','Wisata virtual 360 kebun strawberry Malang Raya'],
            ['/destinations','Destinations','Pilihan destinasi wisata strawberry Malang Raya'],
            ['/edu','Cultivation','Edukasi penanaman strawberry'],
            ['/market','Shop','Jual beli hasil tani dan peralatan'],          
            ['/forum','Marketplace','Forum jual beli'],
        ]
    }
    return render(request,'galeri/index.html',context)