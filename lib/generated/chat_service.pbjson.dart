//
//  Generated code. Do not modify.
//  source: chat_service.proto
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
    {'1': 'threadID', '3': 1, '4': 1, '5': 9, '10': 'threadID'},
    {'1': 'prompt', '3': 2, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'model_options', '3': 3, '4': 1, '5': 11, '6': '.endpoint.brainboost.chat.v3.ModelOptions', '10': 'modelOptions'},
  ],
};

/// Descriptor for `Prompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptDescriptor = $convert.base64Decode(
    'CgZQcm9tcHQSGgoIdGhyZWFkSUQYASABKAlSCHRocmVhZElEEhYKBnByb21wdBgCIAEoCVIGcH'
    'JvbXB0Ek4KDW1vZGVsX29wdGlvbnMYAyABKAsyKS5lbmRwb2ludC5icmFpbmJvb3N0LmNoYXQu'
    'djMuTW9kZWxPcHRpb25zUgxtb2RlbE9wdGlvbnM=');

@$core.Deprecated('Use threadPromptDescriptor instead')
const ThreadPrompt$json = {
  '1': 'ThreadPrompt',
  '2': [
    {'1': 'prompt', '3': 1, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'model_options', '3': 3, '4': 1, '5': 11, '6': '.endpoint.brainboost.chat.v3.ModelOptions', '10': 'modelOptions'},
    {'1': 'threshold', '3': 4, '4': 1, '5': 2, '10': 'threshold'},
    {'1': 'limit', '3': 5, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'documents', '3': 6, '4': 3, '5': 11, '6': '.endpoint.brainboost.chat.v3.ThreadPrompt.Document', '10': 'documents'},
  ],
  '3': [ThreadPrompt_Document$json],
};

@$core.Deprecated('Use threadPromptDescriptor instead')
const ThreadPrompt_Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'pages', '3': 2, '4': 3, '5': 13, '10': 'pages'},
  ],
};

/// Descriptor for `ThreadPrompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadPromptDescriptor = $convert.base64Decode(
    'CgxUaHJlYWRQcm9tcHQSFgoGcHJvbXB0GAEgASgJUgZwcm9tcHQSIwoNY29sbGVjdGlvbl9pZB'
    'gCIAEoCVIMY29sbGVjdGlvbklkEk4KDW1vZGVsX29wdGlvbnMYAyABKAsyKS5lbmRwb2ludC5i'
    'cmFpbmJvb3N0LmNoYXQudjMuTW9kZWxPcHRpb25zUgxtb2RlbE9wdGlvbnMSHAoJdGhyZXNob2'
    'xkGAQgASgCUgl0aHJlc2hvbGQSFAoFbGltaXQYBSABKA1SBWxpbWl0ElAKCWRvY3VtZW50cxgG'
    'IAMoCzIyLmVuZHBvaW50LmJyYWluYm9vc3QuY2hhdC52My5UaHJlYWRQcm9tcHQuRG9jdW1lbn'
    'RSCWRvY3VtZW50cxowCghEb2N1bWVudBIOCgJpZBgBIAEoCVICaWQSFAoFcGFnZXMYAiADKA1S'
    'BXBhZ2Vz');

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

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'prompt', '3': 2, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'completion', '3': 3, '4': 1, '5': 9, '10': 'completion'},
    {'1': 'timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEg4KAmlkGAEgASgJUgJpZBIWCgZwcm9tcHQYAiABKAlSBnByb21wdBIeCgpjb2'
    '1wbGV0aW9uGAMgASgJUgpjb21wbGV0aW9uEjgKCXRpbWVzdGFtcBgEIAEoCzIaLmdvb2dsZS5w'
    'cm90b2J1Zi5UaW1lc3RhbXBSCXRpbWVzdGFtcA==');

@$core.Deprecated('Use threadDescriptor instead')
const Thread$json = {
  '1': 'Thread',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'messages', '3': 2, '4': 3, '5': 11, '6': '.endpoint.brainboost.chat.v3.Message', '10': 'messages'},
    {'1': 'referenceIDs', '3': 3, '4': 3, '5': 9, '10': 'referenceIDs'},
    {'1': 'reference_scores', '3': 4, '4': 3, '5': 2, '10': 'referenceScores'},
  ],
};

/// Descriptor for `Thread`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadDescriptor = $convert.base64Decode(
    'CgZUaHJlYWQSDgoCaWQYASABKAlSAmlkEkAKCG1lc3NhZ2VzGAIgAygLMiQuZW5kcG9pbnQuYn'
    'JhaW5ib29zdC5jaGF0LnYzLk1lc3NhZ2VSCG1lc3NhZ2VzEiIKDHJlZmVyZW5jZUlEcxgDIAMo'
    'CVIMcmVmZXJlbmNlSURzEikKEHJlZmVyZW5jZV9zY29yZXMYBCADKAJSD3JlZmVyZW5jZVNjb3'
    'Jlcw==');

@$core.Deprecated('Use threadIDDescriptor instead')
const ThreadID$json = {
  '1': 'ThreadID',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `ThreadID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadIDDescriptor = $convert.base64Decode(
    'CghUaHJlYWRJRBIOCgJpZBgBIAEoCVICaWQ=');

@$core.Deprecated('Use messageIDDescriptor instead')
const MessageID$json = {
  '1': 'MessageID',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'thread_id', '3': 2, '4': 1, '5': 9, '10': 'threadId'},
  ],
};

/// Descriptor for `MessageID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageIDDescriptor = $convert.base64Decode(
    'CglNZXNzYWdlSUQSDgoCaWQYASABKAlSAmlkEhsKCXRocmVhZF9pZBgCIAEoCVIIdGhyZWFkSW'
    'Q=');

@$core.Deprecated('Use threadIDsDescriptor instead')
const ThreadIDs$json = {
  '1': 'ThreadIDs',
  '2': [
    {'1': 'ids', '3': 1, '4': 3, '5': 9, '10': 'ids'},
  ],
};

/// Descriptor for `ThreadIDs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadIDsDescriptor = $convert.base64Decode(
    'CglUaHJlYWRJRHMSEAoDaWRzGAEgAygJUgNpZHM=');

