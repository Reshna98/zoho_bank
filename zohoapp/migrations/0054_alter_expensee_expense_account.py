# Generated by Django 4.2.2 on 2023-08-09 08:27

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('zohoapp', '0053_alter_expensee_expense_account'),
    ]

    operations = [
        migrations.AlterField(
            model_name='expensee',
            name='expense_account',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='zohoapp.accounte'),
        ),
    ]
