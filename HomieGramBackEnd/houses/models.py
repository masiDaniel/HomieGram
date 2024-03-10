from django.db import models

# Create your models here.
class Houses(models.Model):
    """
    Will Hold Information about the House
    """
    name = models.CharField(max_length=100, null=False, blank=False, default="")
    rent_amount = models.DecimalField(null=False, blank=False,
                                      decimal_places=2, max_digits=10)
    rating = models.PositiveSmallIntegerField(default=0, null=False, blank=False)
    description = models.TextField()