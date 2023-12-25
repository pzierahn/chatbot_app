//
//  Generated code. Do not modify.
//  source: document_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use referenceIDsDescriptor instead')
const ReferenceIDs$json = {
  '1': 'ReferenceIDs',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
  ],
};

/// Descriptor for `ReferenceIDs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenceIDsDescriptor = $convert.base64Decode(
    'CgxSZWZlcmVuY2VJRHMSFAoFaXRlbXMYASADKAlSBWl0ZW1z');

@$core.Deprecated('Use referenceDescriptor instead')
const Reference$json = {
  '1': 'Reference',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'document_id', '3': 2, '4': 1, '5': 9, '10': 'documentId'},
    {'1': 'filename', '3': 3, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'page', '3': 4, '4': 1, '5': 13, '10': 'page'},
  ],
};

/// Descriptor for `Reference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referenceDescriptor = $convert.base64Decode(
    'CglSZWZlcmVuY2USDgoCaWQYASABKAlSAmlkEh8KC2RvY3VtZW50X2lkGAIgASgJUgpkb2N1bW'
    'VudElkEhoKCGZpbGVuYW1lGAMgASgJUghmaWxlbmFtZRISCgRwYWdlGAQgASgNUgRwYWdl');

@$core.Deprecated('Use referencesDescriptor instead')
const References$json = {
  '1': 'References',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.documents.v1.Reference', '10': 'items'},
  ],
};

/// Descriptor for `References`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referencesDescriptor = $convert.base64Decode(
    'CgpSZWZlcmVuY2VzEkEKBWl0ZW1zGAEgAygLMisuZW5kcG9pbnQuYnJhaW5ib29zdC5kb2N1bW'
    'VudHMudjEuUmVmZXJlbmNlUgVpdGVtcw==');

@$core.Deprecated('Use searchQueryDescriptor instead')
const SearchQuery$json = {
  '1': 'SearchQuery',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'threshold', '3': 3, '4': 1, '5': 2, '10': 'threshold'},
    {'1': 'limit', '3': 4, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `SearchQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchQueryDescriptor = $convert.base64Decode(
    'CgtTZWFyY2hRdWVyeRIUCgVxdWVyeRgBIAEoCVIFcXVlcnkSIwoNY29sbGVjdGlvbl9pZBgCIA'
    'EoCVIMY29sbGVjdGlvbklkEhwKCXRocmVzaG9sZBgDIAEoAlIJdGhyZXNob2xkEhQKBWxpbWl0'
    'GAQgASgNUgVsaW1pdA==');

@$core.Deprecated('Use searchResultsDescriptor instead')
const SearchResults$json = {
  '1': 'SearchResults',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.documents.v1.SearchResults.Document', '10': 'items'},
  ],
  '3': [SearchResults_Document$json],
};

@$core.Deprecated('Use searchResultsDescriptor instead')
const SearchResults_Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'document_id', '3': 2, '4': 1, '5': 9, '10': 'documentId'},
    {'1': 'filename', '3': 3, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    {'1': 'page', '3': 5, '4': 1, '5': 13, '10': 'page'},
    {'1': 'score', '3': 6, '4': 1, '5': 2, '10': 'score'},
  ],
};

/// Descriptor for `SearchResults`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResultsDescriptor = $convert.base64Decode(
    'Cg1TZWFyY2hSZXN1bHRzEk4KBWl0ZW1zGAEgAygLMjguZW5kcG9pbnQuYnJhaW5ib29zdC5kb2'
    'N1bWVudHMudjEuU2VhcmNoUmVzdWx0cy5Eb2N1bWVudFIFaXRlbXMamwEKCERvY3VtZW50Eg4K'
    'AmlkGAEgASgJUgJpZBIfCgtkb2N1bWVudF9pZBgCIAEoCVIKZG9jdW1lbnRJZBIaCghmaWxlbm'
    'FtZRgDIAEoCVIIZmlsZW5hbWUSGAoHY29udGVudBgEIAEoCVIHY29udGVudBISCgRwYWdlGAUg'
    'ASgNUgRwYWdlEhQKBXNjb3JlGAYgASgCUgVzY29yZQ==');

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

@$core.Deprecated('Use documentFilterDescriptor instead')
const DocumentFilter$json = {
  '1': 'DocumentFilter',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
  ],
};

/// Descriptor for `DocumentFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentFilterDescriptor = $convert.base64Decode(
    'Cg5Eb2N1bWVudEZpbHRlchIUCgVxdWVyeRgBIAEoCVIFcXVlcnkSIwoNY29sbGVjdGlvbl9pZB'
    'gCIAEoCVIMY29sbGVjdGlvbklk');

@$core.Deprecated('Use documentsDescriptor instead')
const Documents$json = {
  '1': 'Documents',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.documents.v1.Documents.Document', '10': 'items'},
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
    'CglEb2N1bWVudHMSSgoFaXRlbXMYASADKAsyNC5lbmRwb2ludC5icmFpbmJvb3N0LmRvY3VtZW'
    '50cy52MS5Eb2N1bWVudHMuRG9jdW1lbnRSBWl0ZW1zGkwKCERvY3VtZW50Eg4KAmlkGAEgASgJ'
    'UgJpZBIaCghmaWxlbmFtZRgCIAEoCVIIZmlsZW5hbWUSFAoFcGFnZXMYAyABKA1SBXBhZ2Vz');

