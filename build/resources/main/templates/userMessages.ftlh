<#import "parts/common.ftl" as c>

<@c.page>
        <div class="user_info_block">
        <div class="rounded-circle">
        <#if userChannel.avatar??>
            <img class="rounded-circle" src="/img/${userChannel.avatar}" alt="" width="150">
            <#else >
            <img class="rounded-circle" src="/img/unnamed.png" alt="" width="150">
            </#if>
        </div>
            <h3>${userChannel.username}</h3>
            <#if userChannel.firstName??>
            <h4>${userChannel.firstName}</h4>
            </#if>
            <#if userChannel.lastName??>
            <h4>${userChannel.lastName}</h4>
            </#if>
            <#if userChannel.description??>
            <p>${userChannel.description}</p>
            </#if>
        </div>
<#if !isCurrentUser>      
    <#if isSubscriber>
        <a class="btn btn-info" href="/user/unsubscribe/${userChannel.id}">Unsubscribe</a>
    <#else>
        <a class="btn btn-info" href="/user/subscribe/${userChannel.id}">Subscribe</a>
    </#if>
</#if>
<div class="container my-3">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">Messages</div>
                    <h3 class="card-text">
                                <a class="navbar-brand" href="/user/subscriptions/${userChannel.id}/dir_list""><i class="fab fa-telegram-plane nav-icon"></i>Direct</a>
                    </h3>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">Subscriptions</div>
                    <h3 class="card-text">
                        <a href="/user/subscriptions/${userChannel.id}/list">${subscriptionsCount}</a>
                    </h3>
                </div>
            </div>
        </div>
        <div class="col">
            <div class="card">
                <div class="card-body">
                    <div class="card-title">Subscribers</div>
                    <h3 class="card-text">
                        <a href="/user/subscribers/${userChannel.id}/list">${subscribersCount}</a>
                    </h3>
                </div>
            </div>
        </div>
    </div>
</div>
<#--<#if isCurrentUser>-->
<#--    <#include "parts/messageEdit.ftl" />-->
<#--</#if>-->

<#include "parts/messageList.ftl" />
</@c.page>
