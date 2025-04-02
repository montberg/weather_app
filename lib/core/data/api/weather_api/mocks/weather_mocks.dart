// ignore_for_file: constant_identifier_names

const mock_currentconditions_response = """[
  {
    "LocalObservationDateTime": "2025-04-01T08:36:00+03:00",
    "EpochTime": 1743485760,
    "WeatherText": "Солнечно",
    "WeatherIcon": 1,
    "HasPrecipitation": false,
    "PrecipitationType": null,
    "IsDayTime": true,
    "Temperature": {
      "Metric": {
        "Value": 8.9,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 48,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "RealFeelTemperature": {
      "Metric": {
        "Value": 8.6,
        "Unit": "C",
        "UnitType": 17,
        "Phrase": "Зябко"
      },
      "Imperial": {
        "Value": 47,
        "Unit": "F",
        "UnitType": 18,
        "Phrase": "Зябко"
      }
    },
    "RealFeelTemperatureShade": {
      "Metric": {
        "Value": 6.4,
        "Unit": "C",
        "UnitType": 17,
        "Phrase": "Зябко"
      },
      "Imperial": {
        "Value": 43,
        "Unit": "F",
        "UnitType": 18,
        "Phrase": "Зябко"
      }
    },
    "RelativeHumidity": 49,
    "IndoorRelativeHumidity": 39,
    "DewPoint": {
      "Metric": {
        "Value": -1.1,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 30,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "Wind": {
      "Direction": {
        "Degrees": 45,
        "Localized": "СВ",
        "English": "NE"
      },
      "Speed": {
        "Metric": {
          "Value": 13,
          "Unit": "km/h",
          "UnitType": 7
        },
        "Imperial": {
          "Value": 8.1,
          "Unit": "mi/h",
          "UnitType": 9
        }
      }
    },
    "WindGust": {
      "Speed": {
        "Metric": {
          "Value": 13,
          "Unit": "km/h",
          "UnitType": 7
        },
        "Imperial": {
          "Value": 8.1,
          "Unit": "mi/h",
          "UnitType": 9
        }
      }
    },
    "UVIndex": 2,
    "UVIndexText": "Низк.",
    "Visibility": {
      "Metric": {
        "Value": 16.1,
        "Unit": "km",
        "UnitType": 6
      },
      "Imperial": {
        "Value": 10,
        "Unit": "mi",
        "UnitType": 2
      }
    },
    "ObstructionsToVisibility": "",
    "CloudCover": 0,
    "Ceiling": {
      "Metric": {
        "Value": 12192,
        "Unit": "m",
        "UnitType": 5
      },
      "Imperial": {
        "Value": 40000,
        "Unit": "ft",
        "UnitType": 0
      }
    },
    "Pressure": {
      "Metric": {
        "Value": 1019,
        "Unit": "mb",
        "UnitType": 14
      },
      "Imperial": {
        "Value": 30.09,
        "Unit": "inHg",
        "UnitType": 12
      }
    },
    "PressureTendency": {
      "LocalizedText": "Постоянное",
      "Code": "S"
    },
    "Past24HourTemperatureDeparture": {
      "Metric": {
        "Value": 3.9,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 7,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "ApparentTemperature": {
      "Metric": {
        "Value": 9.4,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 49,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "WindChillTemperature": {
      "Metric": {
        "Value": 6.7,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 44,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "WetBulbTemperature": {
      "Metric": {
        "Value": 4.5,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 40,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "WetBulbGlobeTemperature": {
      "Metric": {
        "Value": 8.9,
        "Unit": "C",
        "UnitType": 17
      },
      "Imperial": {
        "Value": 48,
        "Unit": "F",
        "UnitType": 18
      }
    },
    "Precip1hr": {
      "Metric": {
        "Value": 0,
        "Unit": "mm",
        "UnitType": 3
      },
      "Imperial": {
        "Value": 0,
        "Unit": "in",
        "UnitType": 1
      }
    },
    "PrecipitationSummary": {
      "Precipitation": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "PastHour": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past3Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past6Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past9Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past12Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past18Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      },
      "Past24Hours": {
        "Metric": {
          "Value": 0,
          "Unit": "mm",
          "UnitType": 3
        },
        "Imperial": {
          "Value": 0,
          "Unit": "in",
          "UnitType": 1
        }
      }
    },
    "TemperatureSummary": {
      "Past6HourRange": {
        "Minimum": {
          "Metric": {
            "Value": 7.2,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 45,
            "Unit": "F",
            "UnitType": 18
          }
        },
        "Maximum": {
          "Metric": {
            "Value": 8.9,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 48,
            "Unit": "F",
            "UnitType": 18
          }
        }
      },
      "Past12HourRange": {
        "Minimum": {
          "Metric": {
            "Value": 7.2,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 45,
            "Unit": "F",
            "UnitType": 18
          }
        },
        "Maximum": {
          "Metric": {
            "Value": 11.1,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 52,
            "Unit": "F",
            "UnitType": 18
          }
        }
      },
      "Past24HourRange": {
        "Minimum": {
          "Metric": {
            "Value": 5,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 41,
            "Unit": "F",
            "UnitType": 18
          }
        },
        "Maximum": {
          "Metric": {
            "Value": 15,
            "Unit": "C",
            "UnitType": 17
          },
          "Imperial": {
            "Value": 59,
            "Unit": "F",
            "UnitType": 18
          }
        }
      }
    },
    "MobileLink": "http://www.accuweather.com/ru/ru/moscow/294021/current-weather/294021",
    "Link": "http://www.accuweather.com/ru/ru/moscow/294021/current-weather/294021"
  }
]""";

