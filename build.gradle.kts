plugins {
    id("java")
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(platform("org.junit:junit-bom:5.10.0"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    testRuntimeOnly("org.junit.platform:junit-platform-launcher")

    runtimeOnly("org.postgresql:postgresql:42.5.0")

    implementation("org.netbeans.external:AbsoluteLayout:RELEASE270")
    implementation("com.formdev:flatlaf:3.6.2")
    implementation("com.formdev:flatlaf-intellij-themes:3.6.2")
    implementation("org.apache.poi:poi-ooxml:5.5.0")
}

tasks.test {
    useJUnitPlatform()
}