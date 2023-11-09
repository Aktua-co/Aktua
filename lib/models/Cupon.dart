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


/** This is an auto generated class representing the Cupon type in your schema. */
class Cupon extends amplify_core.Model {
  static const classType = const _CuponModelType();
  final String id;
  final String? _negocioID;
  final Negocio? _negocio;
  final String? _descripcion;
  final String? _codigo;
  final amplify_core.TemporalDateTime? _fecha_expiracion;
  final amplify_core.TemporalDateTime? _fecha_expedicion;
  final String? _imagen;
  final double? _descuento;
  final String? _id_usuario;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  CuponModelIdentifier get modelIdentifier {
      return CuponModelIdentifier(
        id: id
      );
  }
  
  String? get negocioID {
    return _negocioID;
  }
  
  Negocio? get negocio {
    return _negocio;
  }
  
  String get descripcion {
    try {
      return _descripcion!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get codigo {
    try {
      return _codigo!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get fecha_expiracion {
    try {
      return _fecha_expiracion!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  amplify_core.TemporalDateTime get fecha_expedicion {
    try {
      return _fecha_expedicion!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get imagen {
    try {
      return _imagen!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  double get descuento {
    try {
      return _descuento!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get id_usuario {
    try {
      return _id_usuario!;
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
  
  const Cupon._internal({required this.id, negocioID, negocio, required descripcion, required codigo, required fecha_expiracion, required fecha_expedicion, required imagen, required descuento, required id_usuario, createdAt, updatedAt}): _negocioID = negocioID, _negocio = negocio, _descripcion = descripcion, _codigo = codigo, _fecha_expiracion = fecha_expiracion, _fecha_expedicion = fecha_expedicion, _imagen = imagen, _descuento = descuento, _id_usuario = id_usuario, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Cupon({String? id, String? negocioID, Negocio? negocio, required String descripcion, required String codigo, required amplify_core.TemporalDateTime fecha_expiracion, required amplify_core.TemporalDateTime fecha_expedicion, required String imagen, required double descuento, required String id_usuario}) {
    return Cupon._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      negocioID: negocioID,
      negocio: negocio,
      descripcion: descripcion,
      codigo: codigo,
      fecha_expiracion: fecha_expiracion,
      fecha_expedicion: fecha_expedicion,
      imagen: imagen,
      descuento: descuento,
      id_usuario: id_usuario);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Cupon &&
      id == other.id &&
      _negocioID == other._negocioID &&
      _negocio == other._negocio &&
      _descripcion == other._descripcion &&
      _codigo == other._codigo &&
      _fecha_expiracion == other._fecha_expiracion &&
      _fecha_expedicion == other._fecha_expedicion &&
      _imagen == other._imagen &&
      _descuento == other._descuento &&
      _id_usuario == other._id_usuario;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Cupon {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("negocioID=" + "$_negocioID" + ", ");
    buffer.write("negocio=" + (_negocio != null ? _negocio!.toString() : "null") + ", ");
    buffer.write("descripcion=" + "$_descripcion" + ", ");
    buffer.write("codigo=" + "$_codigo" + ", ");
    buffer.write("fecha_expiracion=" + (_fecha_expiracion != null ? _fecha_expiracion!.format() : "null") + ", ");
    buffer.write("fecha_expedicion=" + (_fecha_expedicion != null ? _fecha_expedicion!.format() : "null") + ", ");
    buffer.write("imagen=" + "$_imagen" + ", ");
    buffer.write("descuento=" + (_descuento != null ? _descuento!.toString() : "null") + ", ");
    buffer.write("id_usuario=" + "$_id_usuario" + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Cupon copyWith({String? negocioID, Negocio? negocio, String? descripcion, String? codigo, amplify_core.TemporalDateTime? fecha_expiracion, amplify_core.TemporalDateTime? fecha_expedicion, String? imagen, double? descuento, String? id_usuario}) {
    return Cupon._internal(
      id: id,
      negocioID: negocioID ?? this.negocioID,
      negocio: negocio ?? this.negocio,
      descripcion: descripcion ?? this.descripcion,
      codigo: codigo ?? this.codigo,
      fecha_expiracion: fecha_expiracion ?? this.fecha_expiracion,
      fecha_expedicion: fecha_expedicion ?? this.fecha_expedicion,
      imagen: imagen ?? this.imagen,
      descuento: descuento ?? this.descuento,
      id_usuario: id_usuario ?? this.id_usuario);
  }
  
  Cupon copyWithModelFieldValues({
    ModelFieldValue<String?>? negocioID,
    ModelFieldValue<Negocio?>? negocio,
    ModelFieldValue<String>? descripcion,
    ModelFieldValue<String>? codigo,
    ModelFieldValue<amplify_core.TemporalDateTime>? fecha_expiracion,
    ModelFieldValue<amplify_core.TemporalDateTime>? fecha_expedicion,
    ModelFieldValue<String>? imagen,
    ModelFieldValue<double>? descuento,
    ModelFieldValue<String>? id_usuario
  }) {
    return Cupon._internal(
      id: id,
      negocioID: negocioID == null ? this.negocioID : negocioID.value,
      negocio: negocio == null ? this.negocio : negocio.value,
      descripcion: descripcion == null ? this.descripcion : descripcion.value,
      codigo: codigo == null ? this.codigo : codigo.value,
      fecha_expiracion: fecha_expiracion == null ? this.fecha_expiracion : fecha_expiracion.value,
      fecha_expedicion: fecha_expedicion == null ? this.fecha_expedicion : fecha_expedicion.value,
      imagen: imagen == null ? this.imagen : imagen.value,
      descuento: descuento == null ? this.descuento : descuento.value,
      id_usuario: id_usuario == null ? this.id_usuario : id_usuario.value
    );
  }
  
  Cupon.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _negocioID = json['negocioID'],
      _negocio = json['negocio']?['serializedData'] != null
        ? Negocio.fromJson(new Map<String, dynamic>.from(json['negocio']['serializedData']))
        : null,
      _descripcion = json['descripcion'],
      _codigo = json['codigo'],
      _fecha_expiracion = json['fecha_expiracion'] != null ? amplify_core.TemporalDateTime.fromString(json['fecha_expiracion']) : null,
      _fecha_expedicion = json['fecha_expedicion'] != null ? amplify_core.TemporalDateTime.fromString(json['fecha_expedicion']) : null,
      _imagen = json['imagen'],
      _descuento = (json['descuento'] as num?)?.toDouble(),
      _id_usuario = json['id_usuario'],
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'negocioID': _negocioID, 'negocio': _negocio?.toJson(), 'descripcion': _descripcion, 'codigo': _codigo, 'fecha_expiracion': _fecha_expiracion?.format(), 'fecha_expedicion': _fecha_expedicion?.format(), 'imagen': _imagen, 'descuento': _descuento, 'id_usuario': _id_usuario, 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'negocioID': _negocioID,
    'negocio': _negocio,
    'descripcion': _descripcion,
    'codigo': _codigo,
    'fecha_expiracion': _fecha_expiracion,
    'fecha_expedicion': _fecha_expedicion,
    'imagen': _imagen,
    'descuento': _descuento,
    'id_usuario': _id_usuario,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<CuponModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<CuponModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NEGOCIOID = amplify_core.QueryField(fieldName: "negocioID");
  static final NEGOCIO = amplify_core.QueryField(
    fieldName: "negocio",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Negocio'));
  static final DESCRIPCION = amplify_core.QueryField(fieldName: "descripcion");
  static final CODIGO = amplify_core.QueryField(fieldName: "codigo");
  static final FECHA_EXPIRACION = amplify_core.QueryField(fieldName: "fecha_expiracion");
  static final FECHA_EXPEDICION = amplify_core.QueryField(fieldName: "fecha_expedicion");
  static final IMAGEN = amplify_core.QueryField(fieldName: "imagen");
  static final DESCUENTO = amplify_core.QueryField(fieldName: "descuento");
  static final ID_USUARIO = amplify_core.QueryField(fieldName: "id_usuario");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Cupon";
    modelSchemaDefinition.pluralName = "Cupons";
    
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
      amplify_core.ModelIndex(fields: const ["negocioID"], name: "byNegocio"),
      amplify_core.ModelIndex(fields: const ["id_usuario"], name: "byUsuario")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Cupon.NEGOCIOID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Cupon.NEGOCIO,
      isRequired: false,
      targetNames: ['id'],
      ofModelName: 'Negocio'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Cupon.DESCRIPCION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Cupon.CODIGO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Cupon.FECHA_EXPIRACION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Cupon.FECHA_EXPEDICION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Cupon.IMAGEN,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Cupon.DESCUENTO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Cupon.ID_USUARIO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
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

class _CuponModelType extends amplify_core.ModelType<Cupon> {
  const _CuponModelType();
  
  @override
  Cupon fromJson(Map<String, dynamic> jsonData) {
    return Cupon.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Cupon';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Cupon] in your schema.
 */
class CuponModelIdentifier implements amplify_core.ModelIdentifier<Cupon> {
  final String id;

  /** Create an instance of CuponModelIdentifier using [id] the primary key. */
  const CuponModelIdentifier({
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
  String toString() => 'CuponModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is CuponModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}