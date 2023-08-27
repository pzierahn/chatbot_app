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

@$core.Deprecated('Use promptDescriptor instead')
const Prompt$json = {
  '1': 'Prompt',
  '2': [
    {'1': 'prompt', '3': 1, '4': 1, '5': 9, '10': 'prompt'},
  ],
};

/// Descriptor for `Prompt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List promptDescriptor = $convert.base64Decode(
    'CgZQcm9tcHQSFgoGcHJvbXB0GAEgASgJUgZwcm9tcHQ=');

@$core.Deprecated('Use sourceDescriptor instead')
const Source$json = {
  '1': 'Source',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'filename', '3': 2, '4': 1, '5': 9, '10': 'filename'},
    {'1': 'page', '3': 3, '4': 1, '5': 5, '10': 'page'},
    {'1': 'score', '3': 4, '4': 1, '5': 2, '10': 'score'},
  ],
};

/// Descriptor for `Source`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sourceDescriptor = $convert.base64Decode(
    'CgZTb3VyY2USDgoCaWQYASABKAlSAmlkEhoKCGZpbGVuYW1lGAIgASgJUghmaWxlbmFtZRISCg'
    'RwYWdlGAMgASgFUgRwYWdlEhQKBXNjb3JlGAQgASgCUgVzY29yZQ==');

@$core.Deprecated('Use chatCompletionDescriptor instead')
const ChatCompletion$json = {
  '1': 'ChatCompletion',
  '2': [
    {'1': 'completion', '3': 1, '4': 1, '5': 9, '10': 'completion'},
    {'1': 'sources', '3': 2, '4': 3, '5': 11, '6': '.endpoint.braingain.v1.Source', '10': 'sources'},
  ],
};

/// Descriptor for `ChatCompletion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chatCompletionDescriptor = $convert.base64Decode(
    'Cg5DaGF0Q29tcGxldGlvbhIeCgpjb21wbGV0aW9uGAEgASgJUgpjb21wbGV0aW9uEjcKB3NvdX'
    'JjZXMYAiADKAsyHS5lbmRwb2ludC5icmFpbmdhaW4udjEuU291cmNlUgdzb3VyY2Vz');

