<!--app/view/layout/layout.tpl-->
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {% block description %}
    <meta name="description" itemprop="description" content="description继承">
    {% endblock %}
    {% block keywords %}
    <meta name="keywords" content="keywords继承">
    {% endblock %}
    {% block stylesheet %}{% endblock %}
    <link rel="stylesheet" href="/public/css/basic.css">
    <title>{% block title %} egg-huk {% endblock %}</title>
</head>

<body>
    <div id="header">
        {% block header %} {% endblock %}
    </div>
    <div id="main">
        {% block main %} {% endblock %}
    </div>
    <div id="footer">
        {% block footer %} {% endblock %}
    </div>
</body>
{% block script %}{% endblock %}

</html>