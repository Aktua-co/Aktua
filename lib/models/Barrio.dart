/*
* Copyright 2021 Amazon.com, Inc. or its affiliates. All Rights Reserved.
*
* Licensed under the Apache License, Version 2.0 (the "License").
* You may not use this file except in compliance with the License.
* A copy of the License is located at
*
*  http://aws.amazon.com/apache2.0
*
* or in the "license" file accompanying this file. This file is distributed
* on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
* express or implied. See the License for the specific language governing
* permissions and limitations under the License.
*/

// NOTE: This file is generated and may not follow lint rules defined in your app
// Generated files can be excluded from analysis in analysis_options.yaml
// For more info, see: https://dart.dev/guides/language/analysis-options#excluding-code-from-analysis

// ignore_for_file: public_member_api_docs, annotate_overrides, dead_code, dead_codepublic_member_api_docs, depend_on_referenced_packages, file_names, library_private_types_in_public_api, no_leading_underscores_for_library_prefixes, no_leading_underscores_for_local_identifiers, non_constant_identifier_names, null_check_on_nullable_type_parameter, prefer_adjacent_string_concatenation, prefer_const_constructors, prefer_if_null_operators, prefer_interpolation_to_compose_strings, slash_for_doc_comments, sort_child_properties_last, unnecessary_const, unnecessary_constructor_name, unnecessary_late, unnecessary_new, unnecessary_null_aware_assignments, unnecessary_nullable_for_final_variable_declarations, unnecessary_string_interpolations, use_build_context_synchronously

import 'ModelProvider.dart';
import 'package:amplify_core/amplify_core.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the Barrio type in your schema. */
@immutable
class Barrio extends Model {
  static const classType = const _BarrioModelType();
  final String id;
  final String? _nombre;
  final List<Usuario>? _vecinos;
  final List<Negocio>? _negocios;
  final TemporalDateTime? _creado_en;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  BarrioModelIdentifier get modelIdentifier {
      return BarrioModelIdentifier(
        id: id
      );
  }
  
  String get nombre {
    try {
      return _nombre!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Usuario>? get vecinos {
    return _vecinos;
  }
  
  List<Negocio>? get negocios {
    return _negocios;
  }
  
  TemporalDateTime get creado_en {
    try {
      return _creado_en!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Barrio._internal({required this.id, required nombre, vecinos, negocios, required creado_en, createdAt, updatedAt}): _nombre = nombre, _vecinos = vecinos, _negocios = negocios, _creado_en = creado_en, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Barrio({String? id, required String nombre, List<Usuario>? vecinos, List<Negocio>? negocios, required TemporalDateTime creado_en}) {
    return Barrio._internal(
      id: id == null ? UUID.getUUID() : id,
      nombre: nombre,
      vecinos: vecinos != null ? List<Usuario>.unmodifiable(vecinos) : vecinos,
      negocios: negocios != null ? List<Negocio>.unmodifiable(negocios) : negocios,
      creado_en: creado_en);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Barrio &&
      id == other.id &&
      _nombre == other._nombre &&
      DeepCollectionEquality().equals(_vecinos, other._vecinos) &&
      DeepCollectionEquality().equals(_negocios, other._negocios) &&
      _creado_en == other._creado_en;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Barrio {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("nombre=" + "$_nombre" + ", ");
    buffer.write("creado_en=" + (_creado_en != null ? _creado_en!.format() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Barrio copyWith({String? nombre, List<Usuario>? vecinos, List<Negocio>? negocios, TemporalDateTime? creado_en}) {
    return Barrio._internal(
      id: id,
      nombre: nombre ?? this.nombre,
      vecinos: vecinos ?? this.vecinos,
      negocios: negocios ?? this.negocios,
      creado_en: creado_en ?? this.creado_en);
  }
  
  Barrio.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _nombre = json['nombre'],
      _vecinos = json['vecinos'] is List
        ? (json['vecinos'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Usuario.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _negocios = json['negocios'] is List
        ? (json['negocios'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Negocio.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _creado_en = json['creado_en'] != null ? TemporalDateTime.fromString(json['creado_en']) : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'nombre': _nombre, 'vecinos': _vecinos?.map((Usuario? e) => e?.toJson()).toList(), 'negocios': _negocios?.map((Negocio? e) => e?.toJson()).toList(), 'creado_en': _creado_en?.format(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'nombre': _nombre, 'vecinos': _vecinos, 'negocios': _negocios, 'creado_en': _creado_en, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<BarrioModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<BarrioModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NOMBRE = QueryField(fieldName: "nombre");
  static final QueryField VECINOS = QueryField(
    fieldName: "vecinos",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final QueryField NEGOCIOS = QueryField(
    fieldName: "negocios",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Negocio'));
  static final QueryField CREADO_EN = QueryField(fieldName: "creado_en");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Barrio";
    modelSchemaDefinition.pluralName = "Barrios";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.READ
        ]),
      AuthRule(
        authStrategy: AuthStrategy.GROUPS,
        groupClaim: "cognito:groups",
        groups: [ "Admin" ],
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.READ,
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Barrio.NOMBRE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Barrio.VECINOS,
      isRequired: false,
      ofModelName: 'Usuario',
      associatedKey: Usuario.BARRIO
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Barrio.NEGOCIOS,
      isRequired: false,
      ofModelName: 'Negocio',
      associatedKey: Negocio.BARRIO
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Barrio.CREADO_EN,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _BarrioModelType extends ModelType<Barrio> {
  const _BarrioModelType();
  
  @override
  Barrio fromJson(Map<String, dynamic> jsonData) {
    return Barrio.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Barrio';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Barrio] in your schema.
 */
@immutable
class BarrioModelIdentifier implements ModelIdentifier<Barrio> {
  final String id;

  /** Create an instance of BarrioModelIdentifier using [id] the primary key. */
  const BarrioModelIdentifier({
    required this.id});
  
  @override
  Map<String, dynamic> serializeAsMap() => (<String, dynamic>{
    'id': id
  });
  
  @override
  List<Map<String, dynamic>> serializeAsList() => serializeAsMap()
    .entries
    .map((entry) => (<String, dynamic>{ entry.key: entry.value }))
    .toList();
  
  @override
  String serializeAsString() => serializeAsMap().values.join('#');
  
  @override
  String toString() => 'BarrioModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is BarrioModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}