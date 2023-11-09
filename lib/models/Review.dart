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


/** This is an auto generated class representing the Review type in your schema. */
class Review extends amplify_core.Model {
  static const classType = const _ReviewModelType();
  final String id;
  final double? _rating;
  final String? _comment;
  final Usuario? _user;
  final Negocio? _negocio;
  final amplify_core.TemporalDateTime? _createdAt;
  final amplify_core.TemporalDateTime? _updatedAt;

  @override
  getInstanceType() => classType;
  
  @Deprecated('[getId] is being deprecated in favor of custom primary key feature. Use getter [modelIdentifier] to get model identifier.')
  @override
  String getId() => id;
  
  ReviewModelIdentifier get modelIdentifier {
      return ReviewModelIdentifier(
        id: id
      );
  }
  
  double get rating {
    try {
      return _rating!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  String get comment {
    try {
      return _comment!;
    } catch(e) {
      throw amplify_core.AmplifyCodeGenModelException(
          amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastExceptionMessage,
          recoverySuggestion:
            amplify_core.AmplifyExceptionMessages.codeGenRequiredFieldForceCastRecoverySuggestion,
          underlyingException: e.toString()
          );
    }
  }
  
  Usuario? get user {
    return _user;
  }
  
  Negocio? get negocio {
    return _negocio;
  }
  
  amplify_core.TemporalDateTime? get createdAt {
    return _createdAt;
  }
  
  amplify_core.TemporalDateTime? get updatedAt {
    return _updatedAt;
  }
  
  const Review._internal({required this.id, required rating, required comment, user, negocio, createdAt, updatedAt}): _rating = rating, _comment = comment, _user = user, _negocio = negocio, _createdAt = createdAt, _updatedAt = updatedAt;
  
  factory Review({String? id, required double rating, required String comment, Usuario? user, Negocio? negocio}) {
    return Review._internal(
      id: id == null ? amplify_core.UUID.getUUID() : id,
      rating: rating,
      comment: comment,
      user: user,
      negocio: negocio);
  }
  
  bool equals(Object other) {
    return this == other;
  }
  
  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Review &&
      id == other.id &&
      _rating == other._rating &&
      _comment == other._comment &&
      _user == other._user &&
      _negocio == other._negocio;
  }
  
  @override
  int get hashCode => toString().hashCode;
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    
    buffer.write("Review {");
    buffer.write("id=" + "$id" + ", ");
    buffer.write("rating=" + (_rating != null ? _rating!.toString() : "null") + ", ");
    buffer.write("comment=" + "$_comment" + ", ");
    buffer.write("user=" + (_user != null ? _user!.toString() : "null") + ", ");
    buffer.write("negocio=" + (_negocio != null ? _negocio!.toString() : "null") + ", ");
    buffer.write("createdAt=" + (_createdAt != null ? _createdAt!.format() : "null") + ", ");
    buffer.write("updatedAt=" + (_updatedAt != null ? _updatedAt!.format() : "null"));
    buffer.write("}");
    
    return buffer.toString();
  }
  
  Review copyWith({double? rating, String? comment, Usuario? user, Negocio? negocio}) {
    return Review._internal(
      id: id,
      rating: rating ?? this.rating,
      comment: comment ?? this.comment,
      user: user ?? this.user,
      negocio: negocio ?? this.negocio);
  }
  
  Review copyWithModelFieldValues({
    ModelFieldValue<double>? rating,
    ModelFieldValue<String>? comment,
    ModelFieldValue<Usuario?>? user,
    ModelFieldValue<Negocio?>? negocio
  }) {
    return Review._internal(
      id: id,
      rating: rating == null ? this.rating : rating.value,
      comment: comment == null ? this.comment : comment.value,
      user: user == null ? this.user : user.value,
      negocio: negocio == null ? this.negocio : negocio.value
    );
  }
  
  Review.fromJson(Map<String, dynamic> json)  
    : id = json['id'],
      _rating = (json['rating'] as num?)?.toDouble(),
      _comment = json['comment'],
      _user = json['user']?['serializedData'] != null
        ? Usuario.fromJson(new Map<String, dynamic>.from(json['user']['serializedData']))
        : null,
      _negocio = json['negocio']?['serializedData'] != null
        ? Negocio.fromJson(new Map<String, dynamic>.from(json['negocio']['serializedData']))
        : null,
      _createdAt = json['createdAt'] != null ? amplify_core.TemporalDateTime.fromString(json['createdAt']) : null,
      _updatedAt = json['updatedAt'] != null ? amplify_core.TemporalDateTime.fromString(json['updatedAt']) : null;
  
  Map<String, dynamic> toJson() => {
    'id': id, 'rating': _rating, 'comment': _comment, 'user': _user?.toJson(), 'negocio': _negocio?.toJson(), 'createdAt': _createdAt?.format(), 'updatedAt': _updatedAt?.format()
  };
  
  Map<String, Object?> toMap() => {
    'id': id,
    'rating': _rating,
    'comment': _comment,
    'user': _user,
    'negocio': _negocio,
    'createdAt': _createdAt,
    'updatedAt': _updatedAt
  };

  static final amplify_core.QueryModelIdentifier<ReviewModelIdentifier> MODEL_IDENTIFIER = amplify_core.QueryModelIdentifier<ReviewModelIdentifier>();
  static final ID = amplify_core.QueryField(fieldName: "id");
  static final RATING = amplify_core.QueryField(fieldName: "rating");
  static final COMMENT = amplify_core.QueryField(fieldName: "comment");
  static final USER = amplify_core.QueryField(
    fieldName: "user",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Usuario'));
  static final NEGOCIO = amplify_core.QueryField(
    fieldName: "negocio",
    fieldType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.model, ofModelName: 'Negocio'));
  static var schema = amplify_core.Model.defineSchema(define: (amplify_core.ModelSchemaDefinition modelSchemaDefinition) {
    modelSchemaDefinition.name = "Review";
    modelSchemaDefinition.pluralName = "Reviews";
    
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
      amplify_core.ModelIndex(fields: const ["userId"], name: "byUser"),
      amplify_core.ModelIndex(fields: const ["negocioID"], name: "byNegocio")
    ];
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.id());
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Review.RATING,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.double)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.field(
      key: Review.COMMENT,
      isRequired: true,
      ofType: amplify_core.ModelFieldType(amplify_core.ModelFieldTypeEnum.string)
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Review.USER,
      isRequired: false,
      targetNames: ['userId'],
      ofModelName: 'Usuario'
    ));
    
    modelSchemaDefinition.addField(amplify_core.ModelFieldDefinition.belongsTo(
      key: Review.NEGOCIO,
      isRequired: false,
      targetNames: ['negocioID'],
      ofModelName: 'Negocio'
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

class _ReviewModelType extends amplify_core.ModelType<Review> {
  const _ReviewModelType();
  
  @override
  Review fromJson(Map<String, dynamic> jsonData) {
    return Review.fromJson(jsonData);
  }
  
  @override
  String modelName() {
    return 'Review';
  }
}

/**
 * This is an auto generated class representing the model identifier
 * of [Review] in your schema.
 */
class ReviewModelIdentifier implements amplify_core.ModelIdentifier<Review> {
  final String id;

  /** Create an instance of ReviewModelIdentifier using [id] the primary key. */
  const ReviewModelIdentifier({
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
  String toString() => 'ReviewModelIdentifier(id: $id)';
  
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    
    return other is ReviewModelIdentifier &&
      id == other.id;
  }
  
  @override
  int get hashCode =>
    id.hashCode;
}