# Generated by Django 4.2.2 on 2023-07-19 04:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('zohoapp', '0033_alter_vendor_tablee_currency_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='vendor_tablee',
            name='baddress',
            field=models.CharField(default='', max_length=300, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='battention',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='bcity',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='bcountry',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='bfax',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='bphone',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='bstate',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='bzip',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='saddress',
            field=models.CharField(default='', max_length=300, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='sattention',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='scity',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='scountry',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='sfax',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='sphone',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='sstate',
            field=models.CharField(default='', max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='vendor_tablee',
            name='szip',
            field=models.CharField(default='', max_length=100, null=True),
        ),
    ]
