Feature: US05 amazonda liste ile arama

  Scenario Outline: TC09 amazonda verilen bir listeyi aratıp, var olduklarını test edelim

    Given kullanıcı "amazonUrl" sayfasına gider
    Then "<arananKelime>" için arama yapar
    And sonucun "<arananKelime>" içerdiğini test eder
    Then sayfayı kapatır


    Examples:
    |arananKelime|
    |nutella|
    |ipod|
    |ipad|
    |armut|