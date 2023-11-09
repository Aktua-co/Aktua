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
import 'package:collection/collection.dart';


/** This is an auto generated class representing the Usuario type in your schema. */
class Usuario extends amplify_core.Model {
  static const classType = const _UsuarioModelType();
  final String id;
  final String? _nombre;
  final String? _correo;
  final String? _direccion;
  final int? _rango_visibilidad;
  final String? _barrioID;
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
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;
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
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get correo {
    try {
      return _correo!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get direccion {
    try {
      return _direccion!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  int? get rango_visibilidad {
    return _rango_visibilidad;
  }
  
  String? get barrioID {
    return _barrioID;
  }
  
  Barrio get barrio {
    try {
      return _barrio!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get telefono {
    try {
      return _telefono!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
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
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  String? get usuarioNegocioId {
    return _usuarioNegocioId;
  }
  
  const Usuario._internal({required this.id, required nombre, required correo, required direccion, rango_visibilidad, barrioID, required barrio, required telefono, foto_perfil, intereses, negocio, publicaciones, mensajesEnviados, mensajesRecibidos, reviews, grupos, gruposCreados, cupones, createdAt, updatedAt, usuarioNegocioId}): _nombre = nombre, _correo = correo, _direccion = direccion, _rango_visibilidad = rango_visibilidad, _barrioID = barrioID, _barrio = barrio, _telefono = telefono, _foto_perfil = foto_perfil, _intereses = intereses, _negocio = negocio, _publicaciones = publicaciones, _mensajesEnviados = mensajesEnviados, _mensajesRecibidos = mensajesRecibidos, _reviews = reviews, _grupos = grupos, _gruposCreados = gruposCreados, _cupones = cupones, _createdAt = createdAt, _updatedAt = updatedAt, _usuarioNegocioId = usuarioNegocioId;
  
  factory Usuario({String? id, required String nombre, required String correo, required String direccion, int? rango_visibilidad, String? barrioID, required Barrio barrio, required String telefono, String? foto_perfil, List<String>? intereses, Negocio? negocio, List<Publicacion>? publicaciones, List<Mensaje>? mensajesEnviados, List<Mensaje>? mensajesRecibidos, List<Review>? reviews, List<UsuarioGrupo>? grupos, List<Grupo>? gruposCreados, List<Cupon>? cupones, String? usuarioNegocioId}) {
    return Usuario._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      nombre: nombre,
      correo: correo,
      direccion: direccion,
      rango_visibilidad: rango_visibilidad,
      barrioID: barrioID,
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
      _rango_visibilidad == other._rango_visibilidad &&
      _barrioID == other._barrioID &&
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
    buffer.write("rango_visibilidad=" + (_rango_visibilidad != null ? _rango_visibilidad!.toString() : "null") + ", ");
    buffer.write("barrioID=" + "$_barrioID" + ", ");
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
  
  Usuario copyWith({String? nombre, String? correo, String? direccion, int? rango_visibilidad, String? barrioID, Barrio? barrio, String? telefono, String? foto_perfil, List<String>? intereses, Negocio? negocio, List<Publicacion>? publicaciones, List<Mensaje>? mensajesEnviados, List<Mensaje>? mensajesRecibidos, List<Review>? reviews, List<UsuarioGrupo>? grupos, List<Grupo>? gruposCreados, List<Cupon>? cupones, String? usuarioNegocioId}) {
    return Usuario._internal(
      id: id,
      nombre: nombre ?? this.nombre,
      correo: correo ?? this.correo,
      direccion: direccion ?? this.direccion,
      rango_visibilidad: rango_visibilidad ?? this.rango_visibilidad,
      barrioID: barrioID ?? this.barrioID,
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
  
  Usuario copyWithModelFieldValues({
    ModelFieldValue<String>? nombre,
    ModelFieldValue<String>? correo,
    ModelFieldValue<String>? direccion,
    ModelFieldValue<int?>? rango_visibilidad,
    ModelFieldValue<String?>? barrioID,
    ModelFieldValue<Barrio>? barrio,
    ModelFieldValue<String>? telefono,
    ModelFieldValue<String?>? foto_perfil,
    ModelFieldValue<List<String>?>? intereses,
    ModelFieldValue<Negocio?>? negocio,
    ModelFieldValue<List<Publicacion>?>? publicaciones,
    ModelFieldValue<List<Mensaje>?>? mensajesEnviados,
    ModelFieldValue<List<Mensaje>?>? mensajesRecibidos,
    ModelFieldValue<List<Review>?>? reviews,
    ModelFieldValue<List<UsuarioGrupo>?>? grupos,
    ModelFieldValue<List<Grupo>?>? gruposCreados,
    ModelFieldValue<List<Cupon>?>? cupones,
    ModelFieldValue<String?>? usuarioNegocioId
  }) {
    return Usuario._internal(
      id: id,
      nombre: nombre == null ? this.nombre : nombre.value,
      correo: correo == null ? this.correo : correo.value,
      direccion: direccion == null ? this.direccion : direccion.value,
      rango_visibilidad: rango_visibilidad == null ? this.rango_visibilidad : rango_visibilidad.value,
      barrioID: barrioID == null ? this.barrioID : barrioID.value,
      barrio: barrio == null ? this.barrio : barrio.value,
      telefono: telefono == null ? this.telefono : telefono.value,
      foto_perfil: foto_perfil == null ? this.foto_perfil : foto_perfil.value,
      intereses: intereses == null ? this.intereses : intereses.value,
      negocio: negocio == null ? this.negocio : negocio.value,
      publicaciones: publicaciones == null ? this.publicaciones : publicaciones.value,
      mensajesEnviados: mensajesEnviados == null ? this.mensajesEnviados : mensajesEnviados.value,
      mensajesRecibidos: mensajesRecibidos == null ? this.mensajesRecibidos : mensajesRecibidos.value,
      reviews: reviews == null ? this.reviews : reviews.value,
      grupos: grupos == null ? this.grupos : grupos.value,
      gruposCreados: gruposCreados == null ? this.gruposCreados : gruposCreados.value,
      cupones: cupones == null ? this.cupones : cupones.value,
      usuarioNegocioId: usuarioNegocioId == null ? this.usuarioNegocioId : usuarioNegocioId.value
    );
  }
  
  Usuario.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _nombre = json['nombre'],
      _correo = json['correo'],
      _direccion = json['direccion'],
      _rango_visibilidad = (json['rango_visibilidad'] as num?)?.toInt(),
      _barrioID = json['barrioID'],
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
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null,
      _usuarioNegocioId = json['usuarioNegocioId'];
  
  Map<String, dynamic> toJson() => {
    'id': id, 'nombre': _nombre, 'correo': _correo, 'direccion': _direccion, 'rango_visibilidad': _rango_visibilidad, 'barrioID': _barrioID, 'barrio': _barrio?.toJson(), 'telefono': _telefono, 'foto_perfil': _foto_perfil, 'intereses': _intereses, 'negocio': _negocio?.toJson(), 'publicaciones': _publicaciones?.map((Publicacion? e) => e?.toJson()).toList(), 'mensajesEnviados': _mensajesEnviados?.map((Mensaje? e) => e?.toJson()).toList(), 'mensajesRecibidos': _mensajesRecibidos?.map((Mensaje? e) => e?.toJson()).toList(), 'reviews': _reviews?.map((Review? e) => e?.toJson()).toList(), 'grupos': _grupos?.map((UsuarioGrupo? e) => e?.toJson()).toList(), 'gruposCreados': _gruposCreados?.map((Grupo? e) => e?.toJson()).toList(), 'cupones': _cupones?.map((Cupon? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format(), 'usuarioNegocioId': _usuarioNegocioId
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'nombre': _nombre,
    'correo': _correo,
    'direccion': _direccion,
    'rango_visibilidad': _rango_visibilidad,
    'barrioID': _barrioID,
    'barrio': _barrio,
    'telefono': _telefono,
    'foto_perfil': _foto_perfil,
    'intereses': _intereses,
    'negocio': _negocio,
    'publicaciones': _publicaciones,
    'mensajesEnviados': _mensajesEnviados,
    'mensajesRecibidos': _mensajesRecibidos,
    'reviews': _reviews,
    'grupos': _grupos,
    'gruposCreados': _gruposCreados,
    'cupones': _cupones,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt,
    'usuarioNegocioId': _usuarioNegocioId
  };

  static final amplify_core.QueryModelIdentifier<UsuarioModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<UsuarioModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final NOMBRE = amplify_core.QueryField(fieldName: "nombre");
  static final CORREO = amplify_core.QueryField(fieldName: "correo");
  static final DIRECCION = amplify_core.QueryField(fieldName: "direccion");
  static final RANGO_VISIBILIDAD = amplify_core.QueryField(fieldName: "rango_visibilidad");
  static final BARRIOID = amplify_core.QueryField(fieldName: "barrioID");
  static final BARRIO = amplify_core.QueryField(
    fieldName: "barrio",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Barrio'));
  static final TELEFONO = amplify_core.QueryField(fieldName: "telefono");
  static final FOTO_PERFIL = amplify_core.QueryField(fieldName: "foto_perfil");
  static final INTERESES = amplify_core.QueryField(fieldName: "intereses");
  static final NEGOCIO = amplify_core.QueryField(
    fieldName: "negocio",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Negocio'));
  static final PUBLICACIONES = amplify_core.QueryField(
    fieldName: "publicaciones",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Publicacion'));
  static final MENSAJESENVIADOS = amplify_core.QueryField(
    fieldName: "mensajesEnviados",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mensaje'));
  static final MENSAJESRECIBIDOS = amplify_core.QueryField(
    fieldName: "mensajesRecibidos",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Mensaje'));
  static final REVIEWS = amplify_core.QueryField(
    fieldName: "reviews",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static final GRUPOS = amplify_core.QueryField(
    fieldName: "grupos",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'UsuarioGrupo'));
  static final GRUPOSCREADOS = amplify_core.QueryField(
    fieldName: "gruposCreados",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Grupo'));
  static final CUPONES = amplify_core.QueryField(
    fieldName: "cupones",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Cupon'));
  static final USUARIONEGOCIOID = amplify_core.QueryField(fieldName: "usuarioNegocioId");
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Usuario";
    modelSchemaDefinition.pluralName = "Usuarios";
    
    modelSchemaDefinition.authRules = [
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.PUBLIC,
        operations: const [
          amplify_core.ModelOperation.CREATE,
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE
        ]),
      amplify_core.AuthRule(
        authStrategy: amplify_core.AuthStrategy.OWNER,
        ownerField: "owner",
        identityClaim: "cognito:username",
        provider: amplify_core.AuthRuleProvider.USERPOOLS,
        operations: const [
          amplify_core.ModelOperation.READ,
          amplify_core.ModelOperation.UPDATE,
          amplify_core.ModelOperation.DELETE
        ])
    ];
    
    modelSchemaDefinition.indexes = [
      amplify_core.ModelIndex(fields: const ["barrioID"], name: "byBarrio")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Usuario.NOMBRE,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Usuario.CORREO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Usuario.DIRECCION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Usuario.RANGO_VISIBILIDAD,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.int)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Usuario.BARRIOID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Usuario.BARRIO,
      isRequired: true,
      targetNames: ['id'],
      ofModelName: 'Barrio'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Usuario.TELEFONO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Usuario.FOTO_PERFIL,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Usuario.INTERESES,
      isRequired: false,
      isArray: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.collection, ofModelName: amplify_core.ModelFieldTypeEnum.string.name)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasOne(
      key: Usuario.NEGOCIO,
      isRequired: false,
      ofModelName: 'Negocio',
      associatedKey: Negocio.USUARIO
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Usuario.PUBLICACIONES,
      isRequired: false,
      ofModelName: 'Publicacion',
      associatedKey: Publicacion.USUARIO
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Usuario.MENSAJESENVIADOS,
      isRequired: false,
      ofModelName: 'Mensaje',
      associatedKey: Mensaje.EMISOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Usuario.MENSAJESRECIBIDOS,
      isRequired: false,
      ofModelName: 'Mensaje',
      associatedKey: Mensaje.RECEPTOR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Usuario.REVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.USER
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Usuario.GRUPOS,
      isRequired: false,
      ofModelName: 'UsuarioGrupo',
      associatedKey: UsuarioGrupo.USUARIO
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Usuario.GRUPOSCREADOS,
      isRequired: false,
      ofModelName: 'Grupo',
      associatedKey: Grupo.CREADO_POR
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Usuario.CUPONES,
      isRequired: false,
      ofModelName: 'Cupon',
      associatedKey: Cupon.ID_USUARIO
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
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Usuario.USUARIONEGOCIOID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
  });
}

class _UsuarioModelType extends amplify_core.ModelType<Usuario> {
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
class UsuarioModelIdentifier implements amplify_core.ModelIdentifier<Usuario> {
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