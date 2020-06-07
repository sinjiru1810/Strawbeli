from django.shortcuts import render
pagename = {
            'web' : 'Strawbeli',
            'page' : 'Portal Wisata Strawberry Malang Raya',
        }
nav = [
            ['/','Home','Kembali ke halaman awal'],
            ['/gallery','360 Gallery','Wisata virtual 360 kebun strawberry Malang Raya'],
            ['/destinations','Destinations','Pilihan destinasi wisata strawberry Malang Raya'],
            ['/edu','Cultivation','Edukasi penanaman strawberry'],
            ['/market','Shop','Jual beli hasil tani dan peralatan'],          
            ['/forum','Marketplace','Forum jual beli'],
        ]


def index(request):
    context = {
        'pagename' : pagename,
        'nav' : nav
    }
    return render(request,'index.html',context)

def login(request):
    return render(request,'index.html')

def register(request):
    return render(request,'index.html')

def logout(request):
    return render(request,'index.html')