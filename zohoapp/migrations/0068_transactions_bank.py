# Generated by Django 4.2.2 on 2023-08-25 08:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('zohoapp', '0067_alter_bankcreation_opn_bal_alter_transactions_amount'),
    ]

    operations = [
        migrations.AddField(
            model_name='transactions',
            name='bank',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='zohoapp.bankcreation'),
        ),
    ]
