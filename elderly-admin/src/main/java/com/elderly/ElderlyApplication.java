package com.elderly;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

/**
 * 启动程序
 * 
 * @author rj
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class ElderlyApplication
{
    public static void main(String[] args)
    {

        SpringApplication.run(ElderlyApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  启动成功   ლ(´ڡ`ლ)ﾞ  \n" );
    }
}
