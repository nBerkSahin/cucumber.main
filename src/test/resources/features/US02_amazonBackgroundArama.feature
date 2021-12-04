@background
Feature: US02 amazon arama 2

  Background: amazon sayfasına gitme
    When kullanıcı amazon sayfasına gider

  Scenario: TC01 amazon nutella arama

    And nutella için arama yapar
    Then sonucun nutella içerdiğini test eder
    And sayfayı kapatır

  Scenario: TC02 amazon nutella arama

    And nutella için arama yapar
    Then sonucun nutella içerdiğini test eder
    And sayfayı kapatır

  Scenario: TC03 amazon nutella arama

    And nutella için arama yapar
    Then sonucun nutella içerdiğini test eder
    And sayfayı kapatır