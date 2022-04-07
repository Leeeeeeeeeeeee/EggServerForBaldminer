<# app/view/home.tpl #>
    {# 继承自全局的layout模板 #}
    {% extends "./layout/layout.tpl" %}

    {# 独立引入的css #}
    {% block stylesheet %}
        <link rel="stylesheet" href="/public/css/login.css">
    {% endblock %}

    {# header #}
    {% block header %}
    {% include "./commons/header.tpl" %}
    {% endblock %}

    {# 页面主体 #}
    {% block main %}
    <div id="loginBox">
        <form action="/login" method="post" >
            <input type="hidden" name="_csrf" value="{{csrf}}">
            <span>用户名：</span><br>
            <input type="text" name="username" id="username"><br><br>
            <span>密码：</span><br>
            <input type="password" name="password" id="password"><br><br>
            <button type="submit" >登录</button>
        </form>
    </div>
    {% endblock %}

    {# footer #}
    {% block footer %}
    {% include "./commons/footer.tpl" %}
    {% endblock %}

    {# 脚本 #}
    {% block script %}
    {% endblock %}