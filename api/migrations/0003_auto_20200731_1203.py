# Generated by Django 3.0.8 on 2020-07-31 10:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_auto_20200731_0904'),
    ]

    operations = [
        migrations.AddField(
            model_name='product',
            name='thumbnail',
            field=models.URLField(default='default_product_thumbnail.png', verbose_name='thumbnail'),
        ),
        migrations.AlterField(
            model_name='document',
            name='link',
            field=models.URLField(default='default_product_thumbnail.png', help_text='Please complete the above URL', verbose_name='link'),
        ),
        migrations.AlterField(
            model_name='metadata',
            name='image_link',
            field=models.URLField(default='default_metadata_image.png', verbose_name='image_link'),
        ),
        migrations.AlterField(
            model_name='orderitem',
            name='price_status',
            field=models.CharField(choices=[('PENDING', 'Pending'), ('CALCULATED', 'Calculated'), ('IMPORTED', 'Imported')], default='PENDING', max_length=20, verbose_name='price_status'),
        ),
    ]