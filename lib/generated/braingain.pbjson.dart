//
//  Generated code. Do not modify.
//  source: braingain.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use indexProgressDescriptor instead')
const IndexProgress$json = {
  '1': 'IndexProgress',
  '2': [
    {'1': 'totalPages', '3': 1, '4': 1, '5': 13, '10': 'totalPages'},
    {'1': 'processedPages', '3': 2, '4': 1, '5': 13, '10': 'processedPages'},
  ],
};

/// Descriptor for `IndexProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexProgressDescriptor = $convert.base64Decode(
    'Cg1JbmRleFByb2dyZXNzEh4KCnRvdGFsUGFnZXMYASABKA1SCnRvdGFsUGFnZXMSJgoOcHJvY2'
    'Vzc2VkUGFnZXMYAiABKA1SDnByb2Nlc3NlZFBhZ2Vz');

@$core.Deprecated('Use documentDescriptor instead')
const Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'filename', '3': 3, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `Document`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDescriptor = $convert.base64Decode(
    'CghEb2N1bWVudBIOCgJpZBgBIAEoCVICaWQSIwoNY29sbGVjdGlvbl9pZBgCIAEoCVIMY29sbG'
    'VjdGlvbklkEhoKCGZpbGVuYW1lGAMgASgJUghmaWxlbmFtZRISCgRwYXRoGAQgASgJUgRwYXRo');

@$core.Deprecated('Use collectionDescriptor instead')
const Collection$json = {
  '1': 'Collection',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `Collection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionDescriptor = $convert.base64Decode(
    'CgpDb2xsZWN0aW9uEg4KAmlkGAEgASgJUgJpZBISCgRuYW1lGAIgASgJUgRuYW1l');

@$core.Deprecated('Use collectionsDescriptor instead')
const Collections$json = {
  '1': 'Collections',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.braingain.v1.Collections.Collection', '10': 'items'},
  ],
  '3': [Collections_Collection$json],
};

@$core.Deprecated('Use collectionsDescriptor instead')
const Collections_Collection$json = {
  '1': 'Collection',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'documents', '3': 3, '4': 1, '5': 13, '10': 'documents'},
  ],
};

/// Descriptor for `Collections`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List collectionsDescriptor = $convert.base64Decode(
    'CgtDb2xsZWN0aW9ucxJDCgVpdGVtcxgBIAMoCzItLmVuZHBvaW50LmJyYWluZ2Fpbi52MS5Db2'
    'xsZWN0aW9ucy5Db2xsZWN0aW9uUgVpdGVtcxpOCgpDb2xsZWN0aW9uEg4KAmlkGAEgASgJUgJp'
    'ZBISCgRuYW1lGAIgASgJUgRuYW1lEhwKCWRvY3VtZW50cxgDIAEoDVIJZG9jdW1lbnRz');

@$core.Deprecated('Use documentFilterDescriptor instead')
const DocumentFilter$json = {
  '1': 'DocumentFilter',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'collection', '3': 2, '4': 1, '5': 9, '10': 'collection'},
  ],
};

/// Descriptor for `DocumentFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentFilterDescriptor = $convert.base64Decode(
    'Cg5Eb2N1bWVudEZpbHRlchIUCgVxdWVyeRgBIAEoCVIFcXVlcnkSHgoKY29sbGVjdGlvbhgCIA'
    'EoCVIKY29sbGVjdGlvbg==');

@$core.Deprecated('Use documentsDescriptor instead')
const Documents$json = {
  '1': 'Documents',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.braingain.v1.Documents.Document', '10': 'items'},
  ],
  '3': [Documents_Document$json],
};

@$core.Deprecated('Use documentsDescriptor instead')
const Documents_Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'pages', '3': 3, '4': 1, '5': 13, '10': 'pages'},
  ],
};

/// Descriptor for `Documents`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentsDescriptor = $convert.base64Decode(
    'CglEb2N1bWVudHMSPwoFaXRlbXMYASADKAsyKS5lbmRwb2ludC5icmFpbmdhaW4udjEuRG9jdW'
    '1lbnRzLkRvY3VtZW50UgVpdGVtcxpMCghEb2N1bWVudBIOCgJpZBgBIAEoCVICaWQSGgoIZmls'
    'ZW5hbWUYAiABKAlSCGZpbGVuYW1lEhQKBXBhZ2VzGAMgASgNUgVwYWdlcw==');

