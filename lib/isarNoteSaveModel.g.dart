// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isarNoteSaveModel.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters

extension GetSaveNoteCollection on Isar {
  IsarCollection<SaveNote> get saveNotes => this.collection();
}

const SaveNoteSchema = CollectionSchema(
  name: r'SaveNote',
  id: -3512893576335060693,
  properties: {
    r'englishName': PropertySchema(
      id: 0,
      name: r'englishName',
      type: IsarType.string,
    ),
    r'urduName': PropertySchema(
      id: 1,
      name: r'urduName',
      type: IsarType.string,
    ),
    r'url': PropertySchema(
      id: 2,
      name: r'url',
      type: IsarType.string,
    )
  },
  estimateSize: _saveNoteEstimateSize,
  serialize: _saveNoteSerialize,
  deserialize: _saveNoteDeserialize,
  deserializeProp: _saveNoteDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _saveNoteGetId,
  getLinks: _saveNoteGetLinks,
  attach: _saveNoteAttach,
  version: '3.0.5',
);

int _saveNoteEstimateSize(
  SaveNote object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.englishName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.urduName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.url;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _saveNoteSerialize(
  SaveNote object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.englishName);
  writer.writeString(offsets[1], object.urduName);
  writer.writeString(offsets[2], object.url);
}

SaveNote _saveNoteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SaveNote();
  object.englishName = reader.readStringOrNull(offsets[0]);
  object.urduName = reader.readStringOrNull(offsets[1]);
  object.url = reader.readStringOrNull(offsets[2]);
  return object;
}

P _saveNoteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _saveNoteGetId(SaveNote object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _saveNoteGetLinks(SaveNote object) {
  return [];
}

void _saveNoteAttach(IsarCollection<dynamic> col, Id id, SaveNote object) {}

extension SaveNoteQueryWhereSort on QueryBuilder<SaveNote, SaveNote, QWhere> {
  QueryBuilder<SaveNote, SaveNote, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension SaveNoteQueryWhere on QueryBuilder<SaveNote, SaveNote, QWhereClause> {
  QueryBuilder<SaveNote, SaveNote, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SaveNoteQueryFilter
    on QueryBuilder<SaveNote, SaveNote, QFilterCondition> {
  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> englishNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'englishName',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition>
      englishNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'englishName',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> englishNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition>
      englishNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> englishNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> englishNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'englishName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> englishNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> englishNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> englishNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'englishName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> englishNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'englishName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> englishNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'englishName',
        value: '',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition>
      englishNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'englishName',
        value: '',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'urduName',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'urduName',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urduName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'urduName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'urduName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'urduName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'urduName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'urduName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'urduName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'urduName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'urduName',
        value: '',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urduNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'urduName',
        value: '',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'url',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'url',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'url',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'url',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'url',
        value: '',
      ));
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterFilterCondition> urlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'url',
        value: '',
      ));
    });
  }
}

extension SaveNoteQueryObject
    on QueryBuilder<SaveNote, SaveNote, QFilterCondition> {}

extension SaveNoteQueryLinks
    on QueryBuilder<SaveNote, SaveNote, QFilterCondition> {}

extension SaveNoteQuerySortBy on QueryBuilder<SaveNote, SaveNote, QSortBy> {
  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> sortByEnglishName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.asc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> sortByEnglishNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.desc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> sortByUrduName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urduName', Sort.asc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> sortByUrduNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urduName', Sort.desc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> sortByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> sortByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension SaveNoteQuerySortThenBy
    on QueryBuilder<SaveNote, SaveNote, QSortThenBy> {
  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> thenByEnglishName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.asc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> thenByEnglishNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'englishName', Sort.desc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> thenByUrduName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urduName', Sort.asc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> thenByUrduNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'urduName', Sort.desc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> thenByUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.asc);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QAfterSortBy> thenByUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'url', Sort.desc);
    });
  }
}

extension SaveNoteQueryWhereDistinct
    on QueryBuilder<SaveNote, SaveNote, QDistinct> {
  QueryBuilder<SaveNote, SaveNote, QDistinct> distinctByEnglishName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'englishName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QDistinct> distinctByUrduName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'urduName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<SaveNote, SaveNote, QDistinct> distinctByUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'url', caseSensitive: caseSensitive);
    });
  }
}

extension SaveNoteQueryProperty
    on QueryBuilder<SaveNote, SaveNote, QQueryProperty> {
  QueryBuilder<SaveNote, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<SaveNote, String?, QQueryOperations> englishNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'englishName');
    });
  }

  QueryBuilder<SaveNote, String?, QQueryOperations> urduNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'urduName');
    });
  }

  QueryBuilder<SaveNote, String?, QQueryOperations> urlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'url');
    });
  }
}
