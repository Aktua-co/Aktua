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


/** This is an auto generated class representing the Publicacion type in your schema. */
@immutable
class Publicacion extends Model {
  static const classType = const _PublicacionModelType();
  final String id;
  final TemporalDateTime? _timestamp;
  final Usuario? _usuario;
  final String? _categoria;
  final String? _titulo;
  final String? _contenido;
  final List<String>? _imagenes;
  final List<String>? _videos;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  PublicacionModelIdentifier get modelIdentifier {
      return PublicacionModelIdentifier(
        id: id
      );
  }
  
  TemporalDateTime get timestamp {
    try {
      return _timestamp!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Usuario? get usuario {
    return _usuario;
  }
  
  String get categoria {
    try {
      return _categoria!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get titulo {
    try {
      return _titulo!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get contenido {
    try {
      return _contenido!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  List<String>? get imagenes {
    return _imagenes;
  }
  
  List<String>? get videos {
    return _videos;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Publicacion._internal({required this.id, required timestamp, usuario, required categoria, required titulo, required contenido, imagenes, videos, createdAt, updatedAt}): _timestamp = timestamp, _usuario = usuario, _categoria = categoria, _titulo = titulo, _contenido = contenido, _imagenes = imagenes, _videos = videos, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Publicacion({String? id, required TemporalDateTime timestamp, Usuario? usuario, required String categoria, required String titulo, required String contenido, List<String>? imagenes, List<String>? videos}) {
    return Publicacion._internal(
      id: id == null ? UUID.getUUID() : id,
      timestamp: timestamp,
      usuario: usuario,
      categoria: categoria,
      titulo: titulo,
      contenido: contenido,
      imagenes: imagenes != null ? List<String>.unmodifiable(imagenes) : imagenes,
      videos: videos != null ? List<String>.unmodifiable(videos) : videos);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Publicacion &&
      id == other.id &&
      _timestamp == other._timestamp &&
      _usuario == other._usuario &&
      _categoria == other._categoria &&
      _titulo == other._titulo &&
      _contenido == other._contenido &&
      DeepCollectionEquality().equals(_imagenes, other._imagenes) &&
      DeepCollectionEquality().equals(_videos, other._videos);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Publicacion {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("timestamp=" + (_timestamp != null ? _timestamp!.format() : "null") + ", ");
    buffer.write("usuario=" + (_usuario != null ? _usuario!.toString() : "null") + ", ");
    buffer.write("categoria=" + "$_categoria" + ", ");
    buffer.write("titulo=" + "$_titulo" + ", ");
    buffer.write("contenido=" + "$_contenido" + ", ");
    buffer.write("imagenes=" + (_imagenes != null ? _imagenes!.toString() : "null") + ", ");
    buffer.write("videos=" + (_videos != null ? _videos!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Publicacion copyWith({TemporalDateTime? timestamp, Usuario? usuario, String? categoria, String? titulo, String? contenido, List<String>? imagenes, List<String>? videos}) {
    return Publicacion._internal(
      id: id,
      timestamp: timestamp ?? this.timestamp,
      usuario: usuario ?? this.usuario,
      categoria: categoria ?? this.categoria,
      titulo: titulo ?? this.titulo,
      contenido: contenido ?? this.contenido,
      imagenes: imagenes ?? this.imagenes,
      videos: videos ?? this.videos);
  }
  
  Publicacion.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _timestamp = json['timestamp'] != null ? TemporalDateTime.fromString(json['timestamp']) : null,
      _usuario = json['usuario']?['serializedData'] != null
        ? Usuario.fromJson(new Map<String, dynamic>.from(json['usuario']['serializedData']))
        : null,
      _categoria = json['categoria'],
      _titulo = json['titulo'],
      _contenido = json['contenido'],
      _imagenes = json['imagenes']?.cast<String>(),
      _videos = json['videos']?.cast<String>(),
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'timestamp': _timestamp?.format(), 'usuario': _usuario?.toJson(), 'categoria': _categoria, 'titulo': _titulo, 'contenido': _contenido, 'imagenes': _imagenes, 'videos': _videos, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'timestamp': _timestamp, 'usuario': _usuario, 'categoria': _categoria, 'titulo': _titulo, 'contenido': _contenido, 'imagenes': _imagenes, 'videos': _videos, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<PublicacionModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<PublicacionModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField TIMESTAMP = QueryField(fieldName: "timestamp");
  static final QueryField USUARIO = QueryField(
    fieldName: "usuario",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final QueryField CATEGORIA = QueryField(fieldName: "categoria");
  static final QueryField TITULO = QueryField(fieldName: "titulo");
  static final QueryField CONTENIDO = QueryField(fieldName: "contenido");
  static final QueryField IMAGENES = QueryField(fieldName: "imagenes");
  static final QueryField VIDEOS = QueryField(fieldName: "videos");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Publicacion";
    modelSchemaDefinition.pluralName = "Publicacions";
    
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
      ModelIndex(fields: const ["usuarioID"], name: "byUsuario")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Publicacion.TIMESTAMP,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Publicacion.USUARIO,
      isRequired: false,
      targetNames: ['usuarioID'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Publicacion.CATEGORIA,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Publicacion.TITULO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Publicacion.CONTENIDO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Publicacion.IMAGENES,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Publicacion.VIDEOS,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
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

class _PublicacionModelType extends ModelType<Publicacion> {
  const _PublicacionModelType();
  
  @override
  Publicacion fromJson(Map<String, dynamic> jsonData) {
    return Publicacion.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Publicacion';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Publicacion] in your schema.
 */
@immutable
class PublicacionModelIdentifier implements ModelIdentifier<Publicacion> {
  final String id;

  /** Create an instance of PublicacionModelIdentifier using [id] the primary key. */
  const PublicacionModelIdentifier({
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
  String toString() => 'PublicacionModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is PublicacionModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}