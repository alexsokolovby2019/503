<#import "parts/common.ftl" as c>
<#import "parts/loginp.ftl" as l>
<@c.page>
    Login page
    ${message?ifExists}
    <@l.login "/login" false/>
    <a href="/registration">Add new user</a>
</@c.page>
