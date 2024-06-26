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

@$core.Deprecated('Use completionRequestDescriptor instead')
const CompletionRequest$json = {
  '1': 'CompletionRequest',
  '2': [
    {'1': 'document_id', '3': 1, '4': 1, '5': 9, '10': 'documentId'},
    {'1': 'prompt', '3': 2, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'model_options', '3': 3, '4': 1, '5': 11, '6': '.chatbot.chat.v4.ModelOptions', '10': 'modelOptions'},
  ],
};

/// Descriptor for `CompletionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List completionRequestDescriptor = $convert.base64Decode(
    'ChFDb21wbGV0aW9uUmVxdWVzdBIfCgtkb2N1bWVudF9pZBgBIAEoCVIKZG9jdW1lbnRJZBIWCg'
    'Zwcm9tcHQYAiABKAlSBnByb21wdBJCCg1tb2RlbF9vcHRpb25zGAMgASgLMh0uY2hhdGJvdC5j'
    'aGF0LnY0Lk1vZGVsT3B0aW9uc1IMbW9kZWxPcHRpb25z');

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
    {'1': 'model_options', '3': 3, '4': 1, '5': 11, '6': '.chatbot.chat.v4.ModelOptions', '10': 'modelOptions'},
  ],
};

/// Descriptor for `BatchRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List batchRequestDescriptor = $convert.base64Decode(
    'CgxCYXRjaFJlcXVlc3QSIQoMZG9jdW1lbnRfaWRzGAEgAygJUgtkb2N1bWVudElkcxIYCgdwcm'
    '9tcHRzGAIgAygJUgdwcm9tcHRzEkIKDW1vZGVsX29wdGlvbnMYAyABKAsyHS5jaGF0Ym90LmNo'
    'YXQudjQuTW9kZWxPcHRpb25zUgxtb2RlbE9wdGlvbnM=');

@$core.Deprecated('Use batchResponseDescriptor instead')
const BatchResponse$json = {
  '1': 'BatchResponse',
  '2': [
    {'1': 'document_ids', '3': 1, '4': 3, '5': 9, '10': 'documentIds'},
    {'1': 'prompts', '3': 2, '4': 3, '5': 9, '10': 'prompts'},
    {'1': 'prompt_title', '3': 3, '4': 3, '5': 9, '10': 'promptTitle'},
    {'1': 'items', '3': 4, '4': 3, '5': 11, '6': '.chatbot.chat.v4.BatchResponse.Completion', '10': 'items'},
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
    'Ej8KBWl0ZW1zGAQgAygLMikuY2hhdGJvdC5jaGF0LnY0LkJhdGNoUmVzcG9uc2UuQ29tcGxldG'
    'lvblIFaXRlbXMajAEKCkNvbXBsZXRpb24SHwoLZG9jdW1lbnRfaWQYASABKA1SCmRvY3VtZW50'
    'SWQSJQoOZG9jdW1lbnRfdGl0bGUYAiABKAlSDWRvY3VtZW50VGl0bGUSFgoGcHJvbXB0GAMgAS'
    'gNUgZwcm9tcHQSHgoKY29tcGxldGlvbhgEIAEoCVIKY29tcGxldGlvbg==');

@$core.Deprecated('Use promptDescriptor instead')
const Prompt$json = {
  '1': 'Prompt',
  '2': [
    {'1': 'threadID', '3': 1, '4': 1, '5': 9, '10': 'threadID'},
    {'1': 'prompt', '3': 2, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'model_options', '3': 3, '4': 1, '5': 11, '6': '.chatbot.chat.v4.ModelOptions', '10': 'modelOptions'},
  ],
};

/// Descriptor for `Prompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptDescriptor = $convert.base64Decode(
    'CgZQcm9tcHQSGgoIdGhyZWFkSUQYASABKAlSCHRocmVhZElEEhYKBnByb21wdBgCIAEoCVIGcH'
    'JvbXB0EkIKDW1vZGVsX29wdGlvbnMYAyABKAsyHS5jaGF0Ym90LmNoYXQudjQuTW9kZWxPcHRp'
    'b25zUgxtb2RlbE9wdGlvbnM=');

