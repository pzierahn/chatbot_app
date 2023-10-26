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

@$core.Deprecated('Use paymentsDescriptor instead')
const Payments$json = {
  '1': 'Payments',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.account.v1.Payments.Payment', '10': 'items'},
  ],
  '3': [Payments_Payment$json],
};

@$core.Deprecated('Use paymentsDescriptor instead')
const Payments_Payment$json = {
  '1': 'Payment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'date', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    {'1': 'amount', '3': 3, '4': 1, '5': 13, '10': 'amount'},
  ],
};

/// Descriptor for `Payments`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentsDescriptor = $convert.base64Decode(
    'CghQYXltZW50cxJGCgVpdGVtcxgBIAMoCzIwLmVuZHBvaW50LmJyYWluYm9vc3QuYWNjb3VudC'
    '52MS5QYXltZW50cy5QYXltZW50UgVpdGVtcxphCgdQYXltZW50Eg4KAmlkGAEgASgJUgJpZBIu'
    'CgRkYXRlGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIEZGF0ZRIWCgZhbW91bn'
    'QYAyABKA1SBmFtb3VudA==');

