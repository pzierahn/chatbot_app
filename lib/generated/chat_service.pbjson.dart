//
//  Generated code. Do not modify.
//  source: chat_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use collectionIdDescriptor instead')
const CollectionId$json = {
  '1': 'CollectionId',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `CollectionId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionIdDescriptor = $convert.base64Decode(
    'CgxDb2xsZWN0aW9uSWQSDgoCaWQYASABKAlSAmlk');

@$core.Deprecated('Use completionRequestDescriptor instead')
const CompletionRequest$json = {
  '1': 'CompletionRequest',
  '2': [
    {'1': 'document_id', '3': 1, '4': 1, '5': 9, '10': 'documentId'},
    {'1': 'prompt', '3': 2, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'model_options', '3': 3, '4': 1, '5': 11, '6': '.chatbot.chat.v5.ModelOptions', '10': 'modelOptions'},
  ],
};

/// Descriptor for `CompletionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List completionRequestDescriptor = $convert.base64Decode(
    'ChFDb21wbGV0aW9uUmVxdWVzdBIfCgtkb2N1bWVudF9pZBgBIAEoCVIKZG9jdW1lbnRJZBIWCg'
    'Zwcm9tcHQYAiABKAlSBnByb21wdBJCCg1tb2RlbF9vcHRpb25zGAMgASgLMh0uY2hhdGJvdC5j'
    'aGF0LnY1Lk1vZGVsT3B0aW9uc1IMbW9kZWxPcHRpb25z');

@$core.Deprecated('Use completionResponseDescriptor instead')
const CompletionResponse$json = {
  '1': 'CompletionResponse',
  '2': [
    {'1': 'completion', '3': 1, '4': 1, '5': 9, '10': 'completion'},
  ],
};

/// Descriptor for `CompletionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List completionResponseDescriptor = $convert.base64Decode(
    'ChJDb21wbGV0aW9uUmVzcG9uc2USHgoKY29tcGxldGlvbhgBIAEoCVIKY29tcGxldGlvbg==');

@$core.Deprecated('Use batchRequestDescriptor instead')
const BatchRequest$json = {
  '1': 'BatchRequest',
  '2': [
    {'1': 'document_ids', '3': 1, '4': 3, '5': 9, '10': 'documentIds'},
    {'1': 'prompts', '3': 2, '4': 3, '5': 9, '10': 'prompts'},
    {'1': 'model_options', '3': 3, '4': 1, '5': 11, '6': '.chatbot.chat.v5.ModelOptions', '10': 'modelOptions'},
  ],
};

/// Descriptor for `BatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchRequestDescriptor = $convert.base64Decode(
    'CgxCYXRjaFJlcXVlc3QSIQoMZG9jdW1lbnRfaWRzGAEgAygJUgtkb2N1bWVudElkcxIYCgdwcm'
    '9tcHRzGAIgAygJUgdwcm9tcHRzEkIKDW1vZGVsX29wdGlvbnMYAyABKAsyHS5jaGF0Ym90LmNo'
    'YXQudjUuTW9kZWxPcHRpb25zUgxtb2RlbE9wdGlvbnM=');

@$core.Deprecated('Use batchResponseDescriptor instead')
const BatchResponse$json = {
  '1': 'BatchResponse',
  '2': [
    {'1': 'document_ids', '3': 1, '4': 3, '5': 9, '10': 'documentIds'},
    {'1': 'prompts', '3': 2, '4': 3, '5': 9, '10': 'prompts'},
    {'1': 'prompt_title', '3': 3, '4': 3, '5': 9, '10': 'promptTitle'},
    {'1': 'items', '3': 4, '4': 3, '5': 11, '6': '.chatbot.chat.v5.BatchResponse.Completion', '10': 'items'},
  ],
  '3': [BatchResponse_Completion$json],
};

@$core.Deprecated('Use batchResponseDescriptor instead')
const BatchResponse_Completion$json = {
  '1': 'Completion',
  '2': [
    {'1': 'document_id', '3': 1, '4': 1, '5': 13, '10': 'documentId'},
    {'1': 'document_title', '3': 2, '4': 1, '5': 9, '10': 'documentTitle'},
    {'1': 'prompt', '3': 3, '4': 1, '5': 13, '10': 'prompt'},
    {'1': 'completion', '3': 4, '4': 1, '5': 9, '10': 'completion'},
  ],
};

/// Descriptor for `BatchResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchResponseDescriptor = $convert.base64Decode(
    'Cg1CYXRjaFJlc3BvbnNlEiEKDGRvY3VtZW50X2lkcxgBIAMoCVILZG9jdW1lbnRJZHMSGAoHcH'
    'JvbXB0cxgCIAMoCVIHcHJvbXB0cxIhCgxwcm9tcHRfdGl0bGUYAyADKAlSC3Byb21wdFRpdGxl'
    'Ej8KBWl0ZW1zGAQgAygLMikuY2hhdGJvdC5jaGF0LnY1LkJhdGNoUmVzcG9uc2UuQ29tcGxldG'
    'lvblIFaXRlbXMajAEKCkNvbXBsZXRpb24SHwoLZG9jdW1lbnRfaWQYASABKA1SCmRvY3VtZW50'
    'SWQSJQoOZG9jdW1lbnRfdGl0bGUYAiABKAlSDWRvY3VtZW50VGl0bGUSFgoGcHJvbXB0GAMgAS'
    'gNUgZwcm9tcHQSHgoKY29tcGxldGlvbhgEIAEoCVIKY29tcGxldGlvbg==');

