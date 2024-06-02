import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum MatchRequestDtoObjective {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('INTENSE')
  intense('INTENSE'),
  @JsonValue('FUN')
  fun('FUN'),
  @JsonValue('ANY')
  any('ANY');

  final String? value;

  const MatchRequestDtoObjective(this.value);
}

enum MatchResponseDtoObjective {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('INTENSE')
  intense('INTENSE'),
  @JsonValue('FUN')
  fun('FUN'),
  @JsonValue('ANY')
  any('ANY');

  final String? value;

  const MatchResponseDtoObjective(this.value);
}

enum FeedbackReqDtoFeedback {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NOTSELECTED')
  notselected('NOTSELECTED'),
  @JsonValue('LIKE')
  like('LIKE'),
  @JsonValue('DISLIKE')
  dislike('DISLIKE');

  final String? value;

  const FeedbackReqDtoFeedback(this.value);
}

enum GameCreationDtoGameStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PREGAME')
  pregame('PREGAME'),
  @JsonValue('INPLAY')
  inplay('INPLAY'),
  @JsonValue('POSTGAME')
  postgame('POSTGAME');

  final String? value;

  const GameCreationDtoGameStatus(this.value);
}

enum BusinessInfoResDtoRegistrationStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('PRE_APPROVAL')
  preApproval('PRE_APPROVAL'),
  @JsonValue('APPROVED')
  approved('APPROVED');

  final String? value;

  const BusinessInfoResDtoRegistrationStatus(this.value);
}

enum CourtHoursDtoDayOfWeek {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('MONDAY')
  monday('MONDAY'),
  @JsonValue('TUESDAY')
  tuesday('TUESDAY'),
  @JsonValue('WEDNESDAY')
  wednesday('WEDNESDAY'),
  @JsonValue('THURSDAY')
  thursday('THURSDAY'),
  @JsonValue('FRIDAY')
  friday('FRIDAY'),
  @JsonValue('SATURDAY')
  saturday('SATURDAY'),
  @JsonValue('SUNDAY')
  sunday('SUNDAY');

  final String? value;

  const CourtHoursDtoDayOfWeek(this.value);
}

enum CourtReqDtoCourtType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('HARD')
  hard('HARD'),
  @JsonValue('CLAY')
  clay('CLAY'),
  @JsonValue('GRASS')
  grass('GRASS');

  final String? value;

  const CourtReqDtoCourtType(this.value);
}

enum CourtResDtoCourtType {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('HARD')
  hard('HARD'),
  @JsonValue('CLAY')
  clay('CLAY'),
  @JsonValue('GRASS')
  grass('GRASS');

  final String? value;

  const CourtResDtoCourtType(this.value);
}

enum MatchResultResDtoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NOTSELECTED')
  notselected('NOTSELECTED'),
  @JsonValue('LIKE')
  like('LIKE'),
  @JsonValue('DISLIKE')
  dislike('DISLIKE');

  final String? value;

  const MatchResultResDtoStatus(this.value);
}
