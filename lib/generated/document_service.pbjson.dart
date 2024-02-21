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

@$core.Deprecated('Use renameDocumentDescriptor instead')
const RenameDocument$json = {
  '1': 'RenameDocument',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'file_name', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'fileName'},
    {'1': 'webpage_title', '3': 3, '4': 1, '5': 9, '9': 0, '10': 'webpageTitle'},
  ],
  '8': [
    {'1': 'rename_to'},
  ],
};

/// Descriptor for `RenameDocument`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List renameDocumentDescriptor = $convert.base64Decode(
    'Cg5SZW5hbWVEb2N1bWVudBIOCgJpZBgBIAEoCVICaWQSHQoJZmlsZV9uYW1lGAIgASgJSABSCG'
    'ZpbGVOYW1lEiUKDXdlYnBhZ2VfdGl0bGUYAyABKAlIAFIMd2VicGFnZVRpdGxlQgsKCXJlbmFt'
    'ZV90bw==');

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
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.documents.v2.DocumentList.ItemsEntry', '10': 'items'},
  ],
  '3': [DocumentList_ItemsEntry$json],
};

@$core.Deprecated('Use documentListDescriptor instead')
const DocumentList_ItemsEntry$json = {
  '1': 'ItemsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.endpoint.brainboost.documents.v2.DocumentMetadata', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DocumentList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentListDescriptor = $convert.base64Decode(
    'CgxEb2N1bWVudExpc3QSTwoFaXRlbXMYASADKAsyOS5lbmRwb2ludC5icmFpbmJvb3N0LmRvY3'
    'VtZW50cy52Mi5Eb2N1bWVudExpc3QuSXRlbXNFbnRyeVIFaXRlbXMabAoKSXRlbXNFbnRyeRIQ'
    'CgNrZXkYASABKAlSA2tleRJICgV2YWx1ZRgCIAEoCzIyLmVuZHBvaW50LmJyYWluYm9vc3QuZG'
    '9jdW1lbnRzLnYyLkRvY3VtZW50TWV0YWRhdGFSBXZhbHVlOgI4AQ==');

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

@$core.Deprecated('Use chunkDescriptor instead')
const Chunk$json = {
  '1': 'Chunk',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'text', '3': 2, '4': 1, '5': 9, '10': 'text'},
    {'1': 'index', '3': 3, '4': 1, '5': 13, '10': 'index'},
  ],
};

/// Descriptor for `Chunk`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chunkDescriptor = $convert.base64Decode(
    'CgVDaHVuaxIOCgJpZBgBIAEoCVICaWQSEgoEdGV4dBgCIAEoCVIEdGV4dBIUCgVpbmRleBgDIA'
    'EoDVIFaW5kZXg=');

@$core.Deprecated('Use referencesDescriptor instead')
const References$json = {
  '1': 'References',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.documents.v2.Document', '10': 'items'},
  ],
};

/// Descriptor for `References`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List referencesDescriptor = $convert.base64Decode(
    'CgpSZWZlcmVuY2VzEkAKBWl0ZW1zGAEgAygLMiouZW5kcG9pbnQuYnJhaW5ib29zdC5kb2N1bW'
    'VudHMudjIuRG9jdW1lbnRSBWl0ZW1z');

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
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.documents.v2.Document', '10': 'items'},
    {'1': 'scores', '3': 2, '4': 3, '5': 11, '6': '.endpoint.brainboost.documents.v2.SearchResults.ScoresEntry', '10': 'scores'},
  ],
  '3': [SearchResults_ScoresEntry$json],
};

