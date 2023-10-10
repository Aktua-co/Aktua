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


/** This is an auto generated class representing the Negocio type in your schema. */
@immutable
class Negocio extends Model {
  static const classType = const _NegocioModelType();
  final String id;
  final Usuario? _usuario;
  final String? _nombre_negocio;
  final Barrio? _barrio;
  final String? _correo;
  final String? _logo;
  final String? _banner;
  final String? _direccion;
  final String? _telefono;
  final TemporalDateTime? _creado_en;
  final Categoria? _categoria;
  final String? _descripcion;
  final String? _horario;
  final double? _puntuacion_promedio;
  final List<Cupon>? _cupones;
  final List<Review>? _reviews;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  NegocioModelIdentifier get modelIdentifier {
      return NegocioModelIdentifier(
        id: id
      );
  }
  
  Usuario? get usuario {
    return _usuario;
  }
  
  String get nombre_negocio {
    try {
      return _nombre_negocio!;
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
  
  String get correo {
    try {
      return _correo!;
    } catch(e) {
      throw new AmplifyCodeGenModelException(
          AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String? get logo {
    return _logo;
  }
  
  String? get banner {
    return _banner;
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
  
  Categoria? get categoria {
    return _categoria;
  }
  
  String? get descripcion {
    return _descripcion;
  }
  
  String? get horario {
    return _horario;
  }
  
  double? get puntuacion_promedio {
    return _puntuacion_promedio;
  }
  
  List<Cupon>? get cupones {
    return _cupones;
  }
  
  List<Review>? get reviews {
    return _reviews;
  }
  
  TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Negocio._internal({required this.id, usuario, required nombre_negocio, barrio, required correo, logo, banner, required direccion, required telefono, required creado_en, categoria, descripcion, horario, puntuacion_promedio, cupones, reviews, createdAt, updatedAt}): _usuario = usuario, _nombre_negocio = nombre_negocio, _barrio = barrio, _correo = correo, _logo = logo, _banner = banner, _direccion = direccion, _telefono = telefono, _creado_en = creado_en, _categoria = categoria, _descripcion = descripcion, _horario = horario, _puntuacion_promedio = puntuacion_promedio, _cupones = cupones, _reviews = reviews, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Negocio({String? id, Usuario? usuario, required String nombre_negocio, Barrio? barrio, required String correo, String? logo, String? banner, required String direccion, required String telefono, required TemporalDateTime creado_en, Categoria? categoria, String? descripcion, String? horario, double? puntuacion_promedio, List<Cupon>? cupones, List<Review>? reviews}) {
    return Negocio._internal(
      id: id == null ? UUID.getUUID() : id,
      usuario: usuario,
      nombre_negocio: nombre_negocio,
      barrio: barrio,
      correo: correo,
      logo: logo,
      banner: banner,
      direccion: direccion,
      telefono: telefono,
      creado_en: creado_en,
      categoria: categoria,
      descripcion: descripcion,
      horario: horario,
      puntuacion_promedio: puntuacion_promedio,
      cupones: cupones != null ? List<Cupon>.unmodifiable(cupones) : cupones,
      reviews: reviews != null ? List<Review>.unmodifiable(reviews) : reviews);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Negocio &&
      id == other.id &&
      _usuario == other._usuario &&
      _nombre_negocio == other._nombre_negocio &&
      _barrio == other._barrio &&
      _correo == other._correo &&
      _logo == other._logo &&
      _banner == other._banner &&
      _direccion == other._direccion &&
      _telefono == other._telefono &&
      _creado_en == other._creado_en &&
      _categoria == other._categoria &&
      _descripcion == other._descripcion &&
      _horario == other._horario &&
      _puntuacion_promedio == other._puntuacion_promedio &&
      DeepCollectionEquality().equals(_cupones, other._cupones) &&
      DeepCollectionEquality().equals(_reviews, other._reviews);
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Negocio {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("usuario=" + (_usuario != null ? _usuario!.toString() : "null") + ", ");
    buffer.write("nombre_negocio=" + "$_nombre_negocio" + ", ");
    buffer.write("barrio=" + (_barrio != null ? _barrio!.toString() : "null") + ", ");
    buffer.write("correo=" + "$_correo" + ", ");
    buffer.write("logo=" + "$_logo" + ", ");
    buffer.write("banner=" + "$_banner" + ", ");
    buffer.write("direccion=" + "$_direccion" + ", ");
    buffer.write("telefono=" + "$_telefono" + ", ");
    buffer.write("creado_en=" + (_creado_en != null ? _creado_en!.format() : "null") + ", ");
    buffer.write("categoria=" + (_categoria != null ? _categoria!.toString() : "null") + ", ");
    buffer.write("descripcion=" + "$_descripcion" + ", ");
    buffer.write("horario=" + "$_horario" + ", ");
    buffer.write("puntuacion_promedio=" + (_puntuacion_promedio != null ? _puntuacion_promedio!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Negocio copyWith({Usuario? usuario, String? nombre_negocio, Barrio? barrio, String? correo, String? logo, String? banner, String? direccion, String? telefono, TemporalDateTime? creado_en, Categoria? categoria, String? descripcion, String? horario, double? puntuacion_promedio, List<Cupon>? cupones, List<Review>? reviews}) {
    return Negocio._internal(
      id: id,
      usuario: usuario ?? this.usuario,
      nombre_negocio: nombre_negocio ?? this.nombre_negocio,
      barrio: barrio ?? this.barrio,
      correo: correo ?? this.correo,
      logo: logo ?? this.logo,
      banner: banner ?? this.banner,
      direccion: direccion ?? this.direccion,
      telefono: telefono ?? this.telefono,
      creado_en: creado_en ?? this.creado_en,
      categoria: categoria ?? this.categoria,
      descripcion: descripcion ?? this.descripcion,
      horario: horario ?? this.horario,
      puntuacion_promedio: puntuacion_promedio ?? this.puntuacion_promedio,
      cupones: cupones ?? this.cupones,
      reviews: reviews ?? this.reviews);
  }
  
  Negocio.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _usuario = json['usuario']?['serializedData'] != null
        ? Usuario.fromJson(new Map<String, dynamic>.from(json['usuario']['serializedData']))
        : null,
      _nombre_negocio = json['nombre_negocio'],
      _barrio = json['barrio']?['serializedData'] != null
        ? Barrio.fromJson(new Map<String, dynamic>.from(json['barrio']['serializedData']))
        : null,
      _correo = json['correo'],
      _logo = json['logo'],
      _banner = json['banner'],
      _direccion = json['direccion'],
      _telefono = json['telefono'],
      _creado_en = json['creado_en'] != null ? TemporalDateTime.fromString(json['creado_en']) : null,
      _categoria = json['categoria']?['serializedData'] != null
        ? Categoria.fromJson(new Map<String, dynamic>.from(json['categoria']['serializedData']))
        : null,
      _descripcion = json['descripcion'],
      _horario = json['horario'],
      _puntuacion_promedio = (json['puntuacion_promedio'] as num?)?.toDouble(),
      _cupones = json['cupones'] is List
        ? (json['cupones'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Cupon.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _reviews = json['reviews'] is List
        ? (json['reviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Review.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'usuario': _usuario?.toJson(), 'nombre_negocio': _nombre_negocio, 'barrio': _barrio?.toJson(), 'correo': _correo, 'logo': _logo, 'banner': _banner, 'direccion': _direccion, 'telefono': _telefono, 'creado_en': _creado_en?.format(), 'categoria': _categoria?.toJson(), 'descripcion': _descripcion, 'horario': _horario, 'puntuacion_promedio': _puntuacion_promedio, 'cupones': _cupones?.map((Cupon? e) => e?.toJson()).toList(), 'reviews': _reviews?.map((Review? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'usuario': _usuario, 'nombre_negocio': _nombre_negocio, 'barrio': _barrio, 'correo': _correo, 'logo': _logo, 'banner': _banner, 'direccion': _direccion, 'telefono': _telefono, 'creado_en': _creado_en, 'categoria': _categoria, 'descripcion': _descripcion, 'horario': _horario, 'puntuacion_promedio': _puntuacion_promedio, 'cupones': _cupones, 'reviews': _reviews, 'createdAt': _createdAt, 'updatedAt': _updatedAt
  };

  static final QueryModelIdentifier<NegocioModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<NegocioModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField USUARIO = QueryField(
    fieldName: "usuario",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final QueryField NOMBRE_NEGOCIO = QueryField(fieldName: "nombre_negocio");
  static final QueryField BARRIO = QueryField(
    fieldName: "barrio",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Barrio'));
  static final QueryField CORREO = QueryField(fieldName: "correo");
  static final QueryField LOGO = QueryField(fieldName: "logo");
  static final QueryField BANNER = QueryField(fieldName: "banner");
  static final QueryField DIRECCION = QueryField(fieldName: "direccion");
  static final QueryField TELEFONO = QueryField(fieldName: "telefono");
  static final QueryField CREADO_EN = QueryField(fieldName: "creado_en");
  static final QueryField CATEGORIA = QueryField(
    fieldName: "categoria",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Categoria'));
  static final QueryField DESCRIPCION = QueryField(fieldName: "descripcion");
  static final QueryField HORARIO = QueryField(fieldName: "horario");
  static final QueryField PUNTUACION_PROMEDIO = QueryField(fieldName: "puntuacion_promedio");
  static final QueryField CUPONES = QueryField(
    fieldName: "cupones",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Cupon'));
  static final QueryField REVIEWS = QueryField(
    fieldName: "reviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Negocio";
    modelSchemaDefinition.pluralName = "Negocios";
    
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
      ModelIndex(fields: const ["barrioID"], name: "byBarrio"),
      ModelIndex(fields: const ["categoriaID"], name: "byCategoria")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Negocio.USUARIO,
      isRequired: false,
      targetNames: ['usuarioID'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Negocio.NOMBRE_NEGOCIO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Negocio.BARRIO,
      isRequired: false,
      targetNames: ['barrioID'],
      ofModelName: 'Barrio'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Negocio.CORREO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Negocio.LOGO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Negocio.BANNER,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Negocio.DIRECCION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Negocio.TELEFONO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Negocio.CREADO_EN,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Negocio.CATEGORIA,
      isRequired: false,
      targetNames: ['categoriaID'],
      ofModelName: 'Categoria'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Negocio.DESCRIPCION,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Negocio.HORARIO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Negocio.PUNTUACION_PROMEDIO,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Negocio.CUPONES,
      isRequired: false,
      ofModelName: 'Cupon',
      associatedKey: Cupon.NEGOCIO
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Negocio.REVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.NEGOCIO
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

class _NegocioModelType extends ModelType<Negocio> {
  const _NegocioModelType();
  
  @override
  Negocio fromJson(Map<String, dynamic> jsonData) {
    return Negocio.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Negocio';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Negocio] in your schema.
 */
@immutable
class NegocioModelIdentifier implements ModelIdentifier<Negocio> {
  final String id;

  /** Create an instance of NegocioModelIdentifier using [id] the primary key. */
  const NegocioModelIdentifier({
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
  String toString() => 'NegocioModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is NegocioModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}