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
import 'package:amplify_core/amplify_core.dart' as amplify_core;


/** This is an auto generated class representing the GrupoInteres type in your schema. */
class GrupoInteres extends amplify_core.Model {
  static const classType = const _GrupoInteresModelType();
  final String id;
  final Grupo? _grupo;
  final Interes? _interes;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  GrupoInteresModelIdentifier get modelIdentifier {
      return GrupoInteresModelIdentifier(
        id: id
      );
  }
  
  Grupo? get grupo {
    return _grupo;
  }
  
  Interes? get interes {
    return _interes;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const GrupoInteres._internal({required this.id, grupo, interes, createdAt, updatedAt}): _grupo = grupo, _interes = interes, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory GrupoInteres({String? id, Grupo? grupo, Interes? interes}) {
    return GrupoInteres._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      grupo: grupo,
      interes: interes);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GrupoInteres &&
      id == other.id &&
      _grupo == other._grupo &&
      _interes == other._interes;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("GrupoInteres {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("grupo=" + (_grupo != null ? _grupo!.toString() : "null") + ", ");
    buffer.write("interes=" + (_interes != null ? _interes!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  GrupoInteres copyWith({Grupo? grupo, Interes? interes}) {
    return GrupoInteres._internal(
      id: id,
      grupo: grupo ?? this.grupo,
      interes: interes ?? this.interes);
  }
  
  GrupoInteres copyWithModelFieldValues({
    ModelFieldValue<Grupo?>? grupo,
    ModelFieldValue<Interes?>? interes
  }) {
    return GrupoInteres._internal(
      id: id,
      grupo: grupo == null ? this.grupo : grupo.value,
      interes: interes == null ? this.interes : interes.value
    );
  }
  
  GrupoInteres.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _grupo = json['grupo']?['serializedData'] != null
        ? Grupo.fromJson(new Map<String, dynamic>.from(json['grupo']['serializedData']))
        : null,
      _interes = json['interes']?['serializedData'] != null
        ? Interes.fromJson(new Map<String, dynamic>.from(json['interes']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'grupo': _grupo?.toJson(), 'interes': _interes?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'grupo': _grupo,
    'interes': _interes,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<GrupoInteresModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<GrupoInteresModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final GRUPO = amplify_core.QueryField(
    fieldName: "grupo",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Grupo'));
  static final INTERES = amplify_core.QueryField(
    fieldName: "interes",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Interes'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "GrupoInteres";
    modelSchemaDefinition.pluralName = "GrupoInteres";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE,
          amplify_core.ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["grupoID"], name: "byGrupo"),
      amplify_core.ModelIndex(fields: const ["interesID"], name: "byInteres")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: GrupoInteres.GRUPO,
      isRequired: false,
      targetNames: ['grupoID'],
      ofModelName: 'Grupo'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: GrupoInteres.INTERES,
      isRequired: false,
      targetNames: ['interesID'],
      ofModelName: 'Interes'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'createdAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.nonQueryField(
      fieldName: 'updatedAt',
      isRequired: false,
      isReadOnly: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
  });
}

class _GrupoInteresModelType extends amplify_core.ModelType<GrupoInteres> {
  const _GrupoInteresModelType();
  
  @override
  GrupoInteres fromJson(Map<String, dynamic> jsonData) {
    return GrupoInteres.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'GrupoInteres';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [GrupoInteres] in your schema.
 */
class GrupoInteresModelIdentifier implements amplify_core.ModelIdentifier<GrupoInteres> {
  final String id;

  /** Create an instance of GrupoInteresModelIdentifier using [id] the primary key. */
  const GrupoInteresModelIdentifier({
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
  String toString() => 'GrupoInteresModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is GrupoInteresModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}