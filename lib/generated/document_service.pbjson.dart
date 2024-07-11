//
//  Generated code. Do not modify.
//  source: document_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use renameDocumentDescriptor instead')
const RenameDocument$json = {
  '1': 'RenameDocument',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `RenameDocument`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renameDocumentDescriptor = $convert.base64Decode(
    'Cg5SZW5hbWVEb2N1bWVudBIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use documentIDDescriptor instead')
const DocumentID$json = {
  '1': 'DocumentID',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

/// Descriptor for `DocumentID`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentIDDescriptor = $convert.base64Decode(
    'CgpEb2N1bWVudElEEg4KAmlkGAEgASgJUgJpZA==');

@$core.Deprecated('Use documentListDescriptor instead')
const DocumentList$json = {
  '1': 'DocumentList',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.chatbot.documents.v1.DocumentList.ItemsEntry', '10': 'items'},
  ],
  '3': [DocumentList_ItemsEntry$json],
};

@$core.Deprecated('Use documentListDescriptor instead')
const DocumentList_ItemsEntry$json = {
  '1': 'ItemsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.chatbot.documents.v1.DocumentMetadata', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DocumentList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentListDescriptor = $convert.base64Decode(
    'CgxEb2N1bWVudExpc3QSQwoFaXRlbXMYASADKAsyLS5jaGF0Ym90LmRvY3VtZW50cy52MS5Eb2'
    'N1bWVudExpc3QuSXRlbXNFbnRyeVIFaXRlbXMaYAoKSXRlbXNFbnRyeRIQCgNrZXkYASABKAlS'
    'A2tleRI8CgV2YWx1ZRgCIAEoCzImLmNoYXRib3QuZG9jdW1lbnRzLnYxLkRvY3VtZW50TWV0YW'
    'RhdGFSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use searchQueryDescriptor instead')
const SearchQuery$json = {
  '1': 'SearchQuery',
  '2': [
    {'1': 'text', '3': 1, '4': 1, '5': 9, '10': 'text'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'threshold', '3': 3, '4': 1, '5': 2, '10': 'threshold'},
    {'1': 'limit', '3': 4, '4': 1, '5': 13, '10': 'limit'},
  ],
};

/// Descriptor for `SearchQuery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchQueryDescriptor = $convert.base64Decode(
    'CgtTZWFyY2hRdWVyeRISCgR0ZXh0GAEgASgJUgR0ZXh0EiMKDWNvbGxlY3Rpb25faWQYAiABKA'
    'lSDGNvbGxlY3Rpb25JZBIcCgl0aHJlc2hvbGQYAyABKAJSCXRocmVzaG9sZBIUCgVsaW1pdBgE'
    'IAEoDVIFbGltaXQ=');

@$core.Deprecated('Use chunkDescriptor instead')
const Chunk$json = {
  '1': 'Chunk',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'score', '3': 3, '4': 1, '5': 2, '10': 'score'},
    {'1': 'postion', '3': 4, '4': 1, '5': 13, '10': 'postion'},
    {'1': 'documentId', '3': 5, '4': 1, '5': 9, '10': 'documentId'},
  ],
};

/// Descriptor for `Chunk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chunkDescriptor = $convert.base64Decode(
    'CgVDaHVuaxIOCgJpZBgBIAEoCVICaWQSEgoEdGV4dBgCIAEoCVIEdGV4dBIUCgVzY29yZRgDIA'
    'EoAlIFc2NvcmUSGAoHcG9zdGlvbhgEIAEoDVIHcG9zdGlvbhIeCgpkb2N1bWVudElkGAUgASgJ'
    'Ugpkb2N1bWVudElk');

@$core.Deprecated('Use searchResultsDescriptor instead')
const SearchResults$json = {
  '1': 'SearchResults',
  '2': [
    {'1': 'chunks', '3': 1, '4': 3, '5': 11, '6': '.chatbot.documents.v1.Chunk', '10': 'chunks'},
    {'1': 'document_names', '3': 2, '4': 3, '5': 11, '6': '.chatbot.documents.v1.SearchResults.DocumentNamesEntry', '10': 'documentNames'},
  ],
  '3': [SearchResults_DocumentNamesEntry$json],
};

