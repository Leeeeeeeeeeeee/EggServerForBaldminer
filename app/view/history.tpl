<# app/view/home.tpl #>
    {# 继承自全局的layout模板 #}
    {% extends "./layout/layout.tpl" %}

    {# 独立引入的css #}
    {% block stylesheet %}
    <link rel="stylesheet" href="/public/css/history.css">
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
            <div id="historyListContainer">
                <table>
                    <caption>历史记录</caption>
                    <thead>
                        <tr>
                            <th>房间号</th>
                            <th>创建日期</th>
                            <th>玩家人数</th>
                            <th>最终状态</th>
                            <th>得分情况</th>
                        </tr>
                    </thead>
                    <tbody>
                        {% for history in historyList %}
                        <tr>
                            <td>{{history.roomId}}</td>
                            <td>{{history.createDate}}</td>
                            <td>{{history.playerNum}}</td>
                            <td>{{history.finalState}}</td>
                            <td>{{history.score}}</td>
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