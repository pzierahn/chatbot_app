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
    {'1': 'model_options', '3': 3, '4': 1, '5': 11, '6': '.chatbot.chat.v1.ModelOptions', '10': 'modelOptions'},
  ],
};

/// Descriptor for `CompletionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List completionRequestDescriptor = $convert.base64Decode(
    'ChFDb21wbGV0aW9uUmVxdWVzdBIfCgtkb2N1bWVudF9pZBgBIAEoCVIKZG9jdW1lbnRJZBIWCg'
    'Zwcm9tcHQYAiABKAlSBnByb21wdBJCCg1tb2RlbF9vcHRpb25zGAMgASgLMh0uY2hhdGJvdC5j'
    'aGF0LnYxLk1vZGVsT3B0aW9uc1IMbW9kZWxPcHRpb25z');

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

@$core.Deprecated('Use promptDescriptor instead')
const Prompt$json = {
  '1': 'Prompt',
  '2': [
    {'1': 'thread_id', '3': 1, '4': 1, '5': 9, '10': 'threadId'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'prompt', '3': 3, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'model_options', '3': 4, '4': 1, '5': 11, '6': '.chatbot.chat.v1.ModelOptions', '10': 'modelOptions'},
    {'1': 'retrieval_options', '3': 5, '4': 1, '5': 11, '6': '.chatbot.chat.v1.RetrievalOptions', '10': 'retrievalOptions'},
    {'1': 'attachments', '3': 6, '4': 3, '5': 9, '10': 'attachments'},
  ],
};

/// Descriptor for `Prompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptDescriptor = $convert.base64Decode(
    'CgZQcm9tcHQSGwoJdGhyZWFkX2lkGAEgASgJUgh0aHJlYWRJZBIjCg1jb2xsZWN0aW9uX2lkGA'
    'IgASgJUgxjb2xsZWN0aW9uSWQSFgoGcHJvbXB0GAMgASgJUgZwcm9tcHQSQgoNbW9kZWxfb3B0'
    'aW9ucxgEIAEoCzIdLmNoYXRib3QuY2hhdC52MS5Nb2RlbE9wdGlvbnNSDG1vZGVsT3B0aW9ucx'
    'JOChFyZXRyaWV2YWxfb3B0aW9ucxgFIAEoCzIhLmNoYXRib3QuY2hhdC52MS5SZXRyaWV2YWxP'
    'cHRpb25zUhByZXRyaWV2YWxPcHRpb25zEiAKC2F0dGFjaG1lbnRzGAYgAygJUgthdHRhY2htZW'
    '50cw==');

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

@$core.Deprecated('Use sourceDescriptor instead')
const Source$json = {
  '1': 'Source',
  '2': [
    {'1': 'document_id', '3': 1, '4': 1, '5': 9, '10': 'documentId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'fragments', '3': 3, '4': 3, '5': 11, '6': '.chatbot.chat.v1.Source.Fragment', '10': 'fragments'},
  ],
  '3': [Source_Fragment$json],
};

@$core.Deprecated('Use sourceDescriptor instead')
const Source_Fragment$json = {
  '1': 'Fragment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'content', '3': 2, '4': 1, '5': 9, '10': 'content'},
    {'1': 'position', '3': 3, '4': 1, '5': 13, '10': 'position'},
    {'1': 'score', '3': 4, '4': 1, '5': 2, '10': 'score'},
  ],
};

/// Descriptor for `Source`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sourceDescriptor = $convert.base64Decode(
    'CgZTb3VyY2USHwoLZG9jdW1lbnRfaWQYASABKAlSCmRvY3VtZW50SWQSEgoEbmFtZRgCIAEoCV'
    'IEbmFtZRI+CglmcmFnbWVudHMYAyADKAsyIC5jaGF0Ym90LmNoYXQudjEuU291cmNlLkZyYWdt'
    'ZW50UglmcmFnbWVudHMaZgoIRnJhZ21lbnQSDgoCaWQYASABKAlSAmlkEhgKB2NvbnRlbnQYAi'
    'ABKAlSB2NvbnRlbnQSGgoIcG9zaXRpb24YAyABKA1SCHBvc2l0aW9uEhQKBXNjb3JlGAQgASgC'
    'UgVzY29yZQ==');

@$core.Deprecated('Use messageDescriptor instead')
const Message$json = {
  '1': 'Message',
  '2': [
    {'1': 'thread_id', '3': 1, '4': 1, '5': 9, '10': 'threadId'},
    {'1': 'prompt', '3': 2, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'completion', '3': 3, '4': 1, '5': 9, '10': 'completion'},
    {'1': 'sources', '3': 4, '4': 3, '5': 11, '6': '.chatbot.chat.v1.Source', '10': 'sources'},
  ],
};

/// Descriptor for `Message`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageDescriptor = $convert.base64Decode(
    'CgdNZXNzYWdlEhsKCXRocmVhZF9pZBgBIAEoCVIIdGhyZWFkSWQSFgoGcHJvbXB0GAIgASgJUg'
    'Zwcm9tcHQSHgoKY29tcGxldGlvbhgDIAEoCVIKY29tcGxldGlvbhIxCgdzb3VyY2VzGAQgAygL'
    'MhcuY2hhdGJvdC5jaGF0LnYxLlNvdXJjZVIHc291cmNlcw==');

@$core.Deprecated('Use threadDescriptor instead')
const Thread$json = {
  '1': 'Thread',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'messages', '3': 2, '4': 3, '5': 11, '6': '.chatbot.chat.v1.Message', '10': 'messages'},
  ],
};

/// Descriptor for `Thread`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List threadDescriptor = $convert.base64Decode(
    'CgZUaHJlYWQSDgoCaWQYASABKAlSAmlkEjQKCG1lc3NhZ2VzGAIgAygLMhguY2hhdGJvdC5jaG'
    'F0LnYxLk1lc3NhZ2VSCG1lc3NhZ2Vz');

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

@$core.Deprecated('Use messageIndexDescriptor instead')
const MessageIndex$json = {
  '1': 'MessageIndex',
  '2': [
    {'1': 'thread_id', '3': 1, '4': 1, '5': 9, '10': 'threadId'},
    {'1': 'index', '3': 2, '4': 1, '5': 13, '10': 'index'},
  ],
};

/// Descriptor for `MessageIndex`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageIndexDescriptor = $convert.base64Decode(
    'CgxNZXNzYWdlSW5kZXgSGwoJdGhyZWFkX2lkGAEgASgJUgh0aHJlYWRJZBIUCgVpbmRleBgCIA'
    'EoDVIFaW5kZXg=');

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

