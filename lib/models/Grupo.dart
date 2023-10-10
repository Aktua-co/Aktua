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


/** This is an auto generated class representing the Grupo type in your schema. */
@immutable
class Grupo extends Model {
  static const classType = const _GrupoModelType();
  final String id;
  final String? _id_grupo;
  final String? _nombre;
  final String? _descripcion;
  final TemporalDateTime? _fecha_creacion;
  final Usuario? _creado_por;
  final List<UsuarioGrupo>? _miembros;
  final List<GrupoInteres>? _intereses;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  GrupoModelIdentifier get modelIdentifier {
      return GrupoModelIdentifier(
        id: id
      );
  }
  
  String get id_grupo {
    try {
      return _id_grupo!;
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
  
  TemporalDateTime get fecha_creacion {
    try {
      return _fecha_creacion!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Usuario? get creado_por {
    return _creado_por;
  }
  
  List<UsuarioGrupo>? get miembros {
    return _miembros;
  }
  
  List<GrupoInteres>? get intereses {
    return _intereses;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Grupo._internal({required this.id, required id_grupo, required nombre, required descripcion, required fecha_creacion, creado_por, miembros, intereses, createdAt, updatedAt}): _id_grupo = id_grupo, _nombre = nombre, _descripcion = descripcion, _fecha_creacion = fecha_creacion, _creado_por = creado_por, _miembros = miembros, _intereses = intereses, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Grupo({String? id, required String id_grupo, required String nombre, required String descripcion, required TemporalDateTime fecha_creacion, Usuario? creado_por, List<UsuarioGrupo>? miembros, List<GrupoInteres>? intereses}) {
    return Grupo._internal(
      id: id == null ? UUID.getUUID() : id,
      id_grupo: id_grupo,
      nombre: nombre,
      descripcion: descripcion,
      fecha_creacion: fecha_creacion,
      creado_por: creado_por,
      miembros: miembros != null ? List<UsuarioGrupo>.unmodifiable(miembros) : miembros,
      intereses: intereses != null ? List<GrupoInteres>.unmodifiable(intereses) : intereses);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Grupo &&
      id == other.id &&
      _id_grupo == other._id_grupo &&
      _nombre == other._nombre &&
      _descripcion == other._descripcion &&
      _fecha_creacion == other._fecha_creacion &&
      _creado_por == other._creado_por &&
      DeepCollectionEquality().equals(_miembros, other._miembros) &&
      DeepCollectionEquality().equals(_intereses, other._intereses);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Grupo {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("id_grupo=" + "$_id_grupo" + ", ");
    buffer.write("nombre=" + "$_nombre" + ", ");
    buffer.write("descripcion=" + "$_descripcion" + ", ");
    buffer.write("fecha_creacion=" + (_fecha_creacion != null ? _fecha_creacion!.format() : "null") + ", ");
    buffer.write("creado_por=" + (_creado_por != null ? _creado_por!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Grupo copyWith({String? id_grupo, String? nombre, String? descripcion, TemporalDateTime? fecha_creacion, Usuario? creado_por, List<UsuarioGrupo>? miembros, List<GrupoInteres>? intereses}) {
    return Grupo._internal(
      id: id,
      id_grupo: id_grupo ?? this.id_grupo,
      nombre: nombre ?? this.nombre,
      descripcion: descripcion ?? this.descripcion,
      fecha_creacion: fecha_creacion ?? this.fecha_creacion,
      creado_por: creado_por ?? this.creado_por,
      miembros: miembros ?? this.miembros,
      intereses: intereses ?? this.intereses);
  }
  
  Grupo.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _id_grupo = json['id_grupo'],
      _nombre = json['nombre'],
      _descripcion = json['descripcion'],
      _fecha_creacion = json['fecha_creacion'] != null ? TemporalDateTime.fromString(json['fecha_creacion']) : null,
      _creado_por = json['creado_por']?['serializedData'] != null
        ? Usuario.fromJson(new Map<String, dynamic>.from(json['creado_por']['serializedData']))
        : null,
      _miembros = json['miembros'] is List
        ? (json['miembros'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UsuarioGrupo.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _intereses = json['intereses'] is List
        ? (json['intereses'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => GrupoInteres.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'id_grupo': _id_grupo, 'nombre': _nombre, 'descripcion': _descripcion, 'fecha_creacion': _fecha_creacion?.format(), 'creado_por': _creado_por?.toJson(), 'miembros': _miembros?.map((UsuarioGrupo? e) => e?.toJson()).toList(), 'intereses': _intereses?.map((GrupoInteres? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'id_grupo': _id_grupo, 'nombre': _nombre, 'descripcion': _descripcion, 'fecha_creacion': _fecha_creacion, 'creado_por': _creado_por, 'miembros': _miembros, 'intereses': _intereses, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<GrupoModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<GrupoModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField ID_GRUPO = QueryField(fieldName: "id_grupo");
  static final QueryField NOMBRE = QueryField(fieldName: "nombre");
  static final QueryField DESCRIPCION = QueryField(fieldName: "descripcion");
  static final QueryField FECHA_CREACION = QueryField(fieldName: "fecha_creacion");
  static final QueryField CREADO_POR = QueryField(
    fieldName: "creado_por",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final QueryField MIEMBROS = QueryField(
    fieldName: "miembros",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'UsuarioGrupo'));
  static final QueryField INTERESES = QueryField(
    fieldName: "intereses",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'GrupoInteres'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Grupo";
    modelSchemaDefinition.pluralName = "Grupos";
    
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
      ModelIndex(fields: const ["creado_porID"], name: "byCreador")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Grupo.ID_GRUPO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Grupo.NOMBRE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Grupo.DESCRIPCION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Grupo.FECHA_CREACION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Grupo.CREADO_POR,
      isRequired: false,
      targetNames: ['creado_porID'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Grupo.MIEMBROS,
      isRequired: false,
      ofModelName: 'UsuarioGrupo',
      associatedKey: UsuarioGrupo.GRUPO
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Grupo.INTERESES,
      isRequired: false,
      ofModelName: 'GrupoInteres',
      associatedKey: GrupoInteres.GRUPO
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

class _GrupoModelType extends ModelType<Grupo> {
  const _GrupoModelType();
  
  @override
  Grupo fromJson(Map<String, dynamic> jsonData) {
    return Grupo.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Grupo';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Grupo] in your schema.
 */
@immutable
class GrupoModelIdentifier implements ModelIdentifier<Grupo> {
  final String id;

  /** Create an instance of GrupoModelIdentifier using [id] the primary key. */
  const GrupoModelIdentifier({
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
  String toString() => 'GrupoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is GrupoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}