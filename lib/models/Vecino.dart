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


/** This is an auto generated class representing the Vecino type in your schema. */
@immutable
class Vecino extends Model {
  static const classType = const _VecinoModelType();
  final String id;
  final Usuario? _usuario;
  final String? _direccion;
  final Barrio? _barrio;
  final String? _telefono;
  final String? _foto_perfil;
  final List<String>? _intereses;
  final List<Cupon>? _cupones;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  VecinoModelIdentifier get modelIdentifier {
      return VecinoModelIdentifier(
        id: id
      );
  }
  
  Usuario? get usuario {
    return _usuario;
  }
  
  String get direccion {
    try {
      return _direccion!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Barrio? get barrio {
    return _barrio;
  }
  
  String get telefono {
    try {
      return _telefono!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get foto_perfil {
    return _foto_perfil;
  }
  
  List<String>? get intereses {
    return _intereses;
  }
  
  List<Cupon>? get cupones {
    return _cupones;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Vecino._internal({required this.id, usuario, required direccion, barrio, required telefono, foto_perfil, intereses, cupones, createdAt, updatedAt}): _usuario = usuario, _direccion = direccion, _barrio = barrio, _telefono = telefono, _foto_perfil = foto_perfil, _intereses = intereses, _cupones = cupones, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Vecino({String? id, Usuario? usuario, required String direccion, Barrio? barrio, required String telefono, String? foto_perfil, List<String>? intereses, List<Cupon>? cupones}) {
    return Vecino._internal(
      id: id == null ? UUID.getUUID() : id,
      usuario: usuario,
      direccion: direccion,
      barrio: barrio,
      telefono: telefono,
      foto_perfil: foto_perfil,
      intereses: intereses != null ? List<String>.unmodifiable(intereses) : intereses,
      cupones: cupones != null ? List<Cupon>.unmodifiable(cupones) : cupones);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Vecino &&
      id == other.id &&
      _usuario == other._usuario &&
      _direccion == other._direccion &&
      _barrio == other._barrio &&
      _telefono == other._telefono &&
      _foto_perfil == other._foto_perfil &&
      DeepCollectionEquality().equals(_intereses, other._intereses) &&
      DeepCollectionEquality().equals(_cupones, other._cupones);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Vecino {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("usuario=" + (_usuario != null ? _usuario!.toString() : "null") + ", ");
    buffer.write("direccion=" + "$_direccion" + ", ");
    buffer.write("barrio=" + (_barrio != null ? _barrio!.toString() : "null") + ", ");
    buffer.write("telefono=" + "$_telefono" + ", ");
    buffer.write("foto_perfil=" + "$_foto_perfil" + ", ");
    buffer.write("intereses=" + (_intereses != null ? _intereses!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Vecino copyWith({Usuario? usuario, String? direccion, Barrio? barrio, String? telefono, String? foto_perfil, List<String>? intereses, List<Cupon>? cupones}) {
    return Vecino._internal(
      id: id,
      usuario: usuario ?? this.usuario,
      direccion: direccion ?? this.direccion,
      barrio: barrio ?? this.barrio,
      telefono: telefono ?? this.telefono,
      foto_perfil: foto_perfil ?? this.foto_perfil,
      intereses: intereses ?? this.intereses,
      cupones: cupones ?? this.cupones);
  }
  
  Vecino.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _usuario = json['usuario']?['serializedData'] != null
        ? Usuario.fromJson(new Map<String, dynamic>.from(json['usuario']['serializedData']))
        : null,
      _direccion = json['direccion'],
      _barrio = json['barrio']?['serializedData'] != null
        ? Barrio.fromJson(new Map<String, dynamic>.from(json['barrio']['serializedData']))
        : null,
      _telefono = json['telefono'],
      _foto_perfil = json['foto_perfil'],
      _intereses = json['intereses']?.cast<String>(),
      _cupones = json['cupones'] is List
        ? (json['cupones'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Cupon.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'usuario': _usuario?.toJson(), 'direccion': _direccion, 'barrio': _barrio?.toJson(), 'telefono': _telefono, 'foto_perfil': _foto_perfil, 'intereses': _intereses, 'cupones': _cupones?.map((Cupon? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'usuario': _usuario, 'direccion': _direccion, 'barrio': _barrio, 'telefono': _telefono, 'foto_perfil': _foto_perfil, 'intereses': _intereses, 'cupones': _cupones, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<VecinoModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<VecinoModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField USUARIO = QueryField(
    fieldName: "usuario",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final QueryField DIRECCION = QueryField(fieldName: "direccion");
  static final QueryField BARRIO = QueryField(
    fieldName: "barrio",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Barrio'));
  static final QueryField TELEFONO = QueryField(fieldName: "telefono");
  static final QueryField FOTO_PERFIL = QueryField(fieldName: "foto_perfil");
  static final QueryField INTERESES = QueryField(fieldName: "intereses");
  static final QueryField CUPONES = QueryField(
    fieldName: "cupones",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Cupon'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Vecino";
    modelSchemaDefinition.pluralName = "Vecinos";
    
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
      ModelIndex(fields: const ["barrioID"], name: "byBarrio")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Vecino.USUARIO,
      isRequired: false,
      targetNames: ['usuarioID'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Vecino.DIRECCION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Vecino.BARRIO,
      isRequired: false,
      targetNames: ['barrioID'],
      ofModelName: 'Barrio'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Vecino.TELEFONO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Vecino.FOTO_PERFIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Vecino.INTERESES,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Vecino.CUPONES,
      isRequired: false,
      ofModelName: 'Cupon',
      associatedKey: Cupon.ID_USUARIO
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

class _VecinoModelType extends ModelType<Vecino> {
  const _VecinoModelType();
  
  @override
  Vecino fromJson(Map<String, dynamic> jsonData) {
    return Vecino.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Vecino';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Vecino] in your schema.
 */
@immutable
class VecinoModelIdentifier implements ModelIdentifier<Vecino> {
  final String id;

  /** Create an instance of VecinoModelIdentifier using [id] the primary key. */
  const VecinoModelIdentifier({
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
  String toString() => 'VecinoModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is VecinoModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}