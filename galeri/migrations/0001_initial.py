# Generated by Django 3.0.6 on 2020-05-31 08:31

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='galeri',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('destinasi', models.CharField(max_length=50)),
                ('lokasi', models.CharField(max_length=50)),
                ('link360', models.TextField(default='<img src="https://via.placeholder.com/600x400.jpg?text" alt="nomap">')),
            ],
        ),
    ]