@$core.Deprecated('Use promptDescriptor instead')
const Prompt$json = {
  '1': 'Prompt',
  '2': [
    {'1': 'thread_id', '3': 1, '4': 1, '5': 9, '10': 'threadId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'prompt', '3': 3, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'model_options', '3': 4, '4': 1, '5': 11, '6': '.chatbot.chat.v5.ModelOptions', '10': 'modelOptions'},
    {'1': 'retrieval_options', '3': 5, '4': 1, '5': 11, '6': '.chatbot.chat.v5.RetrievalOptions', '10': 'retrievalOptions'},
  ],
};

/// Descriptor for `Prompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptDescriptor = $convert.base64Decode(
    'CgZQcm9tcHQSGwoJdGhyZWFkX2lkGAEgASgJUgh0aHJlYWRJZBIjCg1jb2xsZWN0aW9uX2lkGA'
    'IgASgJUgxjb2xsZWN0aW9uSWQSFgoGcHJvbXB0GAMgASgJUgZwcm9tcHQSQgoNbW9kZWxfb3B0'
    'aW9ucxgEIAEoCzIdLmNoYXRib3QuY2hhdC52NS5Nb2RlbE9wdGlvbnNSDG1vZGVsT3B0aW9ucx'
    'JOChFyZXRyaWV2YWxfb3B0aW9ucxgFIAEoCzIhLmNoYXRib3QuY2hhdC52NS5SZXRyaWV2YWxP'
    'cHRpb25zUhByZXRyaWV2YWxPcHRpb25z');

@$core.Deprecated('Use modelOptionsDescriptor instead')
const ModelOptions$json = {
  '1': 'ModelOptions',
  '2': [
    {'1': 'model_id', '3': 1, '4': 1, '5': 9, '10': 'modelId'},
    {'1': 'temperature', '3': 2, '4': 1, '5': 2, '10': 'temperature'},
    {'1': 'max_tokens', '3': 3, '4': 1, '5': 13, '10': 'maxTokens'},
    {'1': 'top_p', '3': 4, '4': 1, '5': 2, '10': 'topP'},
  ],
};

/// Descriptor for `ModelOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelOptionsDescriptor = $convert.base64Decode(
    'CgxNb2RlbE9wdGlvbnMSGQoIbW9kZWxfaWQYASABKAlSB21vZGVsSWQSIAoLdGVtcGVyYXR1cm'
    'UYAiABKAJSC3RlbXBlcmF0dXJlEh0KCm1heF90b2tlbnMYAyABKA1SCW1heFRva2VucxITCgV0'
    'b3BfcBgEIAEoAlIEdG9wUA==');

@$core.Deprecated('Use retrievalOptionsDescriptor instead')
const RetrievalOptions$json = {
  '1': 'RetrievalOptions',
  '2': [
    {'1': 'enabled', '3': 1, '4': 1, '5': 8, '10': 'enabled'},
    {'1': 'threshold', '3': 2, '4': 1, '5': 2, '10': 'threshold'},
    {'1': 'documents', '3': 3, '4': 1, '5': 13, '10': 'documents'},
  ],
};

/// Descriptor for `RetrievalOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List retrievalOptionsDescriptor = $convert.base64Decode(
    'ChBSZXRyaWV2YWxPcHRpb25zEhgKB2VuYWJsZWQYASABKAhSB2VuYWJsZWQSHAoJdGhyZXNob2'
    'xkGAIgASgCUgl0aHJlc2hvbGQSHAoJZG9jdW1lbnRzGAMgASgNUglkb2N1bWVudHM=');

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'thread_id', '3': 1, '4': 1, '5': 9, '10': 'threadId'},
    {'1': 'prompt', '3': 2, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'completion', '3': 3, '4': 1, '5': 9, '10': 'completion'},
    {'1': 'timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'timestamp'},
    {'1': 'references', '3': 5, '4': 3, '5': 11, '6': '.chatbot.chat.v5.Message.ReferencesEntry', '10': 'references'},
  ],
  '3': [Message_ReferencesEntry$json],
};

@$core.Deprecated('Use messageDescriptor instead')
const Message_ReferencesEntry$json = {
  '1': 'ReferencesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 2, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEhsKCXRocmVhZF9pZBgBIAEoCVIIdGhyZWFkSWQSFgoGcHJvbXB0GAIgASgJUg'
    'Zwcm9tcHQSHgoKY29tcGxldGlvbhgDIAEoCVIKY29tcGxldGlvbhI4Cgl0aW1lc3RhbXAYBCAB'
    'KAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgl0aW1lc3RhbXASSAoKcmVmZXJlbmNlcx'
    'gFIAMoCzIoLmNoYXRib3QuY2hhdC52NS5NZXNzYWdlLlJlZmVyZW5jZXNFbnRyeVIKcmVmZXJl'
    'bmNlcxo9Cg9SZWZlcmVuY2VzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKA'
    'JSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use threadDescriptor instead')
const Thread$json = {
  '1': 'Thread',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'messages', '3': 2, '4': 3, '5': 11, '6': '.chatbot.chat.v5.Message', '10': 'messages'},
  ],
};

/// Descriptor for `Thread`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadDescriptor = $convert.base64Decode(
    'CgZUaHJlYWQSDgoCaWQYASABKAlSAmlkEjQKCG1lc3NhZ2VzGAIgAygLMhguY2hhdGJvdC5jaG'
    'F0LnY1Lk1lc3NhZ2VSCG1lc3NhZ2Vz');

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

