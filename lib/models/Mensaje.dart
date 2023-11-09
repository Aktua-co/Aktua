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


/** This is an auto generated class representing the Mensaje type in your schema. */
class Mensaje extends amplify_core.Model {
  static const classType = const _MensajeModelType();
  final String id;
  final String? _mensaje_id;
  final Usuario? _emisor;
  final Usuario? _receptor;
  final String? _mensaje;
  final amplify_core.TemporalDateTime? _timestamp;
  final bool? _leido;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

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
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
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
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get timestamp {
    try {
      return _timestamp!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  bool get leido {
    try {
      return _leido!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Mensaje._internal({required this.id, required mensaje_id, emisor, receptor, required mensaje, required timestamp, required leido, createdAt, updatedAt}): _mensaje_id = mensaje_id, _emisor = emisor, _receptor = receptor, _mensaje = mensaje, _timestamp = timestamp, _leido = leido, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Mensaje({String? id, required String mensaje_id, Usuario? emisor, Usuario? receptor, required String mensaje, required amplify_core.TemporalDateTime timestamp, required bool leido}) {
    return Mensaje._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
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
  
  Mensaje copyWith({String? mensaje_id, Usuario? emisor, Usuario? receptor, String? mensaje, amplify_core.TemporalDateTime? timestamp, bool? leido}) {
    return Mensaje._internal(
      id: id,
      mensaje_id: mensaje_id ?? this.mensaje_id,
      emisor: emisor ?? this.emisor,
      receptor: receptor ?? this.receptor,
      mensaje: mensaje ?? this.mensaje,
      timestamp: timestamp ?? this.timestamp,
      leido: leido ?? this.leido);
  }
  
  Mensaje copyWithModelFieldValues({
    ModelFieldValue<String>? mensaje_id,
    ModelFieldValue<Usuario?>? emisor,
    ModelFieldValue<Usuario?>? receptor,
    ModelFieldValue<String>? mensaje,
    ModelFieldValue<amplify_core.TemporalDateTime>? timestamp,
    ModelFieldValue<bool>? leido
  }) {
    return Mensaje._internal(
      id: id,
      mensaje_id: mensaje_id == null ? this.mensaje_id : mensaje_id.value,
      emisor: emisor == null ? this.emisor : emisor.value,
      receptor: receptor == null ? this.receptor : receptor.value,
      mensaje: mensaje == null ? this.mensaje : mensaje.value,
      timestamp: timestamp == null ? this.timestamp : timestamp.value,
      leido: leido == null ? this.leido : leido.value
    );
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
      _timestamp = json['timestamp'] != null ? amplify_core.TemporalDateTime.fromString(json['timestamp']) : null,
      _leido = json['leido'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'mensaje_id': _mensaje_id, 'emisor': _emisor?.toJson(), 'receptor': _receptor?.toJson(), 'mensaje': _mensaje, 'timestamp': _timestamp?.format(), 'leido': _leido, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'mensaje_id': _mensaje_id,
    'emisor': _emisor,
    'receptor': _receptor,
    'mensaje': _mensaje,
    'timestamp': _timestamp,
    'leido': _leido,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<MensajeModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<MensajeModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final MENSAJE_ID = amplify_core.QueryField(fieldName: "mensaje_id");
  static final EMISOR = amplify_core.QueryField(
    fieldName: "emisor",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final RECEPTOR = amplify_core.QueryField(
    fieldName: "receptor",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final MENSAJE = amplify_core.QueryField(fieldName: "mensaje");
  static final TIMESTAMP = amplify_core.QueryField(fieldName: "timestamp");
  static final LEIDO = amplify_core.QueryField(fieldName: "leido");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Mensaje";
    modelSchemaDefinition.pluralName = "Mensajes";
    
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
      amplify_core.ModelIndex(fields: const ["emisorID"], name: "byEmisor"),
      amplify_core.ModelIndex(fields: const ["receptorID"], name: "byReceptor")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Mensaje.MENSAJE_ID,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Mensaje.EMISOR,
      isRequired: false,
      targetNames: ['emisorID'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Mensaje.RECEPTOR,
      isRequired: false,
      targetNames: ['receptorID'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Mensaje.MENSAJE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Mensaje.TIMESTAMP,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Mensaje.LEIDO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.bool)
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

class _MensajeModelType extends amplify_core.ModelType<Mensaje> {
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
class MensajeModelIdentifier implements amplify_core.ModelIdentifier<Mensaje> {
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