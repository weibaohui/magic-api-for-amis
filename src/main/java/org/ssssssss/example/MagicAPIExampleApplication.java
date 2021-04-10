package org.ssssssss.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;


@SpringBootApplication
@EnableSwagger2	// 配置swagger 文档
public class MagicAPIExampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(MagicAPIExampleApplication.class, args);
	}
}

