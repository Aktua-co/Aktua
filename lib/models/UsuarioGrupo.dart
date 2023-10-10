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
import 'package:flutter/foundation.dart';


/** This is an auto generated class representing the UsuarioGrupo type in your schema. */
@immutable
class UsuarioGrupo extends Model {
  static const classType = const _UsuarioGrupoModelType();
  final String id;
  final Usuario? _usuario;
  final Grupo? _grupo;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UsuarioGrupoModelIdentifier get modelIdentifier {
      return UsuarioGrupoModelIdentifier(
        id: id
      );
  }
  
  Usuario? get usuario {
    return _usuario;
  }
  
  Grupo? get grupo {
    return _grupo;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const UsuarioGrupo._internal({required this.id, usuario, grupo, createdAt, updatedAt}): _usuario = usuario, _grupo = grupo, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory UsuarioGrupo({String? id, Usuario? usuario, Grupo? grupo}) {
    return UsuarioGrupo._internal(
      id: id == null ? UUID.getUUID() : id,
      usuario: usuario,
      grupo: grupo);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuarioGrupo &&
      id == other.id &&
      _usuario == other._usuario &&
      _grupo == other._grupo;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("UsuarioGrupo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("usuario=" + (_usuario != null ? _usuario!.toString() : "null") + ", ");
    buffer.write("grupo=" + (_grupo != null ? _grupo!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  UsuarioGrupo copyWith({Usuario? usuario, Grupo? grupo}) {
    return UsuarioGrupo._internal(
      id: id,
      usuario: usuario ?? this.usuario,
      grupo: grupo ?? this.grupo);
  }
  
  UsuarioGrupo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _usuario = json['usuario']?['serializedData'] != null
        ? Usuario.fromJson(new Map<String, dynamic>.from(json['usuario']['serializedData']))
        : null,
      _grupo = json['grupo']?['serializedData'] != null
        ? Grupo.fromJson(new Map<String, dynamic>.from(json['grupo']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'usuario': _usuario?.toJson(), 'grupo': _grupo?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'usuario': _usuario, 'grupo': _grupo, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<UsuarioGrupoModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<UsuarioGrupoModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField USUARIO = QueryField(
    fieldName: "usuario",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final QueryField GRUPO = QueryField(
    fieldName: "grupo",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Grupo'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "UsuarioGrupo";
    modelSchemaDefinition.pluralName = "UsuarioGrupos";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE,
          ModelOperation.READ
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["usuarioID"], name: "byUsuario"),
      ModelIndex(fields: const ["grupoID"], name: "byGrupo")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: UsuarioGrupo.USUARIO,
      isRequired: false,
      targetNames: ['usuarioID'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: UsuarioGrupo.GRUPO,
      isRequired: false,
      targetNames: ['grupoID'],
      ofModelName: 'Grupo'
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

class _UsuarioGrupoModelType extends ModelType<UsuarioGrupo> {
  const _UsuarioGrupoModelType();
  
  @override
  UsuarioGrupo fromJson(Map<String, dynamic> jsonData) {
    return UsuarioGrupo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'UsuarioGrupo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [UsuarioGrupo] in your schema.
 */
@immutable
class UsuarioGrupoModelIdentifier implements ModelIdentifier<UsuarioGrupo> {
  final String id;

  /** Create an instance of UsuarioGrupoModelIdentifier using [id] the primary key. */
  const UsuarioGrupoModelIdentifier({
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
  String toString() => 'UsuarioGrupoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UsuarioGrupoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}