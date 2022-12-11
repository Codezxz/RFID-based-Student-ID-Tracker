
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('att_app', '0007_auto_20180224_0109'),
    ]

    operations = [
        migrations.AddField(
            model_name='student_details',
            name='email',
            field=models.EmailField(blank=True, help_text='Enter Email', max_length=70, null=True, verbose_name='Email'),
        ),
    ]
