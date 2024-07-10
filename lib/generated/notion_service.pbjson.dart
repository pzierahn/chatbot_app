//
//  Generated code. Do not modify.
//  source: notion_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use notionApiKeyDescriptor instead')
const NotionApiKey$json = {
  '1': 'NotionApiKey',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
  ],
};

/// Descriptor for `NotionApiKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notionApiKeyDescriptor = $convert.base64Decode(
    'CgxOb3Rpb25BcGlLZXkSEAoDa2V5GAEgASgJUgNrZXk=');

@$core.Deprecated('Use notionPromptDescriptor instead')
const NotionPrompt$json = {
  '1': 'NotionPrompt',
  '2': [
    {'1': 'database_id', '3': 1, '4': 1, '5': 9, '10': 'databaseId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'prompt', '3': 3, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'modelOptions', '3': 4, '4': 1, '5': 11, '6': '.chatbot.chat.v1.ModelOptions', '10': 'modelOptions'},
  ],
};

/// Descriptor for `NotionPrompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List notionPromptDescriptor = $convert.base64Decode(
    'CgxOb3Rpb25Qcm9tcHQSHwoLZGF0YWJhc2VfaWQYASABKAlSCmRhdGFiYXNlSWQSIwoNY29sbG'
    'VjdGlvbl9pZBgCIAEoCVIMY29sbGVjdGlvbklkEhYKBnByb21wdBgDIAEoCVIGcHJvbXB0EkEK'
    'DG1vZGVsT3B0aW9ucxgEIAEoCzIdLmNoYXRib3QuY2hhdC52MS5Nb2RlbE9wdGlvbnNSDG1vZG'
    'VsT3B0aW9ucw==');

@$core.Deprecated('Use executionResultDescriptor instead')
const ExecutionResult$json = {
  '1': 'ExecutionResult',
  '2': [
    {'1': 'document', '3': 1, '4': 1, '5': 9, '10': 'document'},
  ],
};

/// Descriptor for `ExecutionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List executionResultDescriptor = $convert.base64Decode(
    'Cg9FeGVjdXRpb25SZXN1bHQSGgoIZG9jdW1lbnQYASABKAlSCGRvY3VtZW50');

@$core.Deprecated('Use databasesIDDescriptor instead')
const DatabasesID$json = {
  '1': 'DatabasesID',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DatabasesID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List databasesIDDescriptor = $convert.base64Decode(
    'CgtEYXRhYmFzZXNJRBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use databasesDescriptor instead')
const Databases$json = {
  '1': 'Databases',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.chatbot.notion.v2.Databases.Item', '10': 'items'},
  ],
  '3': [Databases_Item$json],
};

@$core.Deprecated('Use databasesDescriptor instead')
const Databases_Item$json = {
  '1': 'Item',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Databases`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List databasesDescriptor = $convert.base64Decode(
    'CglEYXRhYmFzZXMSNwoFaXRlbXMYASADKAsyIS5jaGF0Ym90Lm5vdGlvbi52Mi5EYXRhYmFzZX'
    'MuSXRlbVIFaXRlbXMaKgoESXRlbRIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFt'
    'ZQ==');

