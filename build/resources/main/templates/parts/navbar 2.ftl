<#include "security.ftl">
<#import "login.ftl" as l>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="/"><i class="fab fa-instagram nav-icon"></i>Jgram</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/">Home</a>
            </li>
            <#if user??>
                <li class="nav-item">
                    <a class="nav-link" href="/main">Post</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user-messages/${currentUserId}">Profile</a>
                </li>
            </#if>
            <#if isAdmin>
            <li class="nav-item">
                <a class="nav-link" href="/user">User list</a>
            </li>
            </#if>
            <#if user??>
            <li class="nav-item">
                <a class="nav-link" href="/user/profile">Settings</a>
            </li>
            </#if>
        </ul>
        <#if user??>
        <form method="get" action="/main" class="form-inline my-2 my-lg-0"">
            <input type="text" name="filter" class="form-control mr-sm-2" value="${filter?ifExists}" placeholder="Search">
            <button style="type="submit" class="btn btn-outline-dark my-2 my-sm-0">Search</button>
        </form>
        </#if>
        <div class="navbar-text mr-3">${name}</div>
        <@l.logout />
    </div>
</nav>
