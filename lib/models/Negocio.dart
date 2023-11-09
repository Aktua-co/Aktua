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


/** This is an auto generated class representing the Negocio type in your schema. */
class Negocio extends amplify_core.Model {
  static const classType = const _NegocioModelType();
  final String id;
  final String? _usuarioID;
  final Usuario? _usuario;
  final String? _nombre_negocio;
  final String? _correo;
  final String? _logo;
  final String? _banner;
  final String? _direccion;
  final String? _telefono;
  final Barrio? _barrio;
  final String? _categoriaID;
  final Categoria? _categoria;
  final String? _descripcion;
  final String? _horario;
  final double? _puntuacion_promedio;
  final List<Cupon>? _cupones;
  final List<Review>? _reviews;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

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
  
  String? get usuarioID {
    return _usuarioID;
  }
  
  Usuario? get usuario {
    return _usuario;
  }
  
  String get nombre_negocio {
    try {
      return _nombre_negocio!;
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
  
  Barrio? get barrio {
    return _barrio;
  }
  
  String? get categoriaID {
    return _categoriaID;
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
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Negocio._internal({required this.id, usuarioID, usuario, required nombre_negocio, required correo, logo, banner, required direccion, required telefono, barrio, categoriaID, categoria, descripcion, horario, puntuacion_promedio, cupones, reviews, createdAt, updatedAt}): _usuarioID = usuarioID, _usuario = usuario, _nombre_negocio = nombre_negocio, _correo = correo, _logo = logo, _banner = banner, _direccion = direccion, _telefono = telefono, _barrio = barrio, _categoriaID = categoriaID, _categoria = categoria, _descripcion = descripcion, _horario = horario, _puntuacion_promedio = puntuacion_promedio, _cupones = cupones, _reviews = reviews, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Negocio({String? id, String? usuarioID, Usuario? usuario, required String nombre_negocio, required String correo, String? logo, String? banner, required String direccion, required String telefono, Barrio? barrio, String? categoriaID, Categoria? categoria, String? descripcion, String? horario, double? puntuacion_promedio, List<Cupon>? cupones, List<Review>? reviews}) {
    return Negocio._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      usuarioID: usuarioID,
      usuario: usuario,
      nombre_negocio: nombre_negocio,
      correo: correo,
      logo: logo,
      banner: banner,
      direccion: direccion,
      telefono: telefono,
      barrio: barrio,
      categoriaID: categoriaID,
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
      _usuarioID == other._usuarioID &&
      _usuario == other._usuario &&
      _nombre_negocio == other._nombre_negocio &&
      _correo == other._correo &&
      _logo == other._logo &&
      _banner == other._banner &&
      _direccion == other._direccion &&
      _telefono == other._telefono &&
      _barrio == other._barrio &&
      _categoriaID == other._categoriaID &&
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
    buffer.write("usuarioID=" + "$_usuarioID" + ", ");
    buffer.write("usuario=" + (_usuario != null ? _usuario!.toString() : "null") + ", ");
    buffer.write("nombre_negocio=" + "$_nombre_negocio" + ", ");
    buffer.write("correo=" + "$_correo" + ", ");
    buffer.write("logo=" + "$_logo" + ", ");
    buffer.write("banner=" + "$_banner" + ", ");
    buffer.write("direccion=" + "$_direccion" + ", ");
    buffer.write("telefono=" + "$_telefono" + ", ");
    buffer.write("barrio=" + (_barrio != null ? _barrio!.toString() : "null") + ", ");
    buffer.write("categoriaID=" + "$_categoriaID" + ", ");
    buffer.write("categoria=" + (_categoria != null ? _categoria!.toString() : "null") + ", ");
    buffer.write("descripcion=" + "$_descripcion" + ", ");
    buffer.write("horario=" + "$_horario" + ", ");
    buffer.write("puntuacion_promedio=" + (_puntuacion_promedio != null ? _puntuacion_promedio!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Negocio copyWith({String? usuarioID, Usuario? usuario, String? nombre_negocio, String? correo, String? logo, String? banner, String? direccion, String? telefono, Barrio? barrio, String? categoriaID, Categoria? categoria, String? descripcion, String? horario, double? puntuacion_promedio, List<Cupon>? cupones, List<Review>? reviews}) {
    return Negocio._internal(
      id: id,
      usuarioID: usuarioID ?? this.usuarioID,
      usuario: usuario ?? this.usuario,
      nombre_negocio: nombre_negocio ?? this.nombre_negocio,
      correo: correo ?? this.correo,
      logo: logo ?? this.logo,
      banner: banner ?? this.banner,
      direccion: direccion ?? this.direccion,
      telefono: telefono ?? this.telefono,
      barrio: barrio ?? this.barrio,
      categoriaID: categoriaID ?? this.categoriaID,
      categoria: categoria ?? this.categoria,
      descripcion: descripcion ?? this.descripcion,
      horario: horario ?? this.horario,
      puntuacion_promedio: puntuacion_promedio ?? this.puntuacion_promedio,
      cupones: cupones ?? this.cupones,
      reviews: reviews ?? this.reviews);
  }
  
  Negocio copyWithModelFieldValues({
    ModelFieldValue<String?>? usuarioID,
    ModelFieldValue<Usuario?>? usuario,
    ModelFieldValue<String>? nombre_negocio,
    ModelFieldValue<String>? correo,
    ModelFieldValue<String?>? logo,
    ModelFieldValue<String?>? banner,
    ModelFieldValue<String>? direccion,
    ModelFieldValue<String>? telefono,
    ModelFieldValue<Barrio?>? barrio,
    ModelFieldValue<String?>? categoriaID,
    ModelFieldValue<Categoria?>? categoria,
    ModelFieldValue<String?>? descripcion,
    ModelFieldValue<String?>? horario,
    ModelFieldValue<double?>? puntuacion_promedio,
    ModelFieldValue<List<Cupon>?>? cupones,
    ModelFieldValue<List<Review>?>? reviews
  }) {
    return Negocio._internal(
      id: id,
      usuarioID: usuarioID == null ? this.usuarioID : usuarioID.value,
      usuario: usuario == null ? this.usuario : usuario.value,
      nombre_negocio: nombre_negocio == null ? this.nombre_negocio : nombre_negocio.value,
      correo: correo == null ? this.correo : correo.value,
      logo: logo == null ? this.logo : logo.value,
      banner: banner == null ? this.banner : banner.value,
      direccion: direccion == null ? this.direccion : direccion.value,
      telefono: telefono == null ? this.telefono : telefono.value,
      barrio: barrio == null ? this.barrio : barrio.value,
      categoriaID: categoriaID == null ? this.categoriaID : categoriaID.value,
      categoria: categoria == null ? this.categoria : categoria.value,
      descripcion: descripcion == null ? this.descripcion : descripcion.value,
      horario: horario == null ? this.horario : horario.value,
      puntuacion_promedio: puntuacion_promedio == null ? this.puntuacion_promedio : puntuacion_promedio.value,
      cupones: cupones == null ? this.cupones : cupones.value,
      reviews: reviews == null ? this.reviews : reviews.value
    );
  }
  
  Negocio.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _usuarioID = json['usuarioID'],
      _usuario = json['usuario']?['serializedData'] != null
        ? Usuario.fromJson(new Map<String, dynamic>.from(json['usuario']['serializedData']))
        : null,
      _nombre_negocio = json['nombre_negocio'],
      _correo = json['correo'],
      _logo = json['logo'],
      _banner = json['banner'],
      _direccion = json['direccion'],
      _telefono = json['telefono'],
      _barrio = json['barrio']?['serializedData'] != null
        ? Barrio.fromJson(new Map<String, dynamic>.from(json['barrio']['serializedData']))
        : null,
      _categoriaID = json['categoriaID'],
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
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'usuarioID': _usuarioID, 'usuario': _usuario?.toJson(), 'nombre_negocio': _nombre_negocio, 'correo': _correo, 'logo': _logo, 'banner': _banner, 'direccion': _direccion, 'telefono': _telefono, 'barrio': _barrio?.toJson(), 'categoriaID': _categoriaID, 'categoria': _categoria?.toJson(), 'descripcion': _descripcion, 'horario': _horario, 'puntuacion_promedio': _puntuacion_promedio, 'cupones': _cupones?.map((Cupon? e) => e?.toJson()).toList(), 'reviews': _reviews?.map((Review? e) => e?.toJson()).toList(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'usuarioID': _usuarioID,
    'usuario': _usuario,
    'nombre_negocio': _nombre_negocio,
    'correo': _correo,
    'logo': _logo,
    'banner': _banner,
    'direccion': _direccion,
    'telefono': _telefono,
    'barrio': _barrio,
    'categoriaID': _categoriaID,
    'categoria': _categoria,
    'descripcion': _descripcion,
    'horario': _horario,
    'puntuacion_promedio': _puntuacion_promedio,
    'cupones': _cupones,
    'reviews': _reviews,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<NegocioModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<NegocioModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final USUARIOID = amplify_core.QueryField(fieldName: "usuarioID");
  static final USUARIO = amplify_core.QueryField(
    fieldName: "usuario",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final NOMBRE_NEGOCIO = amplify_core.QueryField(fieldName: "nombre_negocio");
  static final CORREO = amplify_core.QueryField(fieldName: "correo");
  static final LOGO = amplify_core.QueryField(fieldName: "logo");
  static final BANNER = amplify_core.QueryField(fieldName: "banner");
  static final DIRECCION = amplify_core.QueryField(fieldName: "direccion");
  static final TELEFONO = amplify_core.QueryField(fieldName: "telefono");
  static final BARRIO = amplify_core.QueryField(
    fieldName: "barrio",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Barrio'));
  static final CATEGORIAID = amplify_core.QueryField(fieldName: "categoriaID");
  static final CATEGORIA = amplify_core.QueryField(
    fieldName: "categoria",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Categoria'));
  static final DESCRIPCION = amplify_core.QueryField(fieldName: "descripcion");
  static final HORARIO = amplify_core.QueryField(fieldName: "horario");
  static final PUNTUACION_PROMEDIO = amplify_core.QueryField(fieldName: "puntuacion_promedio");
  static final CUPONES = amplify_core.QueryField(
    fieldName: "cupones",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Cupon'));
  static final REVIEWS = amplify_core.QueryField(
    fieldName: "reviews",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Review'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Negocio";
    modelSchemaDefinition.pluralName = "Negocios";
    
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
      amplify_core.ModelIndex(fields: const ["usuarioID"], name: "byUsuario"),
      amplify_core.ModelIndex(fields: const ["barrioID"], name: "byBarrio"),
      amplify_core.ModelIndex(fields: const ["categoriaID"], name: "byCatergoria")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.USUARIOID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Negocio.USUARIO,
      isRequired: false,
      targetNames: ['id'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.NOMBRE_NEGOCIO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.CORREO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.LOGO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.BANNER,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.DIRECCION,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.TELEFONO,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Negocio.BARRIO,
      isRequired: false,
      targetNames: ['barrioID'],
      ofModelName: 'Barrio'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.CATEGORIAID,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Negocio.CATEGORIA,
      isRequired: false,
      targetNames: ['id'],
      ofModelName: 'Categoria'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.DESCRIPCION,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.HORARIO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Negocio.PUNTUACION_PROMEDIO,
      isRequired: false,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Negocio.CUPONES,
      isRequired: false,
      ofModelName: 'Cupon',
      associatedKey: Cupon.NEGOCIOID
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.hasMany(
      key: Negocio.REVIEWS,
      isRequired: false,
      ofModelName: 'Review',
      associatedKey: Review.NEGOCIO
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

class _NegocioModelType extends amplify_core.ModelType<Negocio> {
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
class NegocioModelIdentifier implements amplify_core.ModelIdentifier<Negocio> {
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