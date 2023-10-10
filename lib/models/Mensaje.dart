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


/** This is an auto generated class representing the Mensaje type in your schema. */
@immutable
class Mensaje extends Model {
  static const classType = const _MensajeModelType();
  final String id;
  final String? _mensaje_id;
  final Usuario? _emisor;
  final Usuario? _receptor;
  final String? _mensaje;
  final TemporalDateTime? _timestamp;
  final bool? _leido;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  MensajeModelIdentifier get modelIdentifier {
      return MensajeModelIdentifier(
        id: id
      );
  }
  
  String get mensaje_id {
    try {
      return _mensaje_id!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Usuario? get emisor {
    return _emisor;
  }
  
  Usuario? get receptor {
    return _receptor;
  }
  
  String get mensaje {
    try {
      return _mensaje!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
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
  
  bool get leido {
    try {
      return _leido!;
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
  
  const Mensaje._internal({required this.id, required mensaje_id, emisor, receptor, required mensaje, required timestamp, required leido, createdAt, updatedAt}): _mensaje_id = mensaje_id, _emisor = emisor, _receptor = receptor, _mensaje = mensaje, _timestamp = timestamp, _leido = leido, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Mensaje({String? id, required String mensaje_id, Usuario? emisor, Usuario? receptor, required String mensaje, required TemporalDateTime timestamp, required bool leido}) {
    return Mensaje._internal(
      id: id == null ? UUID.getUUID() : id,
      mensaje_id: mensaje_id,
      emisor: emisor,
      receptor: receptor,
      mensaje: mensaje,
      timestamp: timestamp,
      leido: leido);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Mensaje &&
      id == other.id &&
      _mensaje_id == other._mensaje_id &&
      _emisor == other._emisor &&
      _receptor == other._receptor &&
      _mensaje == other._mensaje &&
      _timestamp == other._timestamp &&
      _leido == other._leido;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Mensaje {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("mensaje_id=" + "$_mensaje_id" + ", ");
    buffer.write("emisor=" + (_emisor != null ? _emisor!.toString() : "null") + ", ");
    buffer.write("receptor=" + (_receptor != null ? _receptor!.toString() : "null") + ", ");
    buffer.write("mensaje=" + "$_mensaje" + ", ");
    buffer.write("timestamp=" + (_timestamp != null ? _timestamp!.format() : "null") + ", ");
    buffer.write("leido=" + (_leido != null ? _leido!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Mensaje copyWith({String? mensaje_id, Usuario? emisor, Usuario? receptor, String? mensaje, TemporalDateTime? timestamp, bool? leido}) {
    return Mensaje._internal(
      id: id,
      mensaje_id: mensaje_id ?? this.mensaje_id,
      emisor: emisor ?? this.emisor,
      receptor: receptor ?? this.receptor,
      mensaje: mensaje ?? this.mensaje,
      timestamp: timestamp ?? this.timestamp,
      leido: leido ?? this.leido);
  }
  
  Mensaje.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _mensaje_id = json['mensaje_id'],
      _emisor = json['emisor']?['serializedData'] != null
        ? Usuario.fromJson(new Map<String, dynamic>.from(json['emisor']['serializedData']))
        : null,
      _receptor = json['receptor']?['serializedData'] != null
        ? Usuario.fromJson(new Map<String, dynamic>.from(json['receptor']['serializedData']))
        : null,
      _mensaje = json['mensaje'],
      _timestamp = json['timestamp'] != null ? TemporalDateTime.fromString(json['timestamp']) : null,
      _leido = json['leido'],
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'mensaje_id': _mensaje_id, 'emisor': _emisor?.toJson(), 'receptor': _receptor?.toJson(), 'mensaje': _mensaje, 'timestamp': _timestamp?.format(), 'leido': _leido, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'mensaje_id': _mensaje_id, 'emisor': _emisor, 'receptor': _receptor, 'mensaje': _mensaje, 'timestamp': _timestamp, 'leido': _leido, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<MensajeModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<MensajeModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField MENSAJE_ID = QueryField(fieldName: "mensaje_id");
  static final QueryField EMISOR = QueryField(
    fieldName: "emisor",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final QueryField RECEPTOR = QueryField(
    fieldName: "receptor",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final QueryField MENSAJE = QueryField(fieldName: "mensaje");
  static final QueryField TIMESTAMP = QueryField(fieldName: "timestamp");
  static final QueryField LEIDO = QueryField(fieldName: "leido");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Mensaje";
    modelSchemaDefinition.pluralName = "Mensajes";
    
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
      ModelIndex(fields: const ["emisorID"], name: "byEmisor"),
      ModelIndex(fields: const ["receptorID"], name: "byReceptor")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Mensaje.MENSAJE_ID,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Mensaje.EMISOR,
      isRequired: false,
      targetNames: ['emisorID'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Mensaje.RECEPTOR,
      isRequired: false,
      targetNames: ['receptorID'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Mensaje.MENSAJE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Mensaje.TIMESTAMP,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Mensaje.LEIDO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.bool)
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

class _MensajeModelType extends ModelType<Mensaje> {
  const _MensajeModelType();
  
  @override
  Mensaje fromJson(Map<String, dynamic> jsonData) {
    return Mensaje.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Mensaje';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Mensaje] in your schema.
 */
@immutable
class MensajeModelIdentifier implements ModelIdentifier<Mensaje> {
  final String id;

  /** Create an instance of MensajeModelIdentifier using [id] the primary key. */
  const MensajeModelIdentifier({
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
  String toString() => 'MensajeModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is MensajeModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}