@$core.Deprecated('Use searchResultsDescriptor instead')
const SearchResults_DocumentNamesEntry$json = {
  '1': 'DocumentNamesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SearchResults`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResultsDescriptor = $convert.base64Decode(
    'Cg1TZWFyY2hSZXN1bHRzEjMKBmNodW5rcxgBIAMoCzIbLmNoYXRib3QuZG9jdW1lbnRzLnYxLk'
    'NodW5rUgZjaHVua3MSXQoOZG9jdW1lbnRfbmFtZXMYAiADKAsyNi5jaGF0Ym90LmRvY3VtZW50'
    'cy52MS5TZWFyY2hSZXN1bHRzLkRvY3VtZW50TmFtZXNFbnRyeVINZG9jdW1lbnROYW1lcxpACh'
    'JEb2N1bWVudE5hbWVzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZh'
    'bHVlOgI4AQ==');

@$core.Deprecated('Use indexProgressDescriptor instead')
const IndexProgress$json = {
  '1': 'IndexProgress',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    {'1': 'progress', '3': 2, '4': 1, '5': 2, '10': 'progress'},
  ],
};

/// Descriptor for `IndexProgress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexProgressDescriptor = $convert.base64Decode(
    'Cg1JbmRleFByb2dyZXNzEhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVzEhoKCHByb2dyZXNzGAIgAS'
    'gCUghwcm9ncmVzcw==');

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

@$core.Deprecated('Use documentMetadataDescriptor instead')
const DocumentMetadata$json = {
  '1': 'DocumentMetadata',
  '2': [
    {'1': 'file', '3': 1, '4': 1, '5': 11, '6': '.chatbot.documents.v1.File', '9': 0, '10': 'file'},
    {'1': 'web', '3': 2, '4': 1, '5': 11, '6': '.chatbot.documents.v1.Webpage', '9': 0, '10': 'web'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `DocumentMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentMetadataDescriptor = $convert.base64Decode(
    'ChBEb2N1bWVudE1ldGFkYXRhEjAKBGZpbGUYASABKAsyGi5jaGF0Ym90LmRvY3VtZW50cy52MS'
    '5GaWxlSABSBGZpbGUSMQoDd2ViGAIgASgLMh0uY2hhdGJvdC5kb2N1bWVudHMudjEuV2VicGFn'
    'ZUgAUgN3ZWJCBgoEZGF0YQ==');

@$core.Deprecated('Use fileDescriptor instead')
const File$json = {
  '1': 'File',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
  ],
};

/// Descriptor for `File`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fileDescriptor = $convert.base64Decode(
    'CgRGaWxlEhIKBHBhdGgYASABKAlSBHBhdGgSGgoIZmlsZW5hbWUYAiABKAlSCGZpbGVuYW1l');

@$core.Deprecated('Use webpageDescriptor instead')
const Webpage$json = {
  '1': 'Webpage',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
  ],
};

/// Descriptor for `Webpage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webpageDescriptor = $convert.base64Decode(
    'CgdXZWJwYWdlEhAKA3VybBgBIAEoCVIDdXJsEhQKBXRpdGxlGAIgASgJUgV0aXRsZQ==');

@$core.Deprecated('Use documentHeaderDescriptor instead')
const DocumentHeader$json = {
  '1': 'DocumentHeader',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'created_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'metadata', '3': 4, '4': 1, '5': 11, '6': '.chatbot.documents.v1.DocumentMetadata', '10': 'metadata'},
  ],
};

/// Descriptor for `DocumentHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentHeaderDescriptor = $convert.base64Decode(
    'Cg5Eb2N1bWVudEhlYWRlchIOCgJpZBgBIAEoCVICaWQSIwoNY29sbGVjdGlvbl9pZBgCIAEoCV'
    'IMY29sbGVjdGlvbklkEjkKCmNyZWF0ZWRfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGlt'
    'ZXN0YW1wUgljcmVhdGVkQXQSQgoIbWV0YWRhdGEYBCABKAsyJi5jaGF0Ym90LmRvY3VtZW50cy'
    '52MS5Eb2N1bWVudE1ldGFkYXRhUghtZXRhZGF0YQ==');

@$core.Deprecated('Use indexJobDescriptor instead')
const IndexJob$json = {
  '1': 'IndexJob',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'document', '3': 3, '4': 1, '5': 11, '6': '.chatbot.documents.v1.DocumentMetadata', '10': 'document'},
  ],
};

/// Descriptor for `IndexJob`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexJobDescriptor = $convert.base64Decode(
    'CghJbmRleEpvYhIOCgJpZBgBIAEoCVICaWQSIwoNY29sbGVjdGlvbl9pZBgCIAEoCVIMY29sbG'
    'VjdGlvbklkEkIKCGRvY3VtZW50GAMgASgLMiYuY2hhdGJvdC5kb2N1bWVudHMudjEuRG9jdW1l'
    'bnRNZXRhZGF0YVIIZG9jdW1lbnQ=');

