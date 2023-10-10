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


/** This is an auto generated class representing the Categoria type in your schema. */
@immutable
class Categoria extends Model {
  static const classType = const _CategoriaModelType();
  final String id;
  final String? _id_categoria;
  final String? _nombre;
  final String? _descripcion;
  final List<Negocio>? _negocios;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CategoriaModelIdentifier get modelIdentifier {
      return CategoriaModelIdentifier(
        id: id
      );
  }
  
  String get id_categoria {
    try {
      return _id_categoria!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  String get descripcion {
    try {
      return _descripcion!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<Negocio>? get negocios {
    return _negocios;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Categoria._internal({required this.id, required id_categoria, required nombre, required descripcion, negocios, createdAt, updatedAt}): _id_categoria = id_categoria, _nombre = nombre, _descripcion = descripcion, _negocios = negocios, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Categoria({String? id, required String id_categoria, required String nombre, required String descripcion, List<Negocio>? negocios}) {
    return Categoria._internal(
      id: id == null ? UUID.getUUID() : id,
      id_categoria: id_categoria,
      nombre: nombre,
      descripcion: descripcion,
      negocios: negocios != null ? List<Negocio>.unmodifiable(negocios) : negocios);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Categoria &&
      id == other.id &&
      _id_categoria == other._id_categoria &&
      _nombre == other._nombre &&
      _descripcion == other._descripcion &&
      DeepCollectionEquality().equals(_negocios, other._negocios);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Categoria {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("id_categoria=" + "$_id_categoria" + ", ");
    buffer.write("nombre=" + "$_nombre" + ", ");
    buffer.write("descripcion=" + "$_descripcion" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Categoria copyWith({String? id_categoria, String? nombre, String? descripcion, List<Negocio>? negocios}) {
    return Categoria._internal(
      id: id,
      id_categoria: id_categoria ?? this.id_categoria,
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      negocios: negocios ?? this.negocios);
  }
  
  Categoria.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _id_categoria = json['id_categoria'],
      _nombre = json['nombre'],
      _descripcion = json['descripcion'],
      _negocios = json['negocios'] is List
        ? (json['negocios'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Negocio.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'id_categoria': _id_categoria, 'nombre': _nombre, 'descripcion': _descripcion, 'negocios': _negocios?.map((Negocio? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'id_categoria': _id_categoria, 'nombre': _nombre, 'descripcion': _descripcion, 'negocios': _negocios, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<CategoriaModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<CategoriaModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField ID_CATEGORIA = QueryField(fieldName: "id_categoria");
  static final QueryField NOMBRE = QueryField(fieldName: "nombre");
  static final QueryField DESCRIPCION = QueryField(fieldName: "descripcion");
  static final QueryField NEGOCIOS = QueryField(
    fieldName: "negocios",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Negocio'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Categoria";
    modelSchemaDefinition.pluralName = "Categorias";
    
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
          ModelOperation.CREATE,
          ModelOperation.UPDATE,
          ModelOperation.DELETE
        ])
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Categoria.ID_CATEGORIA,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Categoria.NOMBRE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Categoria.DESCRIPCION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Categoria.NEGOCIOS,
      isRequired: false,
      ofModelName: 'Negocio',
      associatedKey: Negocio.CATEGORIA
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

class _CategoriaModelType extends ModelType<Categoria> {
  const _CategoriaModelType();
  
  @override
  Categoria fromJson(Map<String, dynamic> jsonData) {
    return Categoria.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Categoria';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Categoria] in your schema.
 */
@immutable
class CategoriaModelIdentifier implements ModelIdentifier<Categoria> {
  final String id;

  /** Create an instance of CategoriaModelIdentifier using [id] the primary key. */
  const CategoriaModelIdentifier({
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
  String toString() => 'CategoriaModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CategoriaModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}