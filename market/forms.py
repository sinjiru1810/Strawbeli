from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User

class FormDaftar(UserCreationForm):
    email = forms.EmailField(required=True)
    first_name = forms.CharField(required=True)
    class Meta:
        model = User
        fields = ['username', 'email', 'first_name','last_name', 'groups', 'password1', 'password2']

    