from django.views.generic import TemplateView

# Create your views here.
class HelloWorldPageView(TemplateView):
  template_name = 'helloworld.html'
