from django.contrib.auth.decorators import login_required
from django.shortcuts import render, redirect
from django.http import HttpResponse, HttpResponseRedirect
from django.contrib.auth import authenticate, login, logout

from news_app.models import News
from .forms import LoginForm, UserRegistrationForm, UserEditForm, ProfileEditForm
from django.views.generic import CreateView
from django.views import View
from django.urls import reverse_lazy
from .models import Profile
from django.contrib import messages
from django.contrib.auth.mixins import LoginRequiredMixin
from news_project.custom_permissions import OnlyLoggedSuperUser

def user_login(request):
    if request.method == "POST":
        form = LoginForm(request.POST)
        if form.is_valid():
            data = form.cleaned_data
            print(data)
            user = authenticate(request,
                                username=data['username'],
                                password=data['password'])
            if user is not None:
                if user.is_active:
                    login(request, user)
                    return HttpResponse('Активный вход')
                else:
                    return HttpResponse('Ваш профиль не активен')
            else:
                return HttpResponse('Логин и парол неверный')
    else:
        form = LoginForm()

    return render(request, 'registration/login.html', {'form': form})

def user_logout(request):
    logout(request)
    messages.success(request, "Siz shaxsiy muhitingizdan chiqdingiz!")  # Xabar qo'shildi
    return redirect('login')  # Bosh sahifaga yo'naltiramiz
def dashboard_view(request):
    user = request.user
    profil_info = Profile.objects.get(user=user)
    context = {
        'user': user,
        'profile': profil_info
    }
    return render(request, 'pages/user_profile.html', context)

def user_register(request):
    if request.method == "POST":
        user_form = UserRegistrationForm(request.POST)
        if user_form.is_valid():
            new_user = user_form.save(commit=False)
            new_user.set_password(
                user_form.cleaned_data["password"]
            )
            new_user.save()
            Profile.objects.create(user=new_user)
            context = {
                "new_user": new_user
            }
            return render(request, 'account/register_done.html', context)
    else:
        user_form = UserRegistrationForm()
        context = {
            'user_form': user_form
            }
        return render(request, 'account/register.html', context)

class SignUpView(CreateView,OnlyLoggedSuperUser):
    form_class = UserRegistrationForm
    success_url = reverse_lazy('login')
    template_name = 'account/register.html'

@login_required
def edit_user(request):
    if request.method == 'POST':
        user_form = UserEditForm(instance=request.user, data=request.POST)
        profile_form = ProfileEditForm(instance=request.user.profile,
                                       data=request.POST,
                                       files=request.FILES)
        if user_form.is_valid() and profile_form.is_valid():
            user_form.save()
            profile_form.save()
    else:
        user_form = UserEditForm(instance=request.user)
        profile_form = ProfileEditForm(instance=request.user.profile)

    return render(request, 'account/profile_edit.html', {'user_form': user_form, 'profile_form': profile_form})

class EditUserView(OnlyLoggedSuperUser,View):

     def get(self, request):
         user_form = UserEditForm(instance=request.user)
         profile_form = ProfileEditForm(instance=request.user.profile)
         return render(request, 'account/profile_edit.html', {'user_form': user_form, 'profile_form': profile_form})

     def post(self, request):
         user_form = UserEditForm(instance=request.user, data=request.POST)
         profile_form = ProfileEditForm(instance=request.user.profile,
                                        data=request.POST,
                                        files=request.FILES)
         if user_form.is_valid() and profile_form.is_valid():
             user_form.save()
             profile_form.save()
             return redirect('user_profile')

class NewsCreateView(OnlyLoggedSuperUser, CreateView):
    model = News
    template_name = 'crud/news_create.html'
    fields = ('title', 'slug', 'body', 'image', 'category', 'status')




