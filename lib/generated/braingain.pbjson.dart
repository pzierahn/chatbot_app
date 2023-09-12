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

@$core.Deprecated('Use previewDescriptor instead')
const Preview$json = {
  '1': 'Preview',
  '2': [
    {'1': 'image', '3': 1, '4': 1, '5': 12, '10': 'image'},
  ],
};

/// Descriptor for `Preview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List previewDescriptor = $convert.base64Decode(
    'CgdQcmV2aWV3EhQKBWltYWdlGAEgASgMUgVpbWFnZQ==');

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

@$core.Deprecated('Use storageRefDescriptor instead')
const StorageRef$json = {
  '1': 'StorageRef',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'collection', '3': 2, '4': 1, '5': 9, '10': 'collection'},
    {'1': 'filename', '3': 3, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `StorageRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageRefDescriptor = $convert.base64Decode(
    'CgpTdG9yYWdlUmVmEg4KAmlkGAEgASgJUgJpZBIeCgpjb2xsZWN0aW9uGAIgASgJUgpjb2xsZW'
    'N0aW9uEhoKCGZpbGVuYW1lGAMgASgJUghmaWxlbmFtZRISCgRwYXRoGAQgASgJUgRwYXRo');

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

@$core.Deprecated('Use documentQueryDescriptor instead')
const DocumentQuery$json = {
  '1': 'DocumentQuery',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'collection', '3': 2, '4': 1, '5': 9, '10': 'collection'},
  ],
};

/// Descriptor for `DocumentQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentQueryDescriptor = $convert.base64Decode(
    'Cg1Eb2N1bWVudFF1ZXJ5EhQKBXF1ZXJ5GAEgASgJUgVxdWVyeRIeCgpjb2xsZWN0aW9uGAIgAS'
    'gJUgpjb2xsZWN0aW9u');

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
    {'1': 'options', '3': 2, '4': 1, '5': 11, '6': '.endpoint.braingain.v1.PromptOptions', '10': 'options'},
    {'1': 'documents', '3': 3, '4': 3, '5': 11, '6': '.endpoint.braingain.v1.Prompt.Document', '10': 'documents'},
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
    'CgZQcm9tcHQSFgoGcHJvbXB0GAEgASgJUgZwcm9tcHQSPgoHb3B0aW9ucxgCIAEoCzIkLmVuZH'
    'BvaW50LmJyYWluZ2Fpbi52MS5Qcm9tcHRPcHRpb25zUgdvcHRpb25zEkQKCWRvY3VtZW50cxgD'
    'IAMoCzImLmVuZHBvaW50LmJyYWluZ2Fpbi52MS5Qcm9tcHQuRG9jdW1lbnRSCWRvY3VtZW50cx'
    'pMCghEb2N1bWVudBIOCgJpZBgBIAEoCVICaWQSGgoIZmlsZW5hbWUYAiABKAlSCGZpbGVuYW1l'
    'EhQKBXBhZ2VzGAMgAygNUgVwYWdlcw==');

@$core.Deprecated('Use completionDescriptor instead')
const Completion$json = {
  '1': 'Completion',
  '2': [
    {'1': 'prompt', '3': 1, '4': 1, '5': 11, '6': '.endpoint.braingain.v1.Prompt', '10': 'prompt'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'documents', '3': 3, '4': 3, '5': 11, '6': '.endpoint.braingain.v1.Completion.Document', '10': 'documents'},
  ],
  '3': [Completion_Document$json],
};

@$core.Deprecated('Use completionDescriptor instead')
const Completion_Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'pages', '3': 3, '4': 3, '5': 13, '10': 'pages'},
    {'1': 'scores', '3': 4, '4': 3, '5': 2, '10': 'scores'},
  ],
};

/// Descriptor for `Completion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List completionDescriptor = $convert.base64Decode(
    'CgpDb21wbGV0aW9uEjUKBnByb21wdBgBIAEoCzIdLmVuZHBvaW50LmJyYWluZ2Fpbi52MS5Qcm'
    '9tcHRSBnByb21wdBISCgR0ZXh0GAIgASgJUgR0ZXh0EkgKCWRvY3VtZW50cxgDIAMoCzIqLmVu'
    'ZHBvaW50LmJyYWluZ2Fpbi52MS5Db21wbGV0aW9uLkRvY3VtZW50Uglkb2N1bWVudHMaZAoIRG'
    '9jdW1lbnQSDgoCaWQYASABKAlSAmlkEhoKCGZpbGVuYW1lGAIgASgJUghmaWxlbmFtZRIUCgVw'
    'YWdlcxgDIAMoDVIFcGFnZXMSFgoGc2NvcmVzGAQgAygCUgZzY29yZXM=');

