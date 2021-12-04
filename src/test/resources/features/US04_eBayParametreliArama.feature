Feature: US03 eBay sayfasında kelime arama

  Scenario: TC04 istenen kelimenin olduğunu test edelim
    #Bu kod çalışmaz
    Given kullanıcı "eBay" sayfasına gider
    And "ipod" için arama yapar
    Then sonucun "ipod" içerdiğini test eder
    And sayfayı kapatır




    # burada tum stepdefiniton'lar tanimli gibi gorunse de testimiz calismaz
    # cunku arama yaar ve sonucu test eder stepdefinion'lari amazon sayfasina gore locate edilmisti
    # burada yeniden locate etmemiz gerekirken ayni cumleyi yazdigimiz icin
    # bizden yeni stepdefinition istemedi
    # bu yuzden gherkin ile yazdigimiz cumlelerin tam tanimlayici olmasi ONEMLIDIR