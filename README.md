<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>ru.azen</groupId>
    <artifactId>MavenExe</artifactId>
    <version>1.0-SNAPSHOT</version>
    <packaging>jar</packaging>

    <properties>
        <maven.compiler.source>1.8</maven.compiler.source>
        <maven.compiler.target>1.8</maven.compiler.target>
        <exe.file.name>maven-exe</exe.file.name>
    </properties>

    <!--   <dependencies>
           <dependency>
               <groupId>org.openjfx</groupId>
               <artifactId>javafx-controls</artifactId>
               <version>11</version>
           </dependency>
           <dependency>
               <groupId>org.openjfx</groupId>
               <artifactId>javafx-fxml</artifactId>
               <version>11</version>
           </dependency>
           <dependency>
               <groupId>org.openjfx</groupId>
               <artifactId>javafx-graphics </artifactId>
               <version>11</version>
               <classifier>win</classifier>
           </dependency>
           <dependency>
               <groupId>org.openjfx</groupId>
               <artifactId>javafx-graphics </artifactId>
               <version>11</version>
               <classifier>linux</classifier>
           </dependency>
           <dependency>
               <groupId>org.openjfx</groupId>
               <artifactId>javafx-graphics </artifactId>
               <version>11</version>
               <classifier>mac</classifier>
           </dependency>
       </dependencies>-->

    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-shade-plugin</artifactId>
                <version>1.7.1</version>
                <executions>
                    <execution>
                        <phase>package</phase>
                        <goals>
                            <goal>shade</goal>
                        </goals>
                    </execution>
                </executions>
                <configuration>
                    <finalName>jfx-exe</finalName>
                    <shadedArtifactAttached>true</shadedArtifactAttached>
                    <shadedClassifierName>shaded</shadedClassifierName>
                    <transformers>
                        <transformer
                                implementation="org.apache.maven.plugins.shade.resource.ManifestResourceTransformer">
                            <mainClass>ru.aizen.Main</mainClass>
                        </transformer>
                    </transformers>
                </configuration>
            </plugin>
            <plugin>
                <groupId>com.akathist.maven.plugins.launch4j</groupId>
                <artifactId>launch4j-maven-plugin</artifactId>
                <version>1.7.24</version>
                <executions>
                    <execution>
                        <id>l4j-gui</id>
                        <phase>package</phase>
                        <goals>
                            <goal>launch4j</goal>
                        </goals>
                        <configuration>
                            <headerType>gui</headerType>
                            <outfile>launch.exe</outfile>
                            <jar>target/jfx-exe.jar</jar>
                            <dontWrapJar>false</dontWrapJar>
                            <errTitle>application name</errTitle>
                            <cmdLine>--title=Launch4j</cmdLine>
                            <icon>src/main/resources/icon.ico</icon>
                            <classPath>
                                <mainClass>ru.aizen.Main</mainClass>
                            </classPath>
                            <singleInstance>
                                <mutexName>text</mutexName>
                                <windowTitle>text</windowTitle>
                            </singleInstance>
                            <jre>
                                <path>E:\dev\java\jdk1.8.0_162</path>
                                <minVersion>${maven.compiler.target}</minVersion>
                                <runtimeBits>64</runtimeBits>
                                <opts>
                                    <opt>-Dhello="with JavaFX 11"</opt>
                                </opts>
                            </jre>
                            <splash>
                                <file>src/main/resources/splash.bmp</file>
                                <waitForWindow>true</waitForWindow>
                                <timeout>60</timeout>
                                <timeoutErr>true</timeoutErr>
                            </splash>
                            <versionInfo>
                                <fileVersion>1.2.3.4</fileVersion>
                                <txtFileVersion>txt file version?</txtFileVersion>
                                <fileDescription>a description</fileDescription>
                                <copyright>my copyright</copyright>
                                <productVersion>4.3.2.1</productVersion>
                                <txtProductVersion>txt product version</txtProductVersion>
                                <productName>E-N-C-C</productName>
                                <internalName>ccne</internalName>
                                <originalFilename>original.exe</originalFilename>
                            </versionInfo>
                            <messages>
                                <jreVersionErr>Application required JRE version</jreVersionErr>
                            </messages>
                        </configuration>
                    </execution>
                </executions>
            </plugin>
            <!--            <plugin>
                            <artifactId>maven-assembly-plugin</artifactId>
                            <executions>
                                <execution>
                                    <id>assembly</id>
                                    <phase>package</phase>
                                    <goals>
                                        <goal>single</goal>
                                    </goals>
                                    <configuration>
                                        <descriptors>
                                            <descriptor>assembly.xml</descriptor>
                                        </descriptors>
                                    </configuration>
                                </execution>
                            </executions>
                        </plugin>-->
        </plugins>
    </build>

</project>