const mock_forecast_response = """{
  "Headline": {
    "EffectiveDate": "2025-03-30T07:00:00+03:00",
    "EffectiveEpochDate": 1743307200,
    "Severity": 4,
    "Text": "Умеренно тепло Воскресенье",
    "Category": "mild",
    "EndDate": null,
    "EndEpochDate": null,
    "MobileLink": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?unit=c",
    "Link": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?unit=c"
  },
  "DailyForecasts": [
    {
      "Date": "2025-03-29T07:00:00+03:00",
      "EpochDate": 1743220800,
      "Temperature": {
        "Minimum": {
          "Value": 0.7,
          "Unit": "C",
          "UnitType": 17
        },
        "Maximum": {
          "Value": 12.8,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "Day": {
        "Icon": 5,
        "IconPhrase": "Солнечно, дымка",
        "HasPrecipitation": false
      },
      "Night": {
        "Icon": 36,
        "IconPhrase": "Переменная облачность",
        "HasPrecipitation": false
      },
      "Sources": [
        "AccuWeather"
      ],
      "MobileLink": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?day=1&unit=c",
      "Link": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?day=1&unit=c"
    },
    {
      "Date": "2025-03-30T07:00:00+03:00",
      "EpochDate": 1743307200,
      "Temperature": {
        "Minimum": {
          "Value": 2.9,
          "Unit": "C",
          "UnitType": 17
        },
        "Maximum": {
          "Value": 12.5,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "Day": {
        "Icon": 4,
        "IconPhrase": "Переменная облачность",
        "HasPrecipitation": false
      },
      "Night": {
        "Icon": 38,
        "IconPhrase": "Преимущественно облачно",
        "HasPrecipitation": false
      },
      "Sources": [
        "AccuWeather"
      ],
      "MobileLink": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?day=2&unit=c",
      "Link": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?day=2&unit=c"
    },
    {
      "Date": "2025-03-31T07:00:00+03:00",
      "EpochDate": 1743393600,
      "Temperature": {
        "Minimum": {
          "Value": 2.6,
          "Unit": "C",
          "UnitType": 17
        },
        "Maximum": {
          "Value": 14,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "Day": {
        "Icon": 6,
        "IconPhrase": "Преимущественно облачно",
        "HasPrecipitation": false
      },
      "Night": {
        "Icon": 7,
        "IconPhrase": "Облачно",
        "HasPrecipitation": false
      },
      "Sources": [
        "AccuWeather"
      ],
      "MobileLink": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?day=3&unit=c",
      "Link": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?day=3&unit=c"
    },
    {
      "Date": "2025-04-01T07:00:00+03:00",
      "EpochDate": 1743480000,
      "Temperature": {
        "Minimum": {
          "Value": 3.5,
          "Unit": "C",
          "UnitType": 17
        },
        "Maximum": {
          "Value": 12.9,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "Day": {
        "Icon": 7,
        "IconPhrase": "Облачно",
        "HasPrecipitation": false
      },
      "Night": {
        "Icon": 7,
        "IconPhrase": "Облачно",
        "HasPrecipitation": false
      },
      "Sources": [
        "AccuWeather"
      ],
      "MobileLink": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?day=4&unit=c",
      "Link": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?day=4&unit=c"
    },
    {
      "Date": "2025-04-02T07:00:00+03:00",
      "EpochDate": 1743566400,
      "Temperature": {
        "Minimum": {
          "Value": 1.2,
          "Unit": "C",
          "UnitType": 17
        },
        "Maximum": {
          "Value": 9,
          "Unit": "C",
          "UnitType": 17
        }
      },
      "Day": {
        "Icon": 7,
        "IconPhrase": "Облачно",
        "HasPrecipitation": false
      },
      "Night": {
        "Icon": 12,
        "IconPhrase": "Ливни",
        "HasPrecipitation": true,
        "PrecipitationType": "Rain",
        "PrecipitationIntensity": "Light"
      },
      "Sources": [
        "AccuWeather"
      ],
      "MobileLink": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?day=5&unit=c",
      "Link": "http://www.accuweather.com/ru/ru/moscow/294021/daily-weather-forecast/294021?day=5&unit=c"
    }
  ]
}""";
