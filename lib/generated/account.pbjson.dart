//
//  Generated code. Do not modify.
//  source: account.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use modelUsagesDescriptor instead')
const ModelUsages$json = {
  '1': 'ModelUsages',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.account.v1.ModelUsages.Usage', '10': 'items'},
  ],
  '3': [ModelUsages_Usage$json],
};

@$core.Deprecated('Use modelUsagesDescriptor instead')
const ModelUsages_Usage$json = {
  '1': 'Usage',
  '2': [
    {'1': 'model', '3': 1, '4': 1, '5': 9, '10': 'model'},
    {'1': 'input', '3': 2, '4': 1, '5': 13, '10': 'input'},
    {'1': 'output', '3': 3, '4': 1, '5': 13, '10': 'output'},
  ],
};

/// Descriptor for `ModelUsages`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelUsagesDescriptor = $convert.base64Decode(
    'CgtNb2RlbFVzYWdlcxJHCgVpdGVtcxgBIAMoCzIxLmVuZHBvaW50LmJyYWluYm9vc3QuYWNjb3'
    'VudC52MS5Nb2RlbFVzYWdlcy5Vc2FnZVIFaXRlbXMaSwoFVXNhZ2USFAoFbW9kZWwYASABKAlS'
    'BW1vZGVsEhQKBWlucHV0GAIgASgNUgVpbnB1dBIWCgZvdXRwdXQYAyABKA1SBm91dHB1dA==');