@$core.Deprecated('Use searchResultsDescriptor instead')
const SearchResults_ScoresEntry$json = {
  '1': 'ScoresEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 2, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SearchResults`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List searchResultsDescriptor = $convert.base64Decode(
    'Cg1TZWFyY2hSZXN1bHRzEkAKBWl0ZW1zGAEgAygLMiouZW5kcG9pbnQuYnJhaW5ib29zdC5kb2'
    'N1bWVudHMudjIuRG9jdW1lbnRSBWl0ZW1zElMKBnNjb3JlcxgCIAMoCzI7LmVuZHBvaW50LmJy'
    'YWluYm9vc3QuZG9jdW1lbnRzLnYyLlNlYXJjaFJlc3VsdHMuU2NvcmVzRW50cnlSBnNjb3Jlcx'
    'o5CgtTY29yZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoAlIFdmFsdWU6'
    'AjgB');

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
    {'1': 'file', '3': 1, '4': 1, '5': 11, '6': '.endpoint.brainboost.documents.v2.File', '9': 0, '10': 'file'},
    {'1': 'web', '3': 2, '4': 1, '5': 11, '6': '.endpoint.brainboost.documents.v2.Webpage', '9': 0, '10': 'web'},
  ],
  '8': [
    {'1': 'data'},
  ],
};

/// Descriptor for `DocumentMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentMetadataDescriptor = $convert.base64Decode(
    'ChBEb2N1bWVudE1ldGFkYXRhEjwKBGZpbGUYASABKAsyJi5lbmRwb2ludC5icmFpbmJvb3N0Lm'
    'RvY3VtZW50cy52Mi5GaWxlSABSBGZpbGUSPQoDd2ViGAIgASgLMikuZW5kcG9pbnQuYnJhaW5i'
    'b29zdC5kb2N1bWVudHMudjIuV2VicGFnZUgAUgN3ZWJCBgoEZGF0YQ==');

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

@$core.Deprecated('Use documentDescriptor instead')
const Document$json = {
  '1': 'Document',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'created_at', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    {'1': 'metadata', '3': 4, '4': 1, '5': 11, '6': '.endpoint.brainboost.documents.v2.DocumentMetadata', '10': 'metadata'},
    {'1': 'chunks', '3': 5, '4': 3, '5': 11, '6': '.endpoint.brainboost.documents.v2.Chunk', '10': 'chunks'},
  ],
};

/// Descriptor for `Document`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List documentDescriptor = $convert.base64Decode(
    'CghEb2N1bWVudBIOCgJpZBgBIAEoCVICaWQSIwoNY29sbGVjdGlvbl9pZBgCIAEoCVIMY29sbG'
    'VjdGlvbklkEjkKCmNyZWF0ZWRfYXQYAyABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1w'
    'UgljcmVhdGVkQXQSTgoIbWV0YWRhdGEYBCABKAsyMi5lbmRwb2ludC5icmFpbmJvb3N0LmRvY3'
    'VtZW50cy52Mi5Eb2N1bWVudE1ldGFkYXRhUghtZXRhZGF0YRI/CgZjaHVua3MYBSADKAsyJy5l'
    'bmRwb2ludC5icmFpbmJvb3N0LmRvY3VtZW50cy52Mi5DaHVua1IGY2h1bmtz');

@$core.Deprecated('Use indexJobDescriptor instead')
const IndexJob$json = {
  '1': 'IndexJob',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'collection_id', '3': 2, '4': 1, '5': 9, '10': 'collectionId'},
    {'1': 'document', '3': 3, '4': 1, '5': 11, '6': '.endpoint.brainboost.documents.v2.DocumentMetadata', '10': 'document'},
  ],
};

/// Descriptor for `IndexJob`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List indexJobDescriptor = $convert.base64Decode(
    'CghJbmRleEpvYhIOCgJpZBgBIAEoCVICaWQSIwoNY29sbGVjdGlvbl9pZBgCIAEoCVIMY29sbG'
    'VjdGlvbklkEk4KCGRvY3VtZW50GAMgASgLMjIuZW5kcG9pbnQuYnJhaW5ib29zdC5kb2N1bWVu'
    'dHMudjIuRG9jdW1lbnRNZXRhZGF0YVIIZG9jdW1lbnQ=');