@$core.Deprecated('Use threadPromptDescriptor instead')
const ThreadPrompt$json = {
  '1': 'ThreadPrompt',
  '2': [
    {'1': 'prompt', '3': 1, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'model_options', '3': 3, '4': 1, '5': 11, '6': '.chatbot.chat.v4.ModelOptions', '10': 'modelOptions'},
    {'1': 'threshold', '3': 4, '4': 1, '5': 2, '10': 'threshold'},
    {'1': 'limit', '3': 5, '4': 1, '5': 13, '10': 'limit'},
    {'1': 'document_ids', '3': 6, '4': 3, '5': 9, '10': 'documentIds'},
  ],
};

/// Descriptor for `ThreadPrompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadPromptDescriptor = $convert.base64Decode(
    'CgxUaHJlYWRQcm9tcHQSFgoGcHJvbXB0GAEgASgJUgZwcm9tcHQSIwoNY29sbGVjdGlvbl9pZB'
    'gCIAEoCVIMY29sbGVjdGlvbklkEkIKDW1vZGVsX29wdGlvbnMYAyABKAsyHS5jaGF0Ym90LmNo'
    'YXQudjQuTW9kZWxPcHRpb25zUgxtb2RlbE9wdGlvbnMSHAoJdGhyZXNob2xkGAQgASgCUgl0aH'
    'Jlc2hvbGQSFAoFbGltaXQYBSABKA1SBWxpbWl0EiEKDGRvY3VtZW50X2lkcxgGIAMoCVILZG9j'
    'dW1lbnRJZHM=');

@$core.Deprecated('Use modelOptionsDescriptor instead')
const ModelOptions$json = {
  '1': 'ModelOptions',
  '2': [
    {'1': 'model', '3': 1, '4': 1, '5': 9, '10': 'model'},
    {'1': 'temperature', '3': 2, '4': 1, '5': 2, '10': 'temperature'},
    {'1': 'max_tokens', '3': 3, '4': 1, '5': 13, '10': 'maxTokens'},
    {'1': 'top_p', '3': 4, '4': 1, '5': 2, '10': 'topP'},
  ],
};

/// Descriptor for `ModelOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelOptionsDescriptor = $convert.base64Decode(
    'CgxNb2RlbE9wdGlvbnMSFAoFbW9kZWwYASABKAlSBW1vZGVsEiAKC3RlbXBlcmF0dXJlGAIgAS'
    'gCUgt0ZW1wZXJhdHVyZRIdCgptYXhfdG9rZW5zGAMgASgNUgltYXhUb2tlbnMSEwoFdG9wX3AY'
    'BCABKAJSBHRvcFA=');

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
    {'1': 'messages', '3': 2, '4': 3, '5': 11, '6': '.chatbot.chat.v4.Message', '10': 'messages'},
    {'1': 'referenceIDs', '3': 3, '4': 3, '5': 9, '10': 'referenceIDs'},
    {'1': 'reference_scores', '3': 4, '4': 3, '5': 11, '6': '.chatbot.chat.v4.Thread.ReferenceScoresEntry', '10': 'referenceScores'},
  ],
  '3': [Thread_ReferenceScoresEntry$json],
};

@$core.Deprecated('Use threadDescriptor instead')
const Thread_ReferenceScoresEntry$json = {
  '1': 'ReferenceScoresEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 2, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Thread`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadDescriptor = $convert.base64Decode(
    'CgZUaHJlYWQSDgoCaWQYASABKAlSAmlkEjQKCG1lc3NhZ2VzGAIgAygLMhguY2hhdGJvdC5jaG'
    'F0LnY0Lk1lc3NhZ2VSCG1lc3NhZ2VzEiIKDHJlZmVyZW5jZUlEcxgDIAMoCVIMcmVmZXJlbmNl'
    'SURzElcKEHJlZmVyZW5jZV9zY29yZXMYBCADKAsyLC5jaGF0Ym90LmNoYXQudjQuVGhyZWFkLl'
    'JlZmVyZW5jZVNjb3Jlc0VudHJ5Ug9yZWZlcmVuY2VTY29yZXMaQgoUUmVmZXJlbmNlU2NvcmVz'
    'RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAJSBXZhbHVlOgI4AQ==');

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

