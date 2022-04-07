<# app/view/home.tpl #>
    {# 继承自全局的layout模板 #}
    {% extends "./layout/layout.tpl" %}

    {# 独立引入的css #}
    {% block stylesheet %}
    <link rel="stylesheet" href="/public/css/room.css">
    {% endblock %}

    {# header #}
    {% block header %}
    {% include "./commons/header.tpl" %}
    {% endblock %}

    {# 页面主体 #}
    {% block main %}
    <div>
        {% include "./commons/left.tpl" %}
        <div id="rightBox">
            <div id="infoBox" >
                <span class="title">房间号&nbsp;</span>
                <span class="info">{{roomId}}</span>
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <span class="title">玩家人数&nbsp;</span>
                <span class="info">{{playerNum}}</span>
                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
                <span class="title">状态&nbsp;</span>
                <span class="info">{{state}}</span>
            </div>
            <div id="operationListContainer">
                <table>
                    <caption>操作列表</caption>
                    <thead>
                        <tr>
                            <th>玩家</th>
                            <th>操作记录</th>
                        </tr>
                    </thead>
                    <tbody>
                        {% for operation in operationList %}
                        <tr>
                            <td>{{operation.playerId}}</td>
                            <td>{{operation.operation}}</td>
                        </tr>
                        {% endfor %}
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    {% endblock %}

    {# footer #}
    {% block footer %}
    {% include "./commons/footer.tpl" %}
    {% endblock %}

    {# 脚本 #}
    {% block script %}
    {% endblock %}