<#import "parts/common.ftl" as c>
<#import "parts/loginp.ftl" as l>

<@c.page>
<div>
    <@l.logout/>
    <span><a href="/user">User list</a> </span>
</div>

 <div>
    <form method="post" enctype="multipart/form-data">
        <input type="text" name="text" placeholder="Input message" />
        <input type="text" name="tag" placeholder="Input tag">
        <input type="file" name="file">
        <input type="hidden" name="_csrf" value="${_csrf.token}" />
        <button type="submit">Insert</button>
    </form>
</div>

<h1>Список сообщений:</h1>
 <form method="get" action="/main">
     <input type="text" name="filter" class="form-control" value="${filter?ifExists}" placeholder="Input filter""/>
     <button type="submit">Find</button>
 </form>

<div>
    <tr><th>Id</th><th>Test</th><th>Tag</th><th></th></tr>
</div>
<table>
    <#list messages as message>
    <div>
        <b>${message.id}</b>
        <span>${message.text}</span>
        <i>${message.tag}</i>
        <strong>${message.authorName}</strong>
        <div>
            <#if message.filename??>
                <img src="/img/${message.filename}">
            </#if>
        </div>
     </div>
    <#else>
        No messages!
    </#list>
</table>

</@c.page>
