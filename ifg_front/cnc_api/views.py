from django.shortcuts import render

# Create your views here.
from django.views import View
from django.views import generic
import requests

class Cnc_api_index(generic.TemplateView):
    def get(self, request, *args, **kwargs):
        template_name = 'cnc/index.html'

        return render(request, template_name)