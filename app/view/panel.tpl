<# app/view/home.tpl #>
    {# 继承自全局的layout模板 #}
    {% extends "./layout/layout.tpl" %}

    {# 独立引入的css #}
    {% block stylesheet %}
    <link rel="stylesheet" href="/public/css/panel.css">
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
            <div id="numBoxContainer">
                <div id="playerNumBox" class="numBox">
                    <span class="title">在线玩家</span><br />
                    <span class="number">{{playerNum}}</span>
                </div>
                <div id="roomNumBox" class="numBox">
                    <span class="title">在线房间</span><br />
                    <span class="number">{{roomNum}}</span>
                </div>
            </div>
            <div id="roomListContainer">
                <table>
                    <caption>房间列表</caption>
                    <thead>
                        <tr>
                            <th>房间号</th>
                            <th>人数</th>
                            <th>状态</th>
                            <th>得分情况</th>
                        </tr>
                    </thead>
                    <tbody>
                        {% for room in roomList %}
                        <tr>
                            <td>{{room.roomId}}</td>
                            <td>{{room.playerNum}}</td>
                            <td>{{room.state}}</td>
                            <td>{{room.score}}</td>
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