package com.yong.sitemesh.web.spring;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.sitemesh.content.tagrules.html.DivExtractingTagRuleBundle;

import javax.servlet.Filter;
import javax.servlet.ServletException;

/**
 * Created by Administrator on 2016/8/24 0024.
 */
public class MySiteMeshFilter extends ConfigurableSiteMeshFilter {

    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
        super.applyCustomConfiguration(builder);
        builder.addTagRuleBundle(new DivExtractingTagRuleBundle());
    }
}
