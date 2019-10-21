package com.pr_maven.domain;

import org.springframework.security.core.GrantedAuthority;

public enum Role implements GrantedAuthority {
    USER, ADMIN, GUEST;

    @Override
    public String getAuthority() {
        return name();
    }
}
