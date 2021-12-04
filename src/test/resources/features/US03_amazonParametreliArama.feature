Feature: US03 kullanıcı istediği kelime için arama yapıp, sonucu test eder

  Scenario: TC04 istenen kelimenin olduğunu test edelim
    Given kullanıcı "amazonUrl" sayfasına gider
    And "ipod" için arama yapar
    Then sonucun "ipod" içerdiğini test eder
    And sayfayı kapatır

    # parametre olarak yazdigimiz kelimeyi stepdefinition'da String olarak kullanacaksa
    # ne yazdigimiz onemli degil  "armut" gibi

    # Ancak eger parametre olarak yazdigimiz kelimeyi configuration.properties'den alacaksak
    # burada yazdigimiz parametre'nin configuration.properties'deki yazim ile ayni olmasi gerekir
    # "amazonUrl" gibi, eger yazim farkli olurdsa nullPointerException verir

    # buradaki parametre ile configuration.properties deki key ayni olduktan sonra
    # stepdefinition'da parametre adi olarak ne yazdigimizin bir onemi olmaz