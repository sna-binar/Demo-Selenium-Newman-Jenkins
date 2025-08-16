package tests;

import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Assert;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import pages.GoogleHomePage;
import utils.BaseTest;

public class GoogleTest extends BaseTest {
    @Test
    public void testGoogleHomePage() {
        // Membuat objek halaman berdasarkan Page Class yang sudah kita buat
        GoogleHomePage googlePage = new GoogleHomePage(driver);
        googlePage.navigateToHomePage();

        System.out.println("Current URL: " + googlePage.getCurrentUrl());
        System.out.println("Page Title: " + googlePage.getPageTitle());

        Assert.assertEquals("https://www.google.com/", googlePage.getCurrentUrl());
    }
}
