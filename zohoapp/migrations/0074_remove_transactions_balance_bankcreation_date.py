# Generated by Django 4.2.2 on 2023-08-26 14:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('zohoapp', '0073_transactions_balance'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='transactions',
            name='balance',
        ),
        migrations.AddField(
            model_name='bankcreation',
            name='date',
            field=models.DateField(blank=True, null=True),
        ),
    ]
