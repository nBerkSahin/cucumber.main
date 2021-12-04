package stepdefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.amazonPage;
import utilities.ConfigReader;
import utilities.Driver;

import java.security.Key;

public class amazonstepdefinitions {

    amazonPage amazonPage = new amazonPage();

    @When("kullanıcı amazon sayfasına gider")
    public void kullanıcı_amazon_sayfasına_gider() {
        Driver.getDriver().get(ConfigReader.getProperty("amazonUrl"));
    }

    @When("nutella için arama yapar")
    public void nutella_için_arama_yapar() {
        amazonPage.aramaKutusu.sendKeys("nutella"+ Keys.ENTER);
    }

    @Then("sonucun nutella içerdiğini test eder")
    public void sonucun_nutella_içerdiğini_test_eder() {
        Assert.assertTrue(amazonPage.sonucYazisiElementi.getText().contains("nutella"));
    }


    @And("sayfayı kapatır")
    public void sayfayıKapatır() {
        Driver.closeDriver();
    }

    @Then("sonucun {string} içerdiğini test eder")
    public void sonucunIçerdiğiniTestEder(String arananKelime) {
        Assert.assertTrue(amazonPage.sonucYazisiElementi.getText().contains(arananKelime));
    }

    @And("{string} için arama yapar")
    public void içinAramaYapar(String aranankelime) {
        amazonPage.aramaKutusu.sendKeys(aranankelime+ Keys.ENTER);
    }

    @Given("kullanıcı {string} sayfasına gider")
    public void kullanıcıSayfasınaGider(String istenenURL) {
        Driver.getDriver().get(ConfigReader.getProperty(istenenURL));
    }


}