@$core.Deprecated('Use promptOptionsDescriptor instead')
const PromptOptions$json = {
  '1': 'PromptOptions',
  '2': [
    {'1': 'model', '3': 1, '4': 1, '5': 9, '10': 'model'},
    {'1': 'temperature', '3': 2, '4': 1, '5': 2, '10': 'temperature'},
    {'1': 'max_tokens', '3': 3, '4': 1, '5': 13, '10': 'maxTokens'},
    {'1': 'threshold', '3': 4, '4': 1, '5': 2, '10': 'threshold'},
    {'1': 'limit', '3': 5, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `PromptOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptOptionsDescriptor = $convert.base64Decode(
    'Cg1Qcm9tcHRPcHRpb25zEhQKBW1vZGVsGAEgASgJUgVtb2RlbBIgCgt0ZW1wZXJhdHVyZRgCIA'
    'EoAlILdGVtcGVyYXR1cmUSHQoKbWF4X3Rva2VucxgDIAEoDVIJbWF4VG9rZW5zEhwKCXRocmVz'
    'aG9sZBgEIAEoAlIJdGhyZXNob2xkEhQKBWxpbWl0GAUgASgNUgVsaW1pdA==');

@$core.Deprecated('Use promptDescriptor instead')
const Prompt$json = {
  '1': 'Prompt',
  '2': [
    {'1': 'prompt', '3': 1, '4': 1, '5': 9, '10': 'prompt'},
    {'1': 'collection', '3': 2, '4': 1, '5': 9, '10': 'collection'},
    {'1': 'options', '3': 3, '4': 1, '5': 11, '6': '.endpoint.braingain.v1.PromptOptions', '10': 'options'},
    {'1': 'documents', '3': 4, '4': 3, '5': 11, '6': '.endpoint.braingain.v1.Prompt.Document', '10': 'documents'},
  ],
  '3': [Prompt_Document$json],
};

@$core.Deprecated('Use promptDescriptor instead')
const Prompt_Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'pages', '3': 3, '4': 3, '5': 13, '10': 'pages'},
  ],
};

/// Descriptor for `Prompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptDescriptor = $convert.base64Decode(
    'CgZQcm9tcHQSFgoGcHJvbXB0GAEgASgJUgZwcm9tcHQSHgoKY29sbGVjdGlvbhgCIAEoCVIKY2'
    '9sbGVjdGlvbhI+CgdvcHRpb25zGAMgASgLMiQuZW5kcG9pbnQuYnJhaW5nYWluLnYxLlByb21w'
    'dE9wdGlvbnNSB29wdGlvbnMSRAoJZG9jdW1lbnRzGAQgAygLMiYuZW5kcG9pbnQuYnJhaW5nYW'
    'luLnYxLlByb21wdC5Eb2N1bWVudFIJZG9jdW1lbnRzGkwKCERvY3VtZW50Eg4KAmlkGAEgASgJ'
    'UgJpZBIaCghmaWxlbmFtZRgCIAEoCVIIZmlsZW5hbWUSFAoFcGFnZXMYAyADKA1SBXBhZ2Vz');

@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage$json = {
  '1': 'ChatMessage',
  '2': [
    {'1': 'prompt', '3': 1, '4': 1, '5': 11, '6': '.endpoint.braingain.v1.Prompt', '10': 'prompt'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'documents', '3': 3, '4': 3, '5': 11, '6': '.endpoint.braingain.v1.ChatMessage.Document', '10': 'documents'},
    {'1': 'timestamp', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '9': 0, '10': 'timestamp', '17': true},
  ],
  '3': [ChatMessage_Document$json],
  '8': [
    {'1': '_timestamp'},
  ],
};

@$core.Deprecated('Use chatMessageDescriptor instead')
const ChatMessage_Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'pages', '3': 3, '4': 3, '5': 13, '10': 'pages'},
    {'1': 'scores', '3': 4, '4': 3, '5': 2, '10': 'scores'},
  ],
};

/// Descriptor for `ChatMessage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatMessageDescriptor = $convert.base64Decode(
    'CgtDaGF0TWVzc2FnZRI1CgZwcm9tcHQYASABKAsyHS5lbmRwb2ludC5icmFpbmdhaW4udjEuUH'
    'JvbXB0UgZwcm9tcHQSEgoEdGV4dBgCIAEoCVIEdGV4dBJJCglkb2N1bWVudHMYAyADKAsyKy5l'
    'bmRwb2ludC5icmFpbmdhaW4udjEuQ2hhdE1lc3NhZ2UuRG9jdW1lbnRSCWRvY3VtZW50cxI9Cg'
    'l0aW1lc3RhbXAYBCABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wSABSCXRpbWVzdGFt'
    'cIgBARpkCghEb2N1bWVudBIOCgJpZBgBIAEoCVICaWQSGgoIZmlsZW5hbWUYAiABKAlSCGZpbG'
    'VuYW1lEhQKBXBhZ2VzGAMgAygNUgVwYWdlcxIWCgZzY29yZXMYBCADKAJSBnNjb3Jlc0IMCgpf'
    'dGltZXN0YW1w');

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

