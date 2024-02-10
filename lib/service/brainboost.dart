import 'package:braingain_app/generated/account_service.pbgrpc.dart';
import 'package:braingain_app/generated/chat_service.pbgrpc.dart';
import 'package:braingain_app/generated/collection_service.pbgrpc.dart';
import 'package:braingain_app/generated/document_service.pbgrpc.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grpc/grpc.dart';

final _channel = ClientChannel(
  'localhost',
  port: 8869,
  options: const ChannelOptions(
    credentials: ChannelCredentials.insecure(),
  ),
);

// final _channel = GrpcOrGrpcWebClientChannel.toSeparateEndpoints(
//   grpcHost: 'brainboost-services-2qkjmuus4a-ey.a.run.app',
//   grpcPort: 443,
//   grpcTransportSecure: true,
//   grpcWebHost: 'brainboost-gateway-2qkjmuus4a-ey.a.run.app',
//   grpcWebPort: 443,
//   grpcWebTransportSecure: true,
// );

final collections = CollectionServiceClientAuth();

final documents = DocumentServiceClientAuth();

final account = AccountServiceClientAuth();

final chat = ChatServiceClientAuth();

Future<CallOptions> _mergeAuth(CallOptions? options) async {
  final token = await FirebaseAuth.instance.currentUser?.getIdToken();
  return CallOptions(
    metadata: {
      "Authorization": "Bearer $token",
      "User-ID": FirebaseAuth.instance.currentUser?.uid ?? "12345",
    },
  ).mergedWith(options);
}

class CollectionServiceClientAuth {
  final _service = CollectionServiceClient(_channel);

  Future<Collections> getAll(Empty request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.getAll(request, options: options);
  }

  Future<Collection> create(Collection request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.create(request, options: options);
  }

  Future<Collection> update(Collection request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.update(request, options: options);
  }

  Future<Empty> delete(Collection request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.delete(request, options: options);
  }
}

class DocumentServiceClientAuth {
  final _service = DocumentServiceClient(_channel);

  Future<Documents> list(DocumentFilter request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.list(request, options: options);
  }

  Future<Stream<IndexProgress>> index(Document request,
      {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.index(
      request,
      options: options,
    );
  }

  Future<Empty> delete(Document request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.delete(request, options: options);
  }

  Future<Empty> update(Document request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.update(request, options: options);
  }

  Future<SearchResults> search(SearchQuery request,
      {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.search(request, options: options);
  }

  Future<References> getReferences(ReferenceIDs request,
      {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.getReferences(request, options: options);
  }
}

class AccountServiceClientAuth {
  final _service = AccountServiceClient(_channel);

  Future<Costs> getCosts(Empty request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.getCosts(request, options: options);
  }

  Future<Payments> getPayments(Empty request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.getPayments(request, options: options);
  }

  Future<BalanceSheet> getBalanceSheet(Empty request,
      {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.getBalanceSheet(request, options: options);
  }
}

class ChatServiceClientAuth {
  final _service = ChatServiceClient(_channel);

  Future<Thread> startThread(
    ThreadPrompt request, {
    CallOptions? options,
  }) async {
    options = await _mergeAuth(options);
    return _service.startThread(request, options: options);
  }

  Future<Message> postMessage(
    Prompt request, {
    CallOptions? options,
  }) async {
    options = await _mergeAuth(options);
    return _service.postMessage(request, options: options);
  }

  Future<Thread> getThread(
    ThreadID request, {
    CallOptions? options,
  }) async {
    options = await _mergeAuth(options);
    return _service.getThread(request, options: options);
  }

  Future<ThreadIDs> listThreadIDs(
    Collection request, {
    CallOptions? options,
  }) async {
    options = await _mergeAuth(options);
    return _service.listThreadIDs(request, options: options);
  }

  Future<Empty> deleteThread(
    ThreadID request, {
    CallOptions? options,
  }) async {
    options = await _mergeAuth(options);
    return _service.deleteThread(request, options: options);
  }

  Future<Empty> deleteMessageFromThread(
    MessageID request, {
    CallOptions? options,
  }) async {
    options = await _mergeAuth(options);
    return _service.deleteMessageFromThread(request, options: options);
  }
}
