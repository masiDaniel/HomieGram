from django.urls import path
from .views import RegisterUsersAPIView, LoginApIView

urlpatterns = [
    path("signup/", RegisterUsersAPIView.as_view(), name="signup"),
    path("login/", LoginApIView.as_view(), name="login"),
]