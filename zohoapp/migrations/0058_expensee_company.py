# Generated by Django 4.2.2 on 2023-08-12 06:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('zohoapp', '0057_alter_expensee_expense_account'),
    ]

    operations = [
        migrations.AddField(
            model_name='expensee',
            name='company',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='zohoapp.company_details'),
        ),
    ]
