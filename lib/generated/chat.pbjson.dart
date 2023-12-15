//
//  Generated code. Do not modify.
//  source: chat.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use promptDescriptor instead')
const Prompt$json = {
  '1': 'Prompt',
  '2': [
    {'1': 'prompt', '3': 1, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'model_options', '3': 3, '4': 1, '5': 11, '6': '.endpoint.brainboost.chat.v2.ModelOptions', '10': 'modelOptions'},
    {'1': 'threshold', '3': 4, '4': 1, '5': 2, '10': 'threshold'},
    {'1': 'limit', '3': 5, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'documents', '3': 6, '4': 3, '5': 11, '6': '.endpoint.brainboost.chat.v2.Prompt.Document', '10': 'documents'},
  ],
  '3': [Prompt_Document$json],
};

@$core.Deprecated('Use promptDescriptor instead')
const Prompt_Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'pages', '3': 2, '4': 3, '5': 13, '10': 'pages'},
  ],
};

/// Descriptor for `Prompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptDescriptor = $convert.base64Decode(
    'CgZQcm9tcHQSFgoGcHJvbXB0GAEgASgJUgZwcm9tcHQSIwoNY29sbGVjdGlvbl9pZBgCIAEoCV'
    'IMY29sbGVjdGlvbklkEk4KDW1vZGVsX29wdGlvbnMYAyABKAsyKS5lbmRwb2ludC5icmFpbmJv'
    'b3N0LmNoYXQudjIuTW9kZWxPcHRpb25zUgxtb2RlbE9wdGlvbnMSHAoJdGhyZXNob2xkGAQgAS'
    'gCUgl0aHJlc2hvbGQSFAoFbGltaXQYBSABKA1SBWxpbWl0EkoKCWRvY3VtZW50cxgGIAMoCzIs'
    'LmVuZHBvaW50LmJyYWluYm9vc3QuY2hhdC52Mi5Qcm9tcHQuRG9jdW1lbnRSCWRvY3VtZW50cx'
    'owCghEb2N1bWVudBIOCgJpZBgBIAEoCVICaWQSFAoFcGFnZXMYAiADKA1SBXBhZ2Vz');

@$core.Deprecated('Use modelOptionsDescriptor instead')
const ModelOptions$json = {
  '1': 'ModelOptions',
  '2': [
    {'1': 'model', '3': 4, '4': 1, '5': 9, '10': 'model'},
    {'1': 'temperature', '3': 5, '4': 1, '5': 2, '10': 'temperature'},
    {'1': 'max_tokens', '3': 6, '4': 1, '5': 13, '10': 'maxTokens'},
  ],
};

/// Descriptor for `ModelOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelOptionsDescriptor = $convert.base64Decode(
    'CgxNb2RlbE9wdGlvbnMSFAoFbW9kZWwYBCABKAlSBW1vZGVsEiAKC3RlbXBlcmF0dXJlGAUgAS'
    'gCUgt0ZW1wZXJhdHVyZRIdCgptYXhfdG9rZW5zGAYgASgNUgltYXhUb2tlbnM=');

@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage$json = {
  '1': 'ChatMessage',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'prompt', '3': 3, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'text', '3': 4, '4': 1, '5': 9, '10': 'text'},
    {'1': 'model_options', '3': 5, '4': 1, '5': 11, '6': '.endpoint.brainboost.chat.v2.ModelOptions', '10': 'modelOptions'},
    {'1': 'timestamp', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'timestamp', '17': true},
    {'1': 'references', '3': 7, '4': 3, '5': 9, '10': 'references'},
    {'1': 'scores', '3': 8, '4': 3, '5': 11, '6': '.endpoint.brainboost.chat.v2.ChatMessage.ScoresEntry', '10': 'scores'},
  ],
  '3': [ChatMessage_ScoresEntry$json],
  '8': [
    {'1': '_timestamp'},
  ],
};

@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage_ScoresEntry$json = {
  '1': 'ScoresEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 2, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageDescriptor = $convert.base64Decode(
    'CgtDaGF0TWVzc2FnZRIOCgJpZBgBIAEoCVICaWQSIwoNY29sbGVjdGlvbl9pZBgCIAEoCVIMY2'
    '9sbGVjdGlvbklkEhYKBnByb21wdBgDIAEoCVIGcHJvbXB0EhIKBHRleHQYBCABKAlSBHRleHQS'
    'TgoNbW9kZWxfb3B0aW9ucxgFIAEoCzIpLmVuZHBvaW50LmJyYWluYm9vc3QuY2hhdC52Mi5Nb2'
    'RlbE9wdGlvbnNSDG1vZGVsT3B0aW9ucxI9Cgl0aW1lc3RhbXAYBiABKAsyGi5nb29nbGUucHJv'
    'dG9idWYuVGltZXN0YW1wSABSCXRpbWVzdGFtcIgBARIeCgpyZWZlcmVuY2VzGAcgAygJUgpyZW'
    'ZlcmVuY2VzEkwKBnNjb3JlcxgIIAMoCzI0LmVuZHBvaW50LmJyYWluYm9vc3QuY2hhdC52Mi5D'
    'aGF0TWVzc2FnZS5TY29yZXNFbnRyeVIGc2NvcmVzGjkKC1Njb3Jlc0VudHJ5EhAKA2tleRgBIA'
    'EoCVIDa2V5EhQKBXZhbHVlGAIgASgCUgV2YWx1ZToCOAFCDAoKX3RpbWVzdGFtcA==');

@$core.Deprecated('Use messageIDDescriptor instead')
const MessageID$json = {
  '1': 'MessageID',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `MessageID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageIDDescriptor = $convert.base64Decode(
    'CglNZXNzYWdlSUQSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use chatMessagesDescriptor instead')
const ChatMessages$json = {
  '1': 'ChatMessages',
  '2': [
    {'1': 'ids', '3': 1, '4': 3, '5': 9, '10': 'ids'},
  ],
};

/// Descriptor for `ChatMessages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessagesDescriptor = $convert.base64Decode(
    'CgxDaGF0TWVzc2FnZXMSEAoDaWRzGAEgAygJUgNpZHM=');

