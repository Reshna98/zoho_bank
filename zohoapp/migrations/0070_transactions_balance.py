# Generated by Django 4.2.2 on 2023-08-25 12:25

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('zohoapp', '0069_transactions_adjacname_transactions_adjtype'),
    ]

    operations = [
        migrations.AddField(
            model_name='transactions',
            name='balance',
            field=models.FloatField(blank=True, null=True),
        ),
    ]
