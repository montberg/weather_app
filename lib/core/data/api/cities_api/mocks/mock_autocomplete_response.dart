// ignore_for_file: constant_identifier_names

const mock_autocomplete_response = """[
  {
    "Version": 1,
    "Key": "28143",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Дакка",
    "EnglishName": "Dhaka",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "BD",
      "LocalizedName": "Бангладеш",
      "EnglishName": "Bangladesh"
    },
    "AdministrativeArea": {
      "ID": "C",
      "LocalizedName": "Дакка",
      "EnglishName": "Dhaka",
      "Level": 1,
      "LocalizedType": "Единица",
      "EnglishType": "Division",
      "CountryID": "BD"
    },
    "TimeZone": {
      "Code": "BDT",
      "Name": "Asia/Dhaka",
      "GmtOffset": 6,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 23.71,
      "Longitude": 90.407,
      "Elevation": {
        "Metric": {
          "Value": 5,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 16,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "113487",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Киншаса",
    "EnglishName": "Kinshasa",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "AFR",
      "LocalizedName": "Африка",
      "EnglishName": "Africa"
    },
    "Country": {
      "ID": "CD",
      "LocalizedName": "Демократическая Республика Конго",
      "EnglishName": "Democratic Republic of the Congo"
    },
    "AdministrativeArea": {
      "ID": "KN",
      "LocalizedName": "Киншаса",
      "EnglishName": "Kinshasa",
      "Level": 1,
      "LocalizedType": "Город",
      "EnglishType": "City",
      "CountryID": "CD"
    },
    "TimeZone": {
      "Code": "WAT",
      "Name": "Africa/Kinshasa",
      "GmtOffset": 1,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": -4.316,
      "Longitude": 15.298,
      "Elevation": {
        "Metric": {
          "Value": 180,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 590,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "60449",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Сантьяго",
    "EnglishName": "Santiago",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "SAM",
      "LocalizedName": "Южная Америка",
      "EnglishName": "South America"
    },
    "Country": {
      "ID": "CL",
      "LocalizedName": "Чили",
      "EnglishName": "Chile"
    },
    "AdministrativeArea": {
      "ID": "RM",
      "LocalizedName": "Сантьяго",
      "EnglishName": "Región Metropolitana de Santiago",
      "Level": 1,
      "LocalizedType": "Регион",
      "EnglishType": "Region",
      "CountryID": "CL"
    },
    "TimeZone": {
      "Code": "CLST",
      "Name": "America/Santiago",
      "GmtOffset": -3,
      "IsDaylightSaving": true,
      "NextOffsetChange": "2025-04-06T03:00:00Z"
    },
    "GeoPosition": {
      "Latitude": -33.446,
      "Longitude": -70.659,
      "Elevation": {
        "Metric": {
          "Value": 522,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 1712,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Santiago",
        "EnglishName": "Santiago"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "101924",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Пекин",
    "EnglishName": "Beijing",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "CN",
      "LocalizedName": "Китай",
      "EnglishName": "China"
    },
    "AdministrativeArea": {
      "ID": "BJ",
      "LocalizedName": "Пекин",
      "EnglishName": "Beijing",
      "Level": 1,
      "LocalizedType": "Муниципалитет",
      "EnglishType": "Municipality",
      "CountryID": "CN"
    },
    "TimeZone": {
      "Code": "CST",
      "Name": "Asia/Shanghai",
      "GmtOffset": 8,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 39.917,
      "Longitude": 116.407,
      "Elevation": {
        "Metric": {
          "Value": 62,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 203,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQuality",
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyAirQualityForecast",
      "DailyLocalIndices",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "PremiumAirQuality"
    ]
  },
  {
    "Version": 1,
    "Key": "107487",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Богота",
    "EnglishName": "Bogota",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "SAM",
      "LocalizedName": "Южная Америка",
      "EnglishName": "South America"
    },
    "Country": {
      "ID": "CO",
      "LocalizedName": "Колумбия",
      "EnglishName": "Colombia"
    },
    "AdministrativeArea": {
      "ID": "DC",
      "LocalizedName": "Богота",
      "EnglishName": "Distrito Capital de Bogotá",
      "Level": 1,
      "LocalizedType": "Столичный округ",
      "EnglishType": "Capital District",
      "CountryID": "CO"
    },
    "TimeZone": {
      "Code": "COT",
      "Name": "America/Bogota",
      "GmtOffset": -5,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 4.628,
      "Longitude": -74.077,
      "Elevation": {
        "Metric": {
          "Value": 2562,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 8406,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Santafe de Bogota",
        "EnglishName": "Santafe de Bogota"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "178087",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Берлин",
    "EnglishName": "Berlin",
    "PrimaryPostalCode": "10178",
    "Region": {
      "ID": "EUR",
      "LocalizedName": "Европа",
      "EnglishName": "Europe"
    },
    "Country": {
      "ID": "DE",
      "LocalizedName": "Германия",
      "EnglishName": "Germany"
    },
    "AdministrativeArea": {
      "ID": "BE",
      "LocalizedName": "Берлин",
      "EnglishName": "Berlin",
      "Level": 1,
      "LocalizedType": "Штат",
      "EnglishType": "State",
      "CountryID": "DE"
    },
    "TimeZone": {
      "Code": "CET",
      "Name": "Europe/Berlin",
      "GmtOffset": 1,
      "IsDaylightSaving": false,
      "NextOffsetChange": "2025-03-30T01:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 52.518,
      "Longitude": 13.406,
      "Elevation": {
        "Metric": {
          "Value": 35,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 114,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Берлин",
        "EnglishName": "Berlin"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "127164",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Каир",
    "EnglishName": "Cairo",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "AFR",
      "LocalizedName": "Африка",
      "EnglishName": "Africa"
    },
    "Country": {
      "ID": "EG",
      "LocalizedName": "Египет",
      "EnglishName": "Egypt"
    },
    "AdministrativeArea": {
      "ID": "C",
      "LocalizedName": "Каир",
      "EnglishName": "Cairo",
      "Level": 1,
      "LocalizedType": "Мухафаза",
      "EnglishType": "Governorate",
      "CountryID": "EG"
    },
    "TimeZone": {
      "Code": "EET",
      "Name": "Africa/Cairo",
      "GmtOffset": 2,
      "IsDaylightSaving": false,
      "NextOffsetChange": "2025-04-24T22:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 30.084,
      "Longitude": 31.255,
      "Elevation": {
        "Metric": {
          "Value": 20,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 65,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "DailyPollenForecast",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "308526",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Мадрид",
    "EnglishName": "Madrid",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "EUR",
      "LocalizedName": "Европа",
      "EnglishName": "Europe"
    },
    "Country": {
      "ID": "ES",
      "LocalizedName": "Испания",
      "EnglishName": "Spain"
    },
    "AdministrativeArea": {
      "ID": "MD",
      "LocalizedName": "Мадрид",
      "EnglishName": "Madrid",
      "Level": 1,
      "LocalizedType": "Автономное сообщество",
      "EnglishType": "Autonomous Community",
      "CountryID": "ES"
    },
    "TimeZone": {
      "Code": "CET",
      "Name": "Europe/Madrid",
      "GmtOffset": 1,
      "IsDaylightSaving": false,
      "NextOffsetChange": "2025-03-30T01:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 40.41,
      "Longitude": -3.686,
      "Elevation": {
        "Metric": {
          "Value": 639,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 2095,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 3,
        "LocalizedName": "Мадрид",
        "EnglishName": "Madrid"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "328328",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Лондон",
    "EnglishName": "London",
    "PrimaryPostalCode": "EC4A 2",
    "Region": {
      "ID": "EUR",
      "LocalizedName": "Европа",
      "EnglishName": "Europe"
    },
    "Country": {
      "ID": "GB",
      "LocalizedName": "Великобритания",
      "EnglishName": "United Kingdom"
    },
    "AdministrativeArea": {
      "ID": "LND",
      "LocalizedName": "Лондон",
      "EnglishName": "London",
      "Level": 1,
      "LocalizedType": "Округ",
      "EnglishType": "London Borough",
      "CountryID": "GB"
    },
    "TimeZone": {
      "Code": "GMT",
      "Name": "Europe/London",
      "GmtOffset": 0,
      "IsDaylightSaving": false,
      "NextOffsetChange": "2025-03-30T01:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 51.514,
      "Longitude": -0.107,
      "Elevation": {
        "Metric": {
          "Value": 18,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 59,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 0,
        "LocalizedName": "England",
        "EnglishName": "England"
      },
      {
        "Level": 3,
        "LocalizedName": "Castle Baynard",
        "EnglishName": "Castle Baynard"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "182536",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Афины",
    "EnglishName": "Athens",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "EUR",
      "LocalizedName": "Европа",
      "EnglishName": "Europe"
    },
    "Country": {
      "ID": "GR",
      "LocalizedName": "Греция",
      "EnglishName": "Greece"
    },
    "AdministrativeArea": {
      "ID": "I",
      "LocalizedName": "Аттика",
      "EnglishName": "Attica",
      "Level": 1,
      "LocalizedType": "Регион",
      "EnglishType": "Region",
      "CountryID": "GR"
    },
    "TimeZone": {
      "Code": "EET",
      "Name": "Europe/Athens",
      "GmtOffset": 2,
      "IsDaylightSaving": false,
      "NextOffsetChange": "2025-03-30T01:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 37.984,
      "Longitude": 23.728,
      "Elevation": {
        "Metric": {
          "Value": 126,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 413,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Athens",
        "EnglishName": "Athens"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "1123655",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Гонконг",
    "EnglishName": "Hong Kong",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "HK",
      "LocalizedName": "Гонконг",
      "EnglishName": "Hong Kong"
    },
    "AdministrativeArea": {
      "ID": "ST",
      "LocalizedName": "Сатхинь",
      "EnglishName": "Sha Tin",
      "Level": 1,
      "LocalizedType": "Округ",
      "EnglishType": "District",
      "CountryID": "HK"
    },
    "TimeZone": {
      "Code": "CST",
      "Name": "Asia/Hong_Kong",
      "GmtOffset": 8,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 22.369,
      "Longitude": 114.174,
      "Elevation": {
        "Metric": {
          "Value": 35,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 114,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQuality",
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "PremiumAirQuality",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "208971",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Джакарта",
    "EnglishName": "Jakarta",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "ID",
      "LocalizedName": "Индонезия",
      "EnglishName": "Indonesia"
    },
    "AdministrativeArea": {
      "ID": "JK",
      "LocalizedName": "Джакарта",
      "EnglishName": "Jakarta",
      "Level": 1,
      "LocalizedType": "Столичный округ",
      "EnglishType": "Capital District",
      "CountryID": "ID"
    },
    "TimeZone": {
      "Code": "WIT",
      "Name": "Asia/Jakarta",
      "GmtOffset": 7,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": -6.175,
      "Longitude": 106.827,
      "Elevation": {
        "Metric": {
          "Value": 11,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 35,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Jakarta Pusat",
        "EnglishName": "Jakarta Pusat"
      },
      {
        "Level": 3,
        "LocalizedName": "Gambir",
        "EnglishName": "Gambir"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "207375",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Багдад",
    "EnglishName": "Baghdad",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "MEA",
      "LocalizedName": "Средний Восток",
      "EnglishName": "Middle East"
    },
    "Country": {
      "ID": "IQ",
      "LocalizedName": "Ирак",
      "EnglishName": "Iraq"
    },
    "AdministrativeArea": {
      "ID": "BG",
      "LocalizedName": "Багдад",
      "EnglishName": "Baghdad",
      "Level": 1,
      "LocalizedType": "Мухафаза",
      "EnglishType": "Governorate",
      "CountryID": "IQ"
    },
    "TimeZone": {
      "Code": "AST",
      "Name": "Asia/Baghdad",
      "GmtOffset": 3,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 33.328,
      "Longitude": 44.386,
      "Elevation": {
        "Metric": {
          "Value": 35,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 114,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "226396",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Токио",
    "EnglishName": "Tokyo",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "JP",
      "LocalizedName": "Япония",
      "EnglishName": "Japan"
    },
    "AdministrativeArea": {
      "ID": "13",
      "LocalizedName": "Токио",
      "EnglishName": "Tokyo",
      "Level": 1,
      "LocalizedType": "Префектура",
      "EnglishType": "Prefecture",
      "CountryID": "JP"
    },
    "TimeZone": {
      "Code": "JST",
      "Name": "Asia/Tokyo",
      "GmtOffset": 9,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 35.683,
      "Longitude": 139.809,
      "Elevation": {
        "Metric": {
          "Value": 1,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 3,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "226081",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Сеул",
    "EnglishName": "Seoul",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "KR",
      "LocalizedName": "Южная Корея",
      "EnglishName": "South Korea"
    },
    "AdministrativeArea": {
      "ID": "11",
      "LocalizedName": "Сеул",
      "EnglishName": "Seoul",
      "Level": 1,
      "LocalizedType": "Особый город",
      "EnglishType": "Special City",
      "CountryID": "KR"
    },
    "TimeZone": {
      "Code": "KST",
      "Name": "Asia/Seoul",
      "GmtOffset": 9,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 37.537,
      "Longitude": 126.97,
      "Elevation": {
        "Metric": {
          "Value": 19,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 62,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQuality",
      "AirQuality-Regional",
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyLocalIndices",
      "ForecastConfidence",
      "FutureRadar",
      "HourlyLocalIndices",
      "MinuteCast",
      "PremiumAirQuality",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "242560",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Мехико",
    "EnglishName": "Mexico City",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "NAM",
      "LocalizedName": "Северная Америка",
      "EnglishName": "North America"
    },
    "Country": {
      "ID": "MX",
      "LocalizedName": "Мексика",
      "EnglishName": "Mexico"
    },
    "AdministrativeArea": {
      "ID": "CMX",
      "LocalizedName": "Федеральный Округ",
      "EnglishName": "México City",
      "Level": 1,
      "LocalizedType": "Федеральный округ",
      "EnglishType": "Federal District",
      "CountryID": "MX"
    },
    "TimeZone": {
      "Code": "CST",
      "Name": "America/Mexico_City",
      "GmtOffset": -6,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 19.433,
      "Longitude": -99.133,
      "Elevation": {
        "Metric": {
          "Value": 2242,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 7357,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "264120",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Лима",
    "EnglishName": "Lima",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "SAM",
      "LocalizedName": "Южная Америка",
      "EnglishName": "South America"
    },
    "Country": {
      "ID": "PE",
      "LocalizedName": "Перу",
      "EnglishName": "Peru"
    },
    "AdministrativeArea": {
      "ID": "LMA",
      "LocalizedName": "",
      "EnglishName": "Lima",
      "Level": 1,
      "LocalizedType": "Муниципалитет",
      "EnglishType": "Municipality",
      "CountryID": "PE"
    },
    "TimeZone": {
      "Code": "PET",
      "Name": "America/Lima",
      "GmtOffset": -5,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": -12.082,
      "Longitude": -77.045,
      "Elevation": {
        "Metric": {
          "Value": 105,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 344,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "FutureRadar",
      "MinuteCast",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "294021",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Москва",
    "EnglishName": "Moscow",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "RU",
      "LocalizedName": "Россия",
      "EnglishName": "Russia"
    },
    "AdministrativeArea": {
      "ID": "MOW",
      "LocalizedName": "Москва",
      "EnglishName": "Moscow",
      "Level": 1,
      "LocalizedType": "Город федерального подчинения",
      "EnglishType": "Federal City",
      "CountryID": "RU"
    },
    "TimeZone": {
      "Code": "MSK",
      "Name": "Europe/Moscow",
      "GmtOffset": 3,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 55.752,
      "Longitude": 37.619,
      "Elevation": {
        "Metric": {
          "Value": 155,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 508,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Tsentralny",
        "EnglishName": "Tsentralny"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "297030",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Эр-рияд",
    "EnglishName": "Riyadh",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "MEA",
      "LocalizedName": "Средний Восток",
      "EnglishName": "Middle East"
    },
    "Country": {
      "ID": "SA",
      "LocalizedName": "Саудовская Аравия",
      "EnglishName": "Saudi Arabia"
    },
    "AdministrativeArea": {
      "ID": "01",
      "LocalizedName": "Эр-Рияд",
      "EnglishName": "Riyadh",
      "Level": 1,
      "LocalizedType": "Регион",
      "EnglishType": "Region",
      "CountryID": "SA"
    },
    "TimeZone": {
      "Code": "AST",
      "Name": "Asia/Riyadh",
      "GmtOffset": 3,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 24.64,
      "Longitude": 46.753,
      "Elevation": {
        "Metric": {
          "Value": 598,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 1961,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "300597",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Сингапур",
    "EnglishName": "Singapore",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "SG",
      "LocalizedName": "Сингапур",
      "EnglishName": "Singapore"
    },
    "AdministrativeArea": {
      "ID": "01",
      "LocalizedName": "",
      "EnglishName": "Central Singapore",
      "Level": 1,
      "LocalizedType": "Округ",
      "EnglishType": "District",
      "CountryID": "SG"
    },
    "TimeZone": {
      "Code": "SGT",
      "Name": "Asia/Singapore",
      "GmtOffset": 8,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 1.311,
      "Longitude": 103.843,
      "Elevation": {
        "Metric": {
          "Value": 13,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 42,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "FutureRadar",
      "MinuteCast",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "318849",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Бангкок",
    "EnglishName": "Bangkok",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "TH",
      "LocalizedName": "Таиланд",
      "EnglishName": "Thailand"
    },
    "AdministrativeArea": {
      "ID": "10",
      "LocalizedName": "Бангкок",
      "EnglishName": "Bangkok",
      "Level": 1,
      "LocalizedType": "Провинция",
      "EnglishType": "Province",
      "CountryID": "TH"
    },
    "TimeZone": {
      "Code": "ICT",
      "Name": "Asia/Bangkok",
      "GmtOffset": 7,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 13.731,
      "Longitude": 100.521,
      "Elevation": {
        "Metric": {
          "Value": 2,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 6,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "353412",
    "Type": "City",
    "Rank": 10,
    "LocalizedName": "Ханой",
    "EnglishName": "Hanoi",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "VN",
      "LocalizedName": "Вьетнам",
      "EnglishName": "Vietnam"
    },
    "AdministrativeArea": {
      "ID": "HN",
      "LocalizedName": "Ханой",
      "EnglishName": "Hanoi",
      "Level": 1,
      "LocalizedType": "Муниципалитет",
      "EnglishType": "Municipality",
      "CountryID": "VN"
    },
    "TimeZone": {
      "Code": "ICT",
      "Name": "Asia/Ho_Chi_Minh",
      "GmtOffset": 7,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 20.999,
      "Longitude": 105.7,
      "Elevation": {
        "Metric": {
          "Value": 19,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 62,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "22889",
    "Type": "City",
    "Rank": 11,
    "LocalizedName": "Сидней",
    "EnglishName": "Sydney",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "OCN",
      "LocalizedName": "Океания",
      "EnglishName": "Oceania"
    },
    "Country": {
      "ID": "AU",
      "LocalizedName": "Австралия",
      "EnglishName": "Australia"
    },
    "AdministrativeArea": {
      "ID": "NSW",
      "LocalizedName": "Новый Южный Уэльс",
      "EnglishName": "New South Wales",
      "Level": 1,
      "LocalizedType": "Штат",
      "EnglishType": "State",
      "CountryID": "AU"
    },
    "TimeZone": {
      "Code": "AEDT",
      "Name": "Australia/Sydney",
      "GmtOffset": 11,
      "IsDaylightSaving": true,
      "NextOffsetChange": "2025-04-05T16:00:00Z"
    },
    "GeoPosition": {
      "Latitude": -33.87,
      "Longitude": 151.209,
      "Elevation": {
        "Metric": {
          "Value": 1,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 3,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "106577",
    "Type": "City",
    "Rank": 11,
    "LocalizedName": "Шанхай",
    "EnglishName": "Shanghai",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "CN",
      "LocalizedName": "Китай",
      "EnglishName": "China"
    },
    "AdministrativeArea": {
      "ID": "SH",
      "LocalizedName": "Шанхай",
      "EnglishName": "Shanghai",
      "Level": 1,
      "LocalizedType": "Муниципалитет",
      "EnglishType": "Municipality",
      "CountryID": "CN"
    },
    "TimeZone": {
      "Code": "CST",
      "Name": "Asia/Shanghai",
      "GmtOffset": 8,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 31.232,
      "Longitude": 121.444,
      "Elevation": {
        "Metric": {
          "Value": 5,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 16,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQuality",
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyAirQualityForecast",
      "DailyLocalIndices",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "PremiumAirQuality",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "202396",
    "Type": "City",
    "Rank": 11,
    "LocalizedName": "Дели",
    "EnglishName": "Delhi",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "IN",
      "LocalizedName": "Индия",
      "EnglishName": "India"
    },
    "AdministrativeArea": {
      "ID": "DL",
      "LocalizedName": "Дели",
      "EnglishName": "Delhi",
      "Level": 1,
      "LocalizedType": "Союзная территория",
      "EnglishType": "Union Territory",
      "CountryID": "IN"
    },
    "TimeZone": {
      "Code": "IST",
      "Name": "Asia/Kolkata",
      "GmtOffset": 5.5,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 28.643,
      "Longitude": 77.118,
      "Elevation": {
        "Metric": {
          "Value": 215,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 705,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Западный Дели",
        "EnglishName": "West"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "PremiumAirQuality"
    ]
  },
  {
    "Version": 1,
    "Key": "204108",
    "Type": "City",
    "Rank": 11,
    "LocalizedName": "Бенгалуру",
    "EnglishName": "Bengaluru",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "IN",
      "LocalizedName": "Индия",
      "EnglishName": "India"
    },
    "AdministrativeArea": {
      "ID": "KA",
      "LocalizedName": "Карнатака",
      "EnglishName": "Karnataka",
      "Level": 1,
      "LocalizedType": "Штат",
      "EnglishType": "State",
      "CountryID": "IN"
    },
    "TimeZone": {
      "Code": "IST",
      "Name": "Asia/Kolkata",
      "GmtOffset": 5.5,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 12.991,
      "Longitude": 77.579,
      "Elevation": {
        "Metric": {
          "Value": 913,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 2997,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Городской округ Бангалор",
        "EnglishName": "Bangalore"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "PremiumAirQuality"
    ]
  },
  {
    "Version": 1,
    "Key": "204842",
    "Type": "City",
    "Rank": 11,
    "LocalizedName": "Мумбаи",
    "EnglishName": "Mumbai",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "IN",
      "LocalizedName": "Индия",
      "EnglishName": "India"
    },
    "AdministrativeArea": {
      "ID": "MH",
      "LocalizedName": "Махараштра",
      "EnglishName": "Maharashtra",
      "Level": 1,
      "LocalizedType": "Штат",
      "EnglishType": "State",
      "CountryID": "IN"
    },
    "TimeZone": {
      "Code": "IST",
      "Name": "Asia/Kolkata",
      "GmtOffset": 5.5,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 19.143,
      "Longitude": 72.878,
      "Elevation": {
        "Metric": {
          "Value": 47,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 154,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Пригородный округ Мумбаи",
        "EnglishName": "Mumbai Suburban"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "PremiumAirQuality",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "206690",
    "Type": "City",
    "Rank": 11,
    "LocalizedName": "Калькутта",
    "EnglishName": "Kolkata",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "IN",
      "LocalizedName": "Индия",
      "EnglishName": "India"
    },
    "AdministrativeArea": {
      "ID": "WB",
      "LocalizedName": "Западная Бенгалия",
      "EnglishName": "West Bengal",
      "Level": 1,
      "LocalizedType": "Штат",
      "EnglishType": "State",
      "CountryID": "IN"
    },
    "TimeZone": {
      "Code": "IST",
      "Name": "Asia/Kolkata",
      "GmtOffset": 5.5,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 22.526,
      "Longitude": 88.353,
      "Elevation": {
        "Metric": {
          "Value": 16,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 52,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Колката",
        "EnglishName": "Kolkata"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "PremiumAirQuality"
    ]
  },
  {
    "Version": 1,
    "Key": "261158",
    "Type": "City",
    "Rank": 11,
    "LocalizedName": "Карачи",
    "EnglishName": "Karachi",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "PK",
      "LocalizedName": "Пакистан",
      "EnglishName": "Pakistan"
    },
    "AdministrativeArea": {
      "ID": "SD",
      "LocalizedName": "Синд",
      "EnglishName": "Sindh",
      "Level": 1,
      "LocalizedType": "Провинция",
      "EnglishType": "Province",
      "CountryID": "PK"
    },
    "TimeZone": {
      "Code": "PKT",
      "Name": "Asia/Karachi",
      "GmtOffset": 5,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 24.89,
      "Longitude": 67.029,
      "Elevation": {
        "Metric": {
          "Value": 11,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 36,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Karachi Central",
        "EnglishName": "Karachi Central"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "FutureRadar",
      "MinuteCast",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "318251",
    "Type": "City",
    "Rank": 11,
    "LocalizedName": "Стамбул",
    "EnglishName": "Istanbul",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "MEA",
      "LocalizedName": "Средний Восток",
      "EnglishName": "Middle East"
    },
    "Country": {
      "ID": "TR",
      "LocalizedName": "Турция",
      "EnglishName": "Türkiye"
    },
    "AdministrativeArea": {
      "ID": "34",
      "LocalizedName": "Стамбул",
      "EnglishName": "Istanbul",
      "Level": 1,
      "LocalizedType": "Провинция",
      "EnglishType": "Province",
      "CountryID": "TR"
    },
    "TimeZone": {
      "Code": "TRT",
      "Name": "Europe/Istanbul",
      "GmtOffset": 3,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 41.011,
      "Longitude": 28.958,
      "Elevation": {
        "Metric": {
          "Value": 48,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 157,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Fatih",
        "EnglishName": "Fatih"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "347625",
    "Type": "City",
    "Rank": 15,
    "LocalizedName": "Лос-анджелес",
    "EnglishName": "Los Angeles",
    "PrimaryPostalCode": "90012",
    "Region": {
      "ID": "NAM",
      "LocalizedName": "Северная Америка",
      "EnglishName": "North America"
    },
    "Country": {
      "ID": "US",
      "LocalizedName": "США",
      "EnglishName": "United States"
    },
    "AdministrativeArea": {
      "ID": "CA",
      "LocalizedName": "Калифорния",
      "EnglishName": "California",
      "Level": 1,
      "LocalizedType": "Штат",
      "EnglishType": "State",
      "CountryID": "US"
    },
    "TimeZone": {
      "Code": "PDT",
      "Name": "America/Los_Angeles",
      "GmtOffset": -7,
      "IsDaylightSaving": true,
      "NextOffsetChange": "2025-11-02T09:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 34.052,
      "Longitude": -118.244,
      "Elevation": {
        "Metric": {
          "Value": 121,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 396,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Лос-Анджелес",
        "EnglishName": "Los Angeles"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyAirQualityForecast",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "ProximityNotification-Lightning",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "349727",
    "Type": "City",
    "Rank": 15,
    "LocalizedName": "Нью-йорк",
    "EnglishName": "New York",
    "PrimaryPostalCode": "10021",
    "Region": {
      "ID": "NAM",
      "LocalizedName": "Северная Америка",
      "EnglishName": "North America"
    },
    "Country": {
      "ID": "US",
      "LocalizedName": "США",
      "EnglishName": "United States"
    },
    "AdministrativeArea": {
      "ID": "NY",
      "LocalizedName": "Нью-йорк",
      "EnglishName": "New York",
      "Level": 1,
      "LocalizedType": "Штат",
      "EnglishType": "State",
      "CountryID": "US"
    },
    "TimeZone": {
      "Code": "EDT",
      "Name": "America/New_York",
      "GmtOffset": -4,
      "IsDaylightSaving": true,
      "NextOffsetChange": "2025-11-02T06:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 40.779,
      "Longitude": -73.969,
      "Elevation": {
        "Metric": {
          "Value": 8,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 26,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Нью-йорк",
        "EnglishName": "New York"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyAirQualityForecast",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "ProximityNotification-Lightning",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "4361",
    "Type": "City",
    "Rank": 20,
    "LocalizedName": "Кабул",
    "EnglishName": "Kabul",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "AF",
      "LocalizedName": "Афганистан",
      "EnglishName": "Afghanistan"
    },
    "AdministrativeArea": {
      "ID": "KAB",
      "LocalizedName": "Кабул",
      "EnglishName": "Kabul",
      "Level": 1,
      "LocalizedType": "Провинция",
      "EnglishType": "Province",
      "CountryID": "AF"
    },
    "TimeZone": {
      "Code": "AFT",
      "Name": "Asia/Kabul",
      "GmtOffset": 4.5,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 34.531,
      "Longitude": 69.137,
      "Elevation": {
        "Metric": {
          "Value": 1838,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 6031,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Kabul",
        "EnglishName": "Kabul"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "7894",
    "Type": "City",
    "Rank": 20,
    "LocalizedName": "Буэнос-айрес",
    "EnglishName": "Buenos Aires",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "SAM",
      "LocalizedName": "Южная Америка",
      "EnglishName": "South America"
    },
    "Country": {
      "ID": "AR",
      "LocalizedName": "Аргентина",
      "EnglishName": "Argentina"
    },
    "AdministrativeArea": {
      "ID": "C",
      "LocalizedName": "Буэнос-Айрес",
      "EnglishName": "Buenos Aires - Capital Federal",
      "Level": 1,
      "LocalizedType": "Автономный город",
      "EnglishType": "Autonomous City",
      "CountryID": "AR"
    },
    "TimeZone": {
      "Code": "ART",
      "Name": "America/Argentina/Buenos_Aires",
      "GmtOffset": -3,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": -34.608,
      "Longitude": -58.437,
      "Elevation": {
        "Metric": {
          "Value": 19,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 62,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "5",
        "EnglishName": "5"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "122438",
    "Type": "City",
    "Rank": 20,
    "LocalizedName": "Гавана",
    "EnglishName": "Havana",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "CAC",
      "LocalizedName": "Центральная Америка",
      "EnglishName": "Central America"
    },
    "Country": {
      "ID": "CU",
      "LocalizedName": "Куба",
      "EnglishName": "Cuba"
    },
    "AdministrativeArea": {
      "ID": "03",
      "LocalizedName": "Гавана",
      "EnglishName": "La Habana",
      "Level": 1,
      "LocalizedType": "Провинция",
      "EnglishType": "Province",
      "CountryID": "CU"
    },
    "TimeZone": {
      "Code": "CDT",
      "Name": "America/Havana",
      "GmtOffset": -4,
      "IsDaylightSaving": true,
      "NextOffsetChange": "2025-11-02T05:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 23.117,
      "Longitude": -82.389,
      "Elevation": {
        "Metric": {
          "Value": 35,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 114,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Plaza de la Revolucion",
        "EnglishName": "Plaza de la Revolucion"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "623",
    "Type": "City",
    "Rank": 20,
    "LocalizedName": "Париж",
    "EnglishName": "Paris",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "EUR",
      "LocalizedName": "Европа",
      "EnglishName": "Europe"
    },
    "Country": {
      "ID": "FR",
      "LocalizedName": "Франция",
      "EnglishName": "France"
    },
    "AdministrativeArea": {
      "ID": "75",
      "LocalizedName": "Париж",
      "EnglishName": "Ville de Paris",
      "Level": 1,
      "LocalizedType": "Департамент",
      "EnglishType": "Department",
      "CountryID": "FR"
    },
    "TimeZone": {
      "Code": "CET",
      "Name": "Europe/Paris",
      "GmtOffset": 1,
      "IsDaylightSaving": false,
      "NextOffsetChange": "2025-03-30T01:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 48.857,
      "Longitude": 2.351,
      "Elevation": {
        "Metric": {
          "Value": 35,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 114,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "I округ Парижа",
        "EnglishName": "Paris"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "210841",
    "Type": "City",
    "Rank": 20,
    "LocalizedName": "Тегеран",
    "EnglishName": "Tehran",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "MEA",
      "LocalizedName": "Средний Восток",
      "EnglishName": "Middle East"
    },
    "Country": {
      "ID": "IR",
      "LocalizedName": "Иран",
      "EnglishName": "Iran"
    },
    "AdministrativeArea": {
      "ID": "07",
      "LocalizedName": "Тегеран",
      "EnglishName": "Tehran",
      "Level": 1,
      "LocalizedType": "Провинция",
      "EnglishType": "Province",
      "CountryID": "IR"
    },
    "TimeZone": {
      "Code": "IRST",
      "Name": "Asia/Tehran",
      "GmtOffset": 3.5,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 35.701,
      "Longitude": 51.407,
      "Elevation": {
        "Metric": {
          "Value": 1227,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 4027,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "264885",
    "Type": "City",
    "Rank": 20,
    "LocalizedName": "Манила",
    "EnglishName": "Manila",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "PH",
      "LocalizedName": "Филиппины",
      "EnglishName": "Philippines"
    },
    "AdministrativeArea": {
      "ID": "MNL",
      "LocalizedName": "Манила",
      "EnglishName": "Metropolitan Manila",
      "Level": 1,
      "LocalizedType": "Регион",
      "EnglishType": "Region",
      "CountryID": "PH"
    },
    "TimeZone": {
      "Code": "PHT",
      "Name": "Asia/Manila",
      "GmtOffset": 8,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 14.59,
      "Longitude": 120.982,
      "Elevation": {
        "Metric": {
          "Value": 2,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 8,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "298198",
    "Type": "City",
    "Rank": 20,
    "LocalizedName": "Белград",
    "EnglishName": "Belgrade",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "EUR",
      "LocalizedName": "Европа",
      "EnglishName": "Europe"
    },
    "Country": {
      "ID": "RS",
      "LocalizedName": "Сербия",
      "EnglishName": "Serbia"
    },
    "AdministrativeArea": {
      "ID": "00",
      "LocalizedName": "Белград",
      "EnglishName": "Belgrade",
      "Level": 1,
      "LocalizedType": "Округ",
      "EnglishType": "District",
      "CountryID": "RS"
    },
    "TimeZone": {
      "Code": "CET",
      "Name": "Europe/Belgrade",
      "GmtOffset": 1,
      "IsDaylightSaving": false,
      "NextOffsetChange": "2025-03-30T01:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 44.817,
      "Longitude": 20.464,
      "Elevation": {
        "Metric": {
          "Value": 99,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 324,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Stari",
        "EnglishName": "Stari"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "297442",
    "Type": "City",
    "Rank": 20,
    "LocalizedName": "Дакар",
    "EnglishName": "Dakar",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "AFR",
      "LocalizedName": "Африка",
      "EnglishName": "Africa"
    },
    "Country": {
      "ID": "SN",
      "LocalizedName": "Сенегал",
      "EnglishName": "Senegal"
    },
    "AdministrativeArea": {
      "ID": "DK",
      "LocalizedName": "Дакар",
      "EnglishName": "Dakar",
      "Level": 1,
      "LocalizedType": "Регион",
      "EnglishType": "Region",
      "CountryID": "SN"
    },
    "TimeZone": {
      "Code": "GMT",
      "Name": "Africa/Dakar",
      "GmtOffset": 0,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 14.687,
      "Longitude": -17.452,
      "Elevation": {
        "Metric": {
          "Value": 11,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 36,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "MinuteCast",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "315078",
    "Type": "City",
    "Rank": 20,
    "LocalizedName": "Тайбэй",
    "EnglishName": "Taipei City",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "TW",
      "LocalizedName": "Тайвань",
      "EnglishName": "Taiwan"
    },
    "AdministrativeArea": {
      "ID": "TPE",
      "LocalizedName": "Тайбэй",
      "EnglishName": "Taipei City",
      "Level": 1,
      "LocalizedType": "Особый муниципалитет",
      "EnglishType": "Special Municipality",
      "CountryID": "TW"
    },
    "TimeZone": {
      "Code": "CST",
      "Name": "Asia/Taipei",
      "GmtOffset": 8,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 25.048,
      "Longitude": 121.514,
      "Elevation": {
        "Metric": {
          "Value": 8,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 26,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQuality",
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "PremiumAirQuality",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "306633",
    "Type": "City",
    "Rank": 20,
    "LocalizedName": "Кейптаун",
    "EnglishName": "Cape Town",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "AFR",
      "LocalizedName": "Африка",
      "EnglishName": "Africa"
    },
    "Country": {
      "ID": "ZA",
      "LocalizedName": "ЮАР",
      "EnglishName": "South Africa"
    },
    "AdministrativeArea": {
      "ID": "WC",
      "LocalizedName": "Западно-Капская провинция",
      "EnglishName": "Western Cape",
      "Level": 1,
      "LocalizedType": "Провинция",
      "EnglishType": "Province",
      "CountryID": "ZA"
    },
    "TimeZone": {
      "Code": "SAST",
      "Name": "Africa/Johannesburg",
      "GmtOffset": 2,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": -33.979,
      "Longitude": 18.482,
      "Elevation": {
        "Metric": {
          "Value": 15,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 49,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "City Of Cape Town",
        "EnglishName": "City Of Cape Town"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "MinuteCast",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "45881",
    "Type": "City",
    "Rank": 21,
    "LocalizedName": "Сан-паулу",
    "EnglishName": "São Paulo",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "SAM",
      "LocalizedName": "Южная Америка",
      "EnglishName": "South America"
    },
    "Country": {
      "ID": "BR",
      "LocalizedName": "Бразилия",
      "EnglishName": "Brazil"
    },
    "AdministrativeArea": {
      "ID": "SP",
      "LocalizedName": "Сан-Паулу",
      "EnglishName": "São Paulo",
      "Level": 1,
      "LocalizedType": "Штат",
      "EnglishType": "State",
      "CountryID": "BR"
    },
    "TimeZone": {
      "Code": "BRT",
      "Name": "America/Sao_Paulo",
      "GmtOffset": -3,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": -23.567,
      "Longitude": -46.57,
      "Elevation": {
        "Metric": {
          "Value": 662,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 2171,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Сан-Паулу",
        "EnglishName": "São Paulo"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "55488",
    "Type": "City",
    "Rank": 21,
    "LocalizedName": "Торонто",
    "EnglishName": "Toronto",
    "PrimaryPostalCode": "M5H",
    "Region": {
      "ID": "NAM",
      "LocalizedName": "Северная Америка",
      "EnglishName": "North America"
    },
    "Country": {
      "ID": "CA",
      "LocalizedName": "Канада",
      "EnglishName": "Canada"
    },
    "AdministrativeArea": {
      "ID": "ON",
      "LocalizedName": "Онтарио",
      "EnglishName": "Ontario",
      "Level": 1,
      "LocalizedType": "Провинция",
      "EnglishType": "Province",
      "CountryID": "CA"
    },
    "TimeZone": {
      "Code": "EDT",
      "Name": "America/Toronto",
      "GmtOffset": -4,
      "IsDaylightSaving": true,
      "NextOffsetChange": "2025-11-02T06:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 43.649,
      "Longitude": -79.38,
      "Elevation": {
        "Metric": {
          "Value": 81,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 265,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Toronto",
        "EnglishName": "Toronto"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "225007",
    "Type": "City",
    "Rank": 21,
    "LocalizedName": "Осака",
    "EnglishName": "Osaka-shi",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ASI",
      "LocalizedName": "Азия",
      "EnglishName": "Asia"
    },
    "Country": {
      "ID": "JP",
      "LocalizedName": "Япония",
      "EnglishName": "Japan"
    },
    "AdministrativeArea": {
      "ID": "27",
      "LocalizedName": "Осака",
      "EnglishName": "Osaka",
      "Level": 1,
      "LocalizedType": "Префектура",
      "EnglishType": "Prefecture",
      "CountryID": "JP"
    },
    "TimeZone": {
      "Code": "JST",
      "Name": "Asia/Tokyo",
      "GmtOffset": 9,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 34.667,
      "Longitude": 135.5,
      "Elevation": {
        "Metric": {
          "Value": 4,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 13,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "213225",
    "Type": "City",
    "Rank": 30,
    "LocalizedName": "Иерусалим",
    "EnglishName": "Jerusalem",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "MEA",
      "LocalizedName": "Средний Восток",
      "EnglishName": "Middle East"
    },
    "Country": {
      "ID": "IL",
      "LocalizedName": "Израиль",
      "EnglishName": "Israel"
    },
    "AdministrativeArea": {
      "ID": "JM",
      "LocalizedName": "Иерусалимский округ",
      "EnglishName": "Jerusalem",
      "Level": 1,
      "LocalizedType": "Округ",
      "EnglishType": "District",
      "CountryID": "IL"
    },
    "TimeZone": {
      "Code": "IDT",
      "Name": "Asia/Jerusalem",
      "GmtOffset": 3,
      "IsDaylightSaving": true,
      "NextOffsetChange": "2025-10-25T23:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 31.774,
      "Longitude": 35.225,
      "Elevation": {
        "Metric": {
          "Value": 804,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 2637,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast"
    ]
  },
  {
    "Version": 1,
    "Key": "249758",
    "Type": "City",
    "Rank": 30,
    "LocalizedName": "Амстердам",
    "EnglishName": "Amsterdam",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "EUR",
      "LocalizedName": "Европа",
      "EnglishName": "Europe"
    },
    "Country": {
      "ID": "NL",
      "LocalizedName": "Нидерланды",
      "EnglishName": "Netherlands"
    },
    "AdministrativeArea": {
      "ID": "NH",
      "LocalizedName": "Северная Голландия",
      "EnglishName": "North Holland",
      "Level": 1,
      "LocalizedType": "Провинция",
      "EnglishType": "Province",
      "CountryID": "NL"
    },
    "TimeZone": {
      "Code": "CET",
      "Name": "Europe/Amsterdam",
      "GmtOffset": 1,
      "IsDaylightSaving": false,
      "NextOffsetChange": "2025-03-30T01:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 52.372,
      "Longitude": 4.9,
      "Elevation": {
        "Metric": {
          "Value": -1,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": -3,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "314929",
    "Type": "City",
    "Rank": 30,
    "LocalizedName": "Стокгольм",
    "EnglishName": "Stockholm",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "EUR",
      "LocalizedName": "Европа",
      "EnglishName": "Europe"
    },
    "Country": {
      "ID": "SE",
      "LocalizedName": "Швеция",
      "EnglishName": "Sweden"
    },
    "AdministrativeArea": {
      "ID": "AB",
      "LocalizedName": "Стокгольм",
      "EnglishName": "Stockholm",
      "Level": 1,
      "LocalizedType": "Графство",
      "EnglishType": "County",
      "CountryID": "SE"
    },
    "TimeZone": {
      "Code": "CET",
      "Name": "Europe/Stockholm",
      "GmtOffset": 1,
      "IsDaylightSaving": false,
      "NextOffsetChange": "2025-03-30T01:00:00Z"
    },
    "GeoPosition": {
      "Latitude": 59.314,
      "Longitude": 18.069,
      "Elevation": {
        "Metric": {
          "Value": 39,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 127,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "ForecastConfidence",
      "FutureRadar",
      "MinuteCast",
      "Radar"
    ]
  },
  {
    "Version": 1,
    "Key": "348211",
    "Type": "City",
    "Rank": 31,
    "LocalizedName": "Гонолулу",
    "EnglishName": "Honolulu",
    "PrimaryPostalCode": "96817",
    "Region": {
      "ID": "NAM",
      "LocalizedName": "Северная Америка",
      "EnglishName": "North America"
    },
    "Country": {
      "ID": "US",
      "LocalizedName": "США",
      "EnglishName": "United States"
    },
    "AdministrativeArea": {
      "ID": "HI",
      "LocalizedName": "Гавайи",
      "EnglishName": "Hawaii",
      "Level": 1,
      "LocalizedType": "Штат",
      "EnglishType": "State",
      "CountryID": "US"
    },
    "TimeZone": {
      "Code": "HST",
      "Name": "Pacific/Honolulu",
      "GmtOffset": -10,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 21.326,
      "Longitude": -157.845,
      "Elevation": {
        "Metric": {
          "Value": 112,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 367,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [
      {
        "Level": 2,
        "LocalizedName": "Гонолулу",
        "EnglishName": "Honolulu"
      }
    ],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "ProximityNotification-Lightning",
      "Radar",
      "TidalForecast"
    ]
  },
  {
    "Version": 1,
    "Key": "190390",
    "Type": "City",
    "Rank": 40,
    "LocalizedName": "Рейкьявик",
    "EnglishName": "Reykjavik",
    "PrimaryPostalCode": "",
    "Region": {
      "ID": "ARC",
      "LocalizedName": "Арктика",
      "EnglishName": "Arctic"
    },
    "Country": {
      "ID": "IS",
      "LocalizedName": "Исландия",
      "EnglishName": "Iceland"
    },
    "AdministrativeArea": {
      "ID": "1",
      "LocalizedName": "Хёвюдборгарсвайдид",
      "EnglishName": "Greater Reykjavik",
      "Level": 1,
      "LocalizedType": "Регион",
      "EnglishType": "Region",
      "CountryID": "IS"
    },
    "TimeZone": {
      "Code": "GMT",
      "Name": "Atlantic/Reykjavik",
      "GmtOffset": 0,
      "IsDaylightSaving": false,
      "NextOffsetChange": null
    },
    "GeoPosition": {
      "Latitude": 64.137,
      "Longitude": -21.902,
      "Elevation": {
        "Metric": {
          "Value": 36,
          "Unit": "m",
          "UnitType": 5
        },
        "Imperial": {
          "Value": 118,
          "Unit": "ft",
          "UnitType": 0
        }
      }
    },
    "IsAlias": false,
    "SupplementalAdminAreas": [],
    "DataSets": [
      "AirQualityCurrentConditions",
      "AirQualityForecasts",
      "Alerts",
      "DailyPollenForecast",
      "FutureRadar",
      "MinuteCast",
      "Radar",
      "TidalForecast"
    ]
  }
]""";
