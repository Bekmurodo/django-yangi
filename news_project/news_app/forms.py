from django import forms
from .models import Contact, Comment

class ContactForm(forms.ModelForm):

    class Meta:
        model = Contact
        fields = "name", "email", "text"

class SubscriptionForm(forms.Form):
    subject = forms.CharField(max_length=100)
    message = forms.CharField()
    email = forms.EmailField()

class CommentForm(forms.Form):

    class Meta:
        model = Comment
        fields = ['user', 'body']