package com.xst.test.controller;

import com.xst.bean.V9Category;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.ContextHierarchy;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

/**
 * Created by sl on 16-2-26.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration(value = "src/main/webapp")
@ContextHierarchy({
        @ContextConfiguration(name = "parent", locations = "classpath:conf/spring.xml"),
        @ContextConfiguration(name = "child", locations = "classpath:conf/springmvc.xml")
})

public class CategoryControllerTest {

    @Autowired
    private WebApplicationContext wac;
    private MockMvc mockMvc;

    @Before
    public void setUp() {
        mockMvc = MockMvcBuilders.webAppContextSetup(wac).build();
    }

    @Test
    public void testShow() throws Exception {
        mockMvc
                .perform(get("/category"))
                .andExpect(view().name("category"))
                .andExpect(forwardedUrl("/index.jsp"))
                .andExpect(status().isOk())
                .andDo(print());
    }

    @Test
    public void testFind() throws Exception{
        MvcResult result = mockMvc
                .perform(get("/category/{id}",3849))
                .andExpect(view().name("category/id"))
                .andExpect(forwardedUrl("/views/category/list.jsp"))
                .andExpect(model().attributeExists("category"))
                .andExpect(status().isOk())
                .andDo(print())
                .andReturn();

        V9Category category = (V9Category) result.getModelAndView().getModel().get("category");
        Assert.assertNotNull(category);
        Assert.assertEquals(category.getCatname(), "不要让爱你的人失望");

        // TODO 修改后去掉注释
//        Assert.assertEquals(category.getParent().getCatename(), "感恩教育");
    }

}
