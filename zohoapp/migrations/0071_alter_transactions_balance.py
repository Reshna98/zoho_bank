# Generated by Django 4.2.2 on 2023-08-25 12:35

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('zohoapp', '0070_transactions_balance'),
    ]

    operations = [
        migrations.AlterField(
            model_name='transactions',
            name='balance',
            field=models.FloatField(blank=True, default=0.0, null=True),
        ),
    ]
