# Generated by Django 4.2.2 on 2023-08-07 10:41

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('zohoapp', '0046_alter_expensee_vendor'),
    ]

    operations = [
        migrations.AlterField(
            model_name='expensee',
            name='customer_name',
            field=models.CharField(default='', max_length=100),
        ),
        migrations.AlterField(
            model_name='expensee',
            name='vendor',
            field=models.CharField(default='', max_length=100),
        ),
    ]
