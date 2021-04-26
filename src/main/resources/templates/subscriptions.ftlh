<#import "parts/common.ftl" as c>

<@c.page>
<h3>${userChannel.username}</h3>
<div>${type}</div>
<ul class="list-group">
    <#list users as user>
        <li class="list-group-item">
            <#if userChannel.avatar??>
            <img style="width: 40px;height: 40px;" src="/img/${userChannel.avatar}" alt="avat" class="rounded-circle">
            <#else>
            <img style="width: 40px;height: 40px;" src="/img/unnamed.png" alt="avat" class="rounded-circle">
            </#if>
            <a href="/user-messages/${user.id}">${user.getUsername()}</a>
        </li>
    </#list>
</ul>
</@c.page>
