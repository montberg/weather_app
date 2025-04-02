// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) =>
    ForecastResponse(
      headline: Headline.fromJson(json['Headline'] as Map<String, dynamic>),
      dailyForecasts: (json['DailyForecasts'] as List<dynamic>)
          .map((e) => DailyForecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ForecastResponseToJson(ForecastResponse instance) =>
    <String, dynamic>{
      'Headline': instance.headline,
      'DailyForecasts': instance.dailyForecasts,
    };

Headline _$HeadlineFromJson(Map<String, dynamic> json) => Headline(
      effectiveDate: json['EffectiveDate'] as String,
      effectiveEpochDate: (json['EffectiveEpochDate'] as num).toInt(),
      severity: (json['Severity'] as num).toInt(),
      text: json['Text'] as String,
      category: json['Category'] as String,
      endDate: json['EndDate'] as String?,
      endEpochDate: (json['EndEpochDate'] as num?)?.toInt(),
      mobileLink: json['MobileLink'] as String,
      link: json['Link'] as String,
    );

Map<String, dynamic> _$HeadlineToJson(Headline instance) => <String, dynamic>{
      'EffectiveDate': instance.effectiveDate,
      'EffectiveEpochDate': instance.effectiveEpochDate,
      'Severity': instance.severity,
      'Text': instance.text,
      'Category': instance.category,
      'EndDate': instance.endDate,
      'EndEpochDate': instance.endEpochDate,
      'MobileLink': instance.mobileLink,
      'Link': instance.link,
    };

DailyForecast _$DailyForecastFromJson(Map<String, dynamic> json) =>
    DailyForecast(
      date: _dateFromJson(json['Date'] as String),
      epochDate: (json['EpochDate'] as num).toInt(),
      temperature: TemperatureMaxMin.fromJson(
          json['Temperature'] as Map<String, dynamic>),
      day: DayNight.fromJson(json['Day'] as Map<String, dynamic>),
      night: DayNight.fromJson(json['Night'] as Map<String, dynamic>),
      sources:
          (json['Sources'] as List<dynamic>).map((e) => e as String).toList(),
      mobileLink: json['MobileLink'] as String,
      link: json['Link'] as String,
    );

Map<String, dynamic> _$DailyForecastToJson(DailyForecast instance) =>
    <String, dynamic>{
      'Date': instance.date.toIso8601String(),
      'EpochDate': instance.epochDate,
      'Temperature': instance.temperature,
      'Day': instance.day,
      'Night': instance.night,
      'Sources': instance.sources,
      'MobileLink': instance.mobileLink,
      'Link': instance.link,
    };

TemperatureMaxMin _$TemperatureMaxMinFromJson(Map<String, dynamic> json) =>
    TemperatureMaxMin(
      minimum: UnitValue.fromJson(json['Minimum'] as Map<String, dynamic>),
      maximum: UnitValue.fromJson(json['Maximum'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TemperatureMaxMinToJson(TemperatureMaxMin instance) =>
    <String, dynamic>{
      'Minimum': instance.minimum,
      'Maximum': instance.maximum,
    };

DayNight _$DayNightFromJson(Map<String, dynamic> json) => DayNight(
      icon: (json['Icon'] as num).toInt(),
      iconPhrase: json['IconPhrase'] as String,
      hasPrecipitation: json['HasPrecipitation'] as bool,
      precipitationType: json['PrecipitationType'] as String?,
      precipitationIntensity: json['PrecipitationIntensity'] as String?,
    );

Map<String, dynamic> _$DayNightToJson(DayNight instance) => <String, dynamic>{
      'Icon': instance.icon,
      'IconPhrase': instance.iconPhrase,
      'HasPrecipitation': instance.hasPrecipitation,
      'PrecipitationType': instance.precipitationType,
      'PrecipitationIntensity': instance.precipitationIntensity,
    };
