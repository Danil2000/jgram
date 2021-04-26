<#include "security.ftl">
<#import "pager.ftl" as p>

<@p.pager page url />

<div class="card-columns" id="message-list">
    <#list page.content as message>
        <div class="card my-3" data-id="${message.id}">
            <div class="card-header">
                <div class ="row">
                <#if message.author.avatar??>
                <img style="width: 40px;height: 40px;" src="/img/${message.author.avatar}" alt="avat" class="rounded-circle">
                <#else>
                <img style="width: 40px;height: 40px;" src="img/unnamed.png" alt="avat" class="rounded-circle">
                </#if>
                <a class="col align-self-center" href="/user-messages/${message.author.id}">@${message.authorName}</a>
                <#if message.author.id == currentUserId>
                        <a class="col btn btn-outline-dark" href="/user-messages/${message.author.id}?id=${message.id}">
                            Edit
                        </a>
                        <a class="col btn btn-outline-dark" href="/user-messages/delete/${message.author.id}?message=${message.id}">
                            Delete
                        </a>
                    </#if>
                </div>
            </div>
            <#if message.filename??>
                <img style="width: 350px;height: 300px;" src="/img/${message.filename}" class="card-img-top" />
            </#if>
            <div class="m-2">
                <span>${message.text}</span><br/>
                <i>#${message.tag}</i>
            </div>
            <div class="card-footer text-muted container">
                <div class="row">
                    <a class="col align-self-center" href="/messages/${message.id}/like">
                        <#if message.meLiked>
                            <i class="fas fa-heart"></i>
                        <#else>
                            <i class="far fa-heart"></i>
                        </#if>
                        ${message.likes}
                    </a>
                    <form method="add" action="/main" class="form-inline my-2 my-lg-0"">
                        <input type="text" name="filter" class="form-control mr-sm-2" value="${filter?ifExists}" placeholder="Your Comment">
                        <button style="type="submit" class="btn btn-outline-dark my-2 my-sm-0">Add</button>
                    </form>
                </div>
            </div>
        </div>
    <#else>
        No message
    </#list>
</div>

<@p.pager page url />
