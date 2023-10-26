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

@$core.Deprecated('Use balanceSheetDescriptor instead')
const BalanceSheet$json = {
  '1': 'BalanceSheet',
  '2': [
    {'1': 'payments', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.account.v1.Payment', '10': 'payments'},
    {'1': 'costs', '3': 2, '4': 3, '5': 11, '6': '.endpoint.brainboost.account.v1.ModelCosts', '10': 'costs'},
    {'1': 'balance', '3': 3, '4': 1, '5': 13, '10': 'balance'},
  ],
};

/// Descriptor for `BalanceSheet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List balanceSheetDescriptor = $convert.base64Decode(
    'CgxCYWxhbmNlU2hlZXQSQwoIcGF5bWVudHMYASADKAsyJy5lbmRwb2ludC5icmFpbmJvb3N0Lm'
    'FjY291bnQudjEuUGF5bWVudFIIcGF5bWVudHMSQAoFY29zdHMYAiADKAsyKi5lbmRwb2ludC5i'
    'cmFpbmJvb3N0LmFjY291bnQudjEuTW9kZWxDb3N0c1IFY29zdHMSGAoHYmFsYW5jZRgDIAEoDV'
    'IHYmFsYW5jZQ==');

@$core.Deprecated('Use modelCostsDescriptor instead')
const ModelCosts$json = {
  '1': 'ModelCosts',
  '2': [
    {'1': 'model', '3': 1, '4': 1, '5': 9, '10': 'model'},
    {'1': 'input', '3': 2, '4': 1, '5': 13, '10': 'input'},
    {'1': 'output', '3': 3, '4': 1, '5': 13, '10': 'output'},
    {'1': 'costs', '3': 4, '4': 1, '5': 13, '10': 'costs'},
  ],
};

/// Descriptor for `ModelCosts`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modelCostsDescriptor = $convert.base64Decode(
    'CgpNb2RlbENvc3RzEhQKBW1vZGVsGAEgASgJUgVtb2RlbBIUCgVpbnB1dBgCIAEoDVIFaW5wdX'
    'QSFgoGb3V0cHV0GAMgASgNUgZvdXRwdXQSFAoFY29zdHMYBCABKA1SBWNvc3Rz');

@$core.Deprecated('Use costsDescriptor instead')
const Costs$json = {
  '1': 'Costs',
  '2': [
    {'1': 'models', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.account.v1.ModelCosts', '10': 'models'},
  ],
};

/// Descriptor for `Costs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List costsDescriptor = $convert.base64Decode(
    'CgVDb3N0cxJCCgZtb2RlbHMYASADKAsyKi5lbmRwb2ludC5icmFpbmJvb3N0LmFjY291bnQudj'
    'EuTW9kZWxDb3N0c1IGbW9kZWxz');

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
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.endpoint.brainboost.account.v1.Payment', '10': 'items'},
  ],
};

/// Descriptor for `Payments`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentsDescriptor = $convert.base64Decode(
    'CghQYXltZW50cxI9CgVpdGVtcxgBIAMoCzInLmVuZHBvaW50LmJyYWluYm9vc3QuYWNjb3VudC'
    '52MS5QYXltZW50UgVpdGVtcw==');

