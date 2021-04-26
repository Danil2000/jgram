<#import "parts/common.ftl" as c>

<@c.page>
<h3>${userChannel.username}</h3>
<ul class="list-group">
    <#list users as user>
        <li class="list-group-item">
            <#if user.avatar??>
                <img style="width: 40px;height: 40px;" src="/img/${user.getAvatar()}" alt="avat" class="rounded-circle">
                <#else>
                <img style="width: 40px;height: 40px;" src="/img/unnamed.png" alt="avat" class="rounded-circle">
            </#if>
            <a href="/user-messages/${user.id}">${user.getUsername()}</a>
            <a style="margin-left:60%" class="btn btn-outline-dark" href="">Send Message</a>
        </li>
    </#list>
</ul>
</@c.page>
