from django.shortcuts import render, redirect
from .forms import FormDaftar
from django.contrib.auth import login, authenticate, logout
from .models import Dagangan,Keranjang,Order

pagename = {
            'web' : 'Strawbeli',
            'page' : 'Shop',
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
def market(request):
    login_status = 'none'
    if request.method == 'POST':

        username_login = request.POST['Username']
        password_login = request.POST['Password']

        user = authenticate(request, username=username_login, password=password_login)

        if user is not None:
            login(request,user)
            login_status='ok'
            return redirect('/market')
        else:
            login_status='no'
            
    dagangan = Dagangan.objects.all()

    context = {
        'pagename' : pagename,
        'nav' : nav,
        'login_status':login_status,
        'items': dagangan,
    }
    
    return render(request,'market/index.html',context)

def spesifik(request,aidi):
    login_status = 'none'
    if request.method == 'POST':

        username_login = request.POST['Username']
        password_login = request.POST['Password']

        user = authenticate(request, username=username_login, password=password_login)

        if user is not None:
            login(request,user)
            login_status='ok'
            return redirect('/market')
        else:
            login_status='no'
            
    dagangan = Dagangan.objects.all()

    context = {
        'pagename' : pagename,
        'nav' : nav,
        'login_status':login_status,
        'items': dagangan,
        'aidi':aidi,
    }
    
    return render(request,'market/index.html',context)

def daftar(request):

    if request.method == 'POST':
        form = FormDaftar(request.POST)
        if form.is_valid():
            form.save()
            return redirect("/market")
    else:
        form = FormDaftar()
    
    context = {
        'pagename' : {
            'web' : pagename['web'],
            'page': 'Pendaftaran Akun Baru'
        },
        'form' : form,
        'nav'   : nav,
    }
    return render(request,'market/daftar.html',context)

def keluar(request):
    context = {
        'pagename':{
            'web':pagename['web'],
            'page':'Keluar?'
        },
        'nav':nav,
    }
    if request.method == 'POST':
    
        if request.POST['logout'] == 'submit':
            logout(request)
           
            return redirect('/market')
    
    return render(request,'market/logout.html',context)

def keranjang(request,akun):
    keranjang_akun = Keranjang.objects.filter(pemilik=akun)
    dagangan_semua = Dagangan.objects.all()
    # print(type(keranjang_akun[0]))
    if not keranjang_akun:
        keranjang_akun = 'kosong'
    # keranjang_barang = Dagangan.objects.filter(id=keranjang_akun.id)
    context = {
        'pagename':{
            'web':pagename['web'],
            'page':'Keranjang'
        },
        'nav':nav,
        'keranjang_akun':keranjang_akun,
        'dagangans':dagangan_semua,
    }
    return render(request,'market/keranjang.html',context)