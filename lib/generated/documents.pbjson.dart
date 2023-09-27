//
//  Generated code. Do not modify.
//  source: documents.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use searchQueryDescriptor instead')
const SearchQuery$json = {
  '1': 'SearchQuery',
  '2': [
    {'1': 'query', '3': 1, '4': 1, '5': 9, '10': 'query'},
    {'1': 'collectionID', '3': 2, '4': 1, '5': 9, '10': 'collectionID'},
    {'1': 'threshold', '3': 3, '4': 1, '5': 2, '10': 'threshold'},
    {'1': 'limit', '3': 4, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `SearchQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchQueryDescriptor = $convert.base64Decode(
    'CgtTZWFyY2hRdWVyeRIUCgVxdWVyeRgBIAEoCVIFcXVlcnkSIgoMY29sbGVjdGlvbklEGAIgAS'
    'gJUgxjb2xsZWN0aW9uSUQSHAoJdGhyZXNob2xkGAMgASgCUgl0aHJlc2hvbGQSFAoFbGltaXQY'
    'BCABKA1SBWxpbWl0');

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
    {'1': 'documentID', '3': 2, '4': 1, '5': 9, '10': 'documentID'},
    {'1': 'filename', '3': 3, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'content', '3': 4, '4': 1, '5': 9, '10': 'content'},
    {'1': 'page', '3': 5, '4': 1, '5': 13, '10': 'page'},
    {'1': 'score', '3': 6, '4': 1, '5': 2, '10': 'score'},
  ],
};

/// Descriptor for `SearchResults`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResultsDescriptor = $convert.base64Decode(
    'Cg1TZWFyY2hSZXN1bHRzEk4KBWl0ZW1zGAEgAygLMjguZW5kcG9pbnQuYnJhaW5ib29zdC5kb2'
    'N1bWVudHMudjEuU2VhcmNoUmVzdWx0cy5Eb2N1bWVudFIFaXRlbXMamgEKCERvY3VtZW50Eg4K'
    'AmlkGAEgASgJUgJpZBIeCgpkb2N1bWVudElEGAIgASgJUgpkb2N1bWVudElEEhoKCGZpbGVuYW'
    '1lGAMgASgJUghmaWxlbmFtZRIYCgdjb250ZW50GAQgASgJUgdjb250ZW50EhIKBHBhZ2UYBSAB'
    'KA1SBHBhZ2USFAoFc2NvcmUYBiABKAJSBXNjb3Jl');

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
    {'1': 'collectionID', '3': 2, '4': 1, '5': 9, '10': 'collectionID'},
  ],
};

/// Descriptor for `DocumentFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentFilterDescriptor = $convert.base64Decode(
    'Cg5Eb2N1bWVudEZpbHRlchIUCgVxdWVyeRgBIAEoCVIFcXVlcnkSIgoMY29sbGVjdGlvbklEGA'
    'IgASgJUgxjb2xsZWN0aW9uSUQ=');

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

