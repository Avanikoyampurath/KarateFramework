package runner;

import com.intuit.karate.junit5.Karate;

public class TestRunner {
    @Karate.Test
    Karate testSuite(){
        return Karate
                .run("classpath:feature")
                .outputCucumberJson(true)
                .reportDir("Cucumber-Karate");
    }
}
