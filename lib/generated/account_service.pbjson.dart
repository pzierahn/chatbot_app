//
//  Generated code. Do not modify.
//  source: account_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use overviewDescriptor instead')
const Overview$json = {
  '1': 'Overview',
  '2': [
    {'1': 'payments', '3': 1, '4': 3, '5': 11, '6': '.chatbot.account.v1.Payment', '10': 'payments'},
    {'1': 'usage', '3': 2, '4': 3, '5': 11, '6': '.chatbot.account.v1.ModelUsage', '10': 'usage'},
    {'1': 'balance', '3': 3, '4': 1, '5': 5, '10': 'balance'},
  ],
};

/// Descriptor for `Overview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List overviewDescriptor = $convert.base64Decode(
    'CghPdmVydmlldxI3CghwYXltZW50cxgBIAMoCzIbLmNoYXRib3QuYWNjb3VudC52MS5QYXltZW'
    '50UghwYXltZW50cxI0CgV1c2FnZRgCIAMoCzIeLmNoYXRib3QuYWNjb3VudC52MS5Nb2RlbFVz'
    'YWdlUgV1c2FnZRIYCgdiYWxhbmNlGAMgASgFUgdiYWxhbmNl');

@$core.Deprecated('Use modelUsageDescriptor instead')
const ModelUsage$json = {
  '1': 'ModelUsage',
  '2': [
    {'1': 'model', '3': 1, '4': 1, '5': 9, '10': 'model'},
    {'1': 'input', '3': 2, '4': 1, '5': 13, '10': 'input'},
    {'1': 'output', '3': 3, '4': 1, '5': 13, '10': 'output'},
    {'1': 'costs', '3': 4, '4': 1, '5': 13, '10': 'costs'},
    {'1': 'requests', '3': 5, '4': 1, '5': 13, '10': 'requests'},
  ],
};

/// Descriptor for `ModelUsage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelUsageDescriptor = $convert.base64Decode(
    'CgpNb2RlbFVzYWdlEhQKBW1vZGVsGAEgASgJUgVtb2RlbBIUCgVpbnB1dBgCIAEoDVIFaW5wdX'
    'QSFgoGb3V0cHV0GAMgASgNUgZvdXRwdXQSFAoFY29zdHMYBCABKA1SBWNvc3RzEhoKCHJlcXVl'
    'c3RzGAUgASgNUghyZXF1ZXN0cw==');

@$core.Deprecated('Use usageDescriptor instead')
const Usage$json = {
  '1': 'Usage',
  '2': [
    {'1': 'models', '3': 1, '4': 3, '5': 11, '6': '.chatbot.account.v1.ModelUsage', '10': 'models'},
  ],
};

/// Descriptor for `Usage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List usageDescriptor = $convert.base64Decode(
    'CgVVc2FnZRI2CgZtb2RlbHMYASADKAsyHi5jaGF0Ym90LmFjY291bnQudjEuTW9kZWxVc2FnZV'
    'IGbW9kZWxz');

@$core.Deprecated('Use paymentDescriptor instead')
const Payment$json = {
  '1': 'Payment',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'date', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    {'1': 'amount', '3': 3, '4': 1, '5': 13, '10': 'amount'},
  ],
};

/// Descriptor for `Payment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentDescriptor = $convert.base64Decode(
    'CgdQYXltZW50Eg4KAmlkGAEgASgJUgJpZBIuCgRkYXRlGAIgASgLMhouZ29vZ2xlLnByb3RvYn'
    'VmLlRpbWVzdGFtcFIEZGF0ZRIWCgZhbW91bnQYAyABKA1SBmFtb3VudA==');

@$core.Deprecated('Use paymentsDescriptor instead')
const Payments$json = {
  '1': 'Payments',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.chatbot.account.v1.Payment', '10': 'items'},
  ],
};

/// Descriptor for `Payments`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentsDescriptor = $convert.base64Decode(
    'CghQYXltZW50cxIxCgVpdGVtcxgBIAMoCzIbLmNoYXRib3QuYWNjb3VudC52MS5QYXltZW50Ug'
    'VpdGVtcw==');

