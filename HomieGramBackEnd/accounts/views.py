from django.shortcuts import render
from django.contrib.auth import authenticate, login
from .serializers import AccountSerializer, MessageSerializer
from knox.models import AuthToken
from rest_framework.views import APIView
from rest_framework.permissions import AllowAny
from rest_framework.decorators import permission_classes
from rest_framework import status
from rest_framework.response import Response
from .models import CustomUser

# Create your views here.
class LoginApIView(APIView):
    """
    handles User activities such as Login and Logout
    """
    permission_classes = [AllowAny]

    # TODO restrict these get request to users who are authenticated
    def get(self, request, *args, **kwargs):
        """
        Handles loging out of the user
        """
        pass

    def post(self, request, *args, **kwargs):
        """
        Handles log in of the user
        """
        
        email = request.data.get("email")
        password = request.data.get("password")
        user = authenticate(username=email, password=password)

        # if user exists
        if user:
            serializer = AccountSerializer(user)
            login(request, user)
            data = serializer.data
            data['token'] = AuthToken.objects.create(user=user)[1]
            return Response(data, status=status.HTTP_200_OK)
        # user doesn't exist
        else:
            data = {
                "message": "Invalid User Credentials",
                "token": ""
                }
            serializer = MessageSerializer(data)
            return Response(serializer.data, status=status.HTTP_403_FORBIDDEN)

class RegisterUsersAPIView(APIView):
    """
    Handles Registatration of Users
    """
    permission_classes = [AllowAny]

    def post(self, request, *args, **kwargs):
        """
        Handles registration of Users
        """
        data = {
            "first_name": request.data.get("first_name"),
            "last_name": request.data.get("last_name"),
            "email": request.data.get("email"),
            "password": request.data.get("password"),
        }
        # making the username same as the email
        data['username'] = request.data.get("email")

        serializer = AccountSerializer(data=data)
        if serializer.is_valid():
            serializer.save()
            data = {
                'message': "User successfully registered",
                'token': ''
                }
            serializer = MessageSerializer(data)
            return Response(serializer.data, status=status.HTTP_200_OK)
        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
