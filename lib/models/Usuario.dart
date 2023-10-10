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


/** This is an auto generated class representing the Usuario type in your schema. */
@immutable
class Usuario extends Model {
  static const classType = const _UsuarioModelType();
  final String id;
  final String? _nombre;
  final String? _correo;
  final String? _direccion;
  final TemporalDateTime? _creado_en;
  final int? _rango_visibilidad;
  final Barrio? _barrio;
  final String? _telefono;
  final String? _foto_perfil;
  final List<String>? _intereses;
  final Negocio? _negocio;
  final List<Publicacion>? _publicaciones;
  final List<Mensaje>? _mensajesEnviados;
  final List<Mensaje>? _mensajesRecibidos;
  final List<Review>? _reviews;
  final List<UsuarioGrupo>? _grupos;
  final List<Grupo>? _gruposCreados;
  final List<Cupon>? _cupones;
  final TemporalDateTime? _createdAt;
  final TemporalDateTime? _updatedAt;
  final String? _usuarioNegocioId;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  UsuarioModelIdentifier get modelIdentifier {
      return UsuarioModelIdentifier(
        id: id
      );
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
  
  int? get rango_visibilidad {
    return _rango_visibilidad;
  }
  
  Barrio get barrio {
    try {
      return _barrio!;
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
  
  String? get foto_perfil {
    return _foto_perfil;
  }
  
  List<String>? get intereses {
    return _intereses;
  }
  
  Negocio? get negocio {
    return _negocio;
  }
  
  List<Publicacion>? get publicaciones {
    return _publicaciones;
  }
  
  List<Mensaje>? get mensajesEnviados {
    return _mensajesEnviados;
  }
  
  List<Mensaje>? get mensajesRecibidos {
    return _mensajesRecibidos;
  }
  
  List<Review>? get reviews {
    return _reviews;
  }
  
  List<UsuarioGrupo>? get grupos {
    return _grupos;
  }
  
  List<Grupo>? get gruposCreados {
    return _gruposCreados;
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
  
  String? get usuarioNegocioId {
    return _usuarioNegocioId;
  }
  
  const Usuario._internal({required this.id, required nombre, required correo, required direccion, required creado_en, rango_visibilidad, required barrio, required telefono, foto_perfil, intereses, negocio, publicaciones, mensajesEnviados, mensajesRecibidos, reviews, grupos, gruposCreados, cupones, createdAt, updatedAt, usuarioNegocioId}): _nombre = nombre, _correo = correo, _direccion = direccion, _creado_en = creado_en, _rango_visibilidad = rango_visibilidad, _barrio = barrio, _telefono = telefono, _foto_perfil = foto_perfil, _intereses = intereses, _negocio = negocio, _publicaciones = publicaciones, _mensajesEnviados = mensajesEnviados, _mensajesRecibidos = mensajesRecibidos, _reviews = reviews, _grupos = grupos, _gruposCreados = gruposCreados, _cupones = cupones, _createdAt = createdAt, _updatedAt = updatedAt, _usuarioNegocioId = usuarioNegocioId;
  
  factory Usuario({String? id, required String nombre, required String correo, required String direccion, required TemporalDateTime creado_en, int? rango_visibilidad, required Barrio barrio, required String telefono, String? foto_perfil, List<String>? intereses, Negocio? negocio, List<Publicacion>? publicaciones, List<Mensaje>? mensajesEnviados, List<Mensaje>? mensajesRecibidos, List<Review>? reviews, List<UsuarioGrupo>? grupos, List<Grupo>? gruposCreados, List<Cupon>? cupones, String? usuarioNegocioId}) {
    return Usuario._internal(
      id: id == null ? UUID.getUUID() : id,
      nombre: nombre,
      correo: correo,
      direccion: direccion,
      creado_en: creado_en,
      rango_visibilidad: rango_visibilidad,
      barrio: barrio,
      telefono: telefono,
      foto_perfil: foto_perfil,
      intereses: intereses != null ? List<String>.unmodifiable(intereses) : intereses,
      negocio: negocio,
      publicaciones: publicaciones != null ? List<Publicacion>.unmodifiable(publicaciones) : publicaciones,
      mensajesEnviados: mensajesEnviados != null ? List<Mensaje>.unmodifiable(mensajesEnviados) : mensajesEnviados,
      mensajesRecibidos: mensajesRecibidos != null ? List<Mensaje>.unmodifiable(mensajesRecibidos) : mensajesRecibidos,
      reviews: reviews != null ? List<Review>.unmodifiable(reviews) : reviews,
      grupos: grupos != null ? List<UsuarioGrupo>.unmodifiable(grupos) : grupos,
      gruposCreados: gruposCreados != null ? List<Grupo>.unmodifiable(gruposCreados) : gruposCreados,
      cupones: cupones != null ? List<Cupon>.unmodifiable(cupones) : cupones,
      usuarioNegocioId: usuarioNegocioId);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Usuario &&
      id == other.id &&
      _nombre == other._nombre &&
      _correo == other._correo &&
      _direccion == other._direccion &&
      _creado_en == other._creado_en &&
      _rango_visibilidad == other._rango_visibilidad &&
      _barrio == other._barrio &&
      _telefono == other._telefono &&
      _foto_perfil == other._foto_perfil &&
      DeepCollectionEquality().equals(_intereses, other._intereses) &&
      _negocio == other._negocio &&
      DeepCollectionEquality().equals(_publicaciones, other._publicaciones) &&
      DeepCollectionEquality().equals(_mensajesEnviados, other._mensajesEnviados) &&
      DeepCollectionEquality().equals(_mensajesRecibidos, other._mensajesRecibidos) &&
      DeepCollectionEquality().equals(_reviews, other._reviews) &&
      DeepCollectionEquality().equals(_grupos, other._grupos) &&
      DeepCollectionEquality().equals(_gruposCreados, other._gruposCreados) &&
      DeepCollectionEquality().equals(_cupones, other._cupones) &&
      _usuarioNegocioId == other._usuarioNegocioId;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Usuario {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("nombre=" + "$_nombre" + ", ");
    buffer.write("correo=" + "$_correo" + ", ");
    buffer.write("direccion=" + "$_direccion" + ", ");
    buffer.write("creado_en=" + (_creado_en != null ? _creado_en!.format() : "null") + ", ");
    buffer.write("rango_visibilidad=" + (_rango_visibilidad != null ? _rango_visibilidad!.toString() : "null") + ", ");
    buffer.write("barrio=" + (_barrio != null ? _barrio!.toString() : "null") + ", ");
    buffer.write("telefono=" + "$_telefono" + ", ");
    buffer.write("foto_perfil=" + "$_foto_perfil" + ", ");
    buffer.write("intereses=" + (_intereses != null ? _intereses!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null") + ", ");
    buffer.write("usuarioNegocioId=" + "$_usuarioNegocioId");
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Usuario copyWith({String? nombre, String? correo, String? direccion, TemporalDateTime? creado_en, int? rango_visibilidad, Barrio? barrio, String? telefono, String? foto_perfil, List<String>? intereses, Negocio? negocio, List<Publicacion>? publicaciones, List<Mensaje>? mensajesEnviados, List<Mensaje>? mensajesRecibidos, List<Review>? reviews, List<UsuarioGrupo>? grupos, List<Grupo>? gruposCreados, List<Cupon>? cupones, String? usuarioNegocioId}) {
    return Usuario._internal(
      id: id,
      nombre: nombre ?? this.nombre,
      correo: correo ?? this.correo,
      direccion: direccion ?? this.direccion,
      creado_en: creado_en ?? this.creado_en,
      rango_visibilidad: rango_visibilidad ?? this.rango_visibilidad,
      barrio: barrio ?? this.barrio,
      telefono: telefono ?? this.telefono,
      foto_perfil: foto_perfil ?? this.foto_perfil,
      intereses: intereses ?? this.intereses,
      negocio: negocio ?? this.negocio,
      publicaciones: publicaciones ?? this.publicaciones,
      mensajesEnviados: mensajesEnviados ?? this.mensajesEnviados,
      mensajesRecibidos: mensajesRecibidos ?? this.mensajesRecibidos,
      reviews: reviews ?? this.reviews,
      grupos: grupos ?? this.grupos,
      gruposCreados: gruposCreados ?? this.gruposCreados,
      cupones: cupones ?? this.cupones,
      usuarioNegocioId: usuarioNegocioId ?? this.usuarioNegocioId);
  }
  
  Usuario.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _nombre = json['nombre'],
      _correo = json['correo'],
      _direccion = json['direccion'],
      _creado_en = json['creado_en'] != null ? TemporalDateTime.fromString(json['creado_en']) : null,
      _rango_visibilidad = (json['rango_visibilidad'] as num?)?.toInt(),
      _barrio = json['barrio']?['serializedData'] != null
        ? Barrio.fromJson(new Map<String, dynamic>.from(json['barrio']['serializedData']))
        : null,
      _telefono = json['telefono'],
      _foto_perfil = json['foto_perfil'],
      _intereses = json['intereses']?.cast<String>(),
      _negocio = json['negocio']?['serializedData'] != null
        ? Negocio.fromJson(new Map<String, dynamic>.from(json['negocio']['serializedData']))
        : null,
      _publicaciones = json['publicaciones'] is List
        ? (json['publicaciones'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Publicacion.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _mensajesEnviados = json['mensajesEnviados'] is List
        ? (json['mensajesEnviados'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Mensaje.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _mensajesRecibidos = json['mensajesRecibidos'] is List
        ? (json['mensajesRecibidos'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Mensaje.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _reviews = json['reviews'] is List
        ? (json['reviews'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Review.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _grupos = json['grupos'] is List
        ? (json['grupos'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => UsuarioGrupo.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _gruposCreados = json['gruposCreados'] is List
        ? (json['gruposCreados'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Grupo.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _cupones = json['cupones'] is List
        ? (json['cupones'] as List)
          .where((e) => e?['serializedData'] != null)
          .map((e) => Cupon.fromJson(new Map<String, dynamic>.from(e['serializedData'])))
          .toList()
        : null,
      _createdAt = json['createdAt'] != null ? TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? TemporalDateTime.fromString(json['updatedAt']) : null,
      _usuarioNegocioId = json['usuarioNegocioId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'nombre': _nombre, 'correo': _correo, 'direccion': _direccion, 'creado_en': _creado_en?.format(), 'rango_visibilidad': _rango_visibilidad, 'barrio': _barrio?.toJson(), 'telefono': _telefono, 'foto_perfil': _foto_perfil, 'intereses': _intereses, 'negocio': _negocio?.toJson(), 'publicaciones': _publicaciones?.map((Publicacion? e) => e?.toJson()).toList(), 'mensajesEnviados': _mensajesEnviados?.map((Mensaje? e) => e?.toJson()).toList(), 'mensajesRecibidos': _mensajesRecibidos?.map((Mensaje? e) => e?.toJson()).toList(), 'reviews': _reviews?.map((Review? e) => e?.toJson()).toList(), 'grupos': _grupos?.map((UsuarioGrupo? e) => e?.toJson()).toList(), 'gruposCreados': _gruposCreados?.map((Grupo? e) => e?.toJson()).toList(), 'cupones': _cupones?.map((Cupon? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'usuarioNegocioId': _usuarioNegocioId
  };
  
  Map<String, Object?> toMap() => {
    'id': id, 'nombre': _nombre, 'correo': _correo, 'direccion': _direccion, 'creado_en': _creado_en, 'rango_visibilidad': _rango_visibilidad, 'barrio': _barrio, 'telefono': _telefono, 'foto_perfil': _foto_perfil, 'intereses': _intereses, 'negocio': _negocio, 'publicaciones': _publicaciones, 'mensajesEnviados': _mensajesEnviados, 'mensajesRecibidos': _mensajesRecibidos, 'reviews': _reviews, 'grupos': _grupos, 'gruposCreados': _gruposCreados, 'cupones': _cupones, 'createdAt': _createdAt, 'updatedAt': _updatedAt, 'usuarioNegocioId': _usuarioNegocioId
  };

  static final QueryModelIdentifier<UsuarioModelIdentifier> MODEL_IDENTIFIER = QueryModelIdentifier<UsuarioModelIdentifier>();
  static final QueryField ID = QueryField(fieldName: "id");
  static final QueryField NOMBRE = QueryField(fieldName: "nombre");
  static final QueryField CORREO = QueryField(fieldName: "correo");
  static final QueryField DIRECCION = QueryField(fieldName: "direccion");
  static final QueryField CREADO_EN = QueryField(fieldName: "creado_en");
  static final QueryField RANGO_VISIBILIDAD = QueryField(fieldName: "rango_visibilidad");
  static final QueryField BARRIO = QueryField(
    fieldName: "barrio",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Barrio'));
  static final QueryField TELEFONO = QueryField(fieldName: "telefono");
  static final QueryField FOTO_PERFIL = QueryField(fieldName: "foto_perfil");
  static final QueryField INTERESES = QueryField(fieldName: "intereses");
  static final QueryField NEGOCIO = QueryField(
    fieldName: "negocio",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Negocio'));
  static final QueryField PUBLICACIONES = QueryField(
    fieldName: "publicaciones",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Publicacion'));
  static final QueryField MENSAJESENVIADOS = QueryField(
    fieldName: "mensajesEnviados",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Mensaje'));
  static final QueryField MENSAJESRECIBIDOS = QueryField(
    fieldName: "mensajesRecibidos",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Mensaje'));
  static final QueryField REVIEWS = QueryField(
    fieldName: "reviews",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static final QueryField GRUPOS = QueryField(
    fieldName: "grupos",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'UsuarioGrupo'));
  static final QueryField GRUPOSCREADOS = QueryField(
    fieldName: "gruposCreados",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Grupo'));
  static final QueryField CUPONES = QueryField(
    fieldName: "cupones",
    fieldType: ModelFieldType(ModelFieldTypeEnum.model, ofModelName: 'Cupon'));
  static final QueryField USUARIONEGOCIOID = QueryField(fieldName: "usuarioNegocioId");
  static var schema = Model.defineSchema(define: (ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Usuario";
    modelSchemaDefinition.pluralName = "Usuarios";
    
    modelSchemaDefinition.authRules = [
      AuthRule(
        authStrategy: AuthStrategy.PUBLIC,
        operations: [
          ModelOperation.CREATE
        ]),
      AuthRule(
        authStrategy: AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: AuthRuleProvider.USERPOOLS,
        operations: [
          ModelOperation.READ,
          ModelOperation.UPDATE,
          ModelOperation.DELETE
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      ModelIndex(fields: const ["barrioID"], name: "byBarrio")
    ];
    
    modelSchemaDefinition.addField(ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.NOMBRE,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.CORREO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.DIRECCION,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.CREADO_EN,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.dateTime)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.RANGO_VISIBILIDAD,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.belongsTo(
      key: Usuario.BARRIO,
      isRequired: true,
      targetNames: ['barrioID'],
      ofModelName: 'Barrio'
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.TELEFONO,
      isRequired: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.FOTO_PERFIL,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.INTERESES,
      isRequired: false,
      isArray: true,
      ofType: ModelFieldType(ModelFieldTypeEnum.collection, ofModelName: describeEnum(ModelFieldTypeEnum.string))
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasOne(
      key: Usuario.NEGOCIO,
      isRequired: false,
      ofModelName: 'Negocio',
      associatedKey: Negocio.USUARIO
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Usuario.PUBLICACIONES,
      isRequired: false,
      ofModelName: 'Publicacion',
      associatedKey: Publicacion.USUARIO
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Usuario.MENSAJESENVIADOS,
      isRequired: false,
      ofModelName: 'Mensaje',
      associatedKey: Mensaje.EMISOR
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Usuario.MENSAJESRECIBIDOS,
      isRequired: false,
      ofModelName: 'Mensaje',
      associatedKey: Mensaje.RECEPTOR
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Usuario.REVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.USER
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Usuario.GRUPOS,
      isRequired: false,
      ofModelName: 'UsuarioGrupo',
      associatedKey: UsuarioGrupo.USUARIO
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Usuario.GRUPOSCREADOS,
      isRequired: false,
      ofModelName: 'Grupo',
      associatedKey: Grupo.CREADO_POR
    ));
    
    modelSchemaDefinition.addField(ModelFieldDefinition.hasMany(
      key: Usuario.CUPONES,
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
    
    modelSchemaDefinition.addField(ModelFieldDefinition.field(
      key: Usuario.USUARIONEGOCIOID,
      isRequired: false,
      ofType: ModelFieldType(ModelFieldTypeEnum.string)
    ));
  });
}

class _UsuarioModelType extends ModelType<Usuario> {
  const _UsuarioModelType();
  
  @override
  Usuario fromJson(Map<String, dynamic> jsonData) {
    return Usuario.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Usuario';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Usuario] in your schema.
 */
@immutable
class UsuarioModelIdentifier implements ModelIdentifier<Usuario> {
  final String id;

  /** Create an instance of UsuarioModelIdentifier using [id] the primary key. */
  const UsuarioModelIdentifier({
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
  String toString() => 'UsuarioModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is UsuarioModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}