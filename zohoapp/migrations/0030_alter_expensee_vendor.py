# Generated by Django 4.2.2 on 2023-07-15 06:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('zohoapp', '0029_accounte_addcustomere_payment_termse_vendor_tablee_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='expensee',
            name='vendor',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='zohoapp.vendor_tablee'),
        ),
    ]
