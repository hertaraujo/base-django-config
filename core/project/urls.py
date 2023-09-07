import logging

from django.contrib import admin
from django.urls import path

urlpatterns = [
    path("admin/", admin.site.urls),
]

logger = logging.getLogger(__name__)
logger.debug("This is a bug message")
logger.info("This is an info message")
logger.warning("This is an warning message")
