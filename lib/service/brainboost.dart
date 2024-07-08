import 'package:braingain_app/generated/account_service.pbgrpc.dart';
import 'package:braingain_app/generated/chat_service.pbgrpc.dart';
import 'package:braingain_app/generated/collection_service.pbgrpc.dart';
import 'package:braingain_app/generated/crashlytics.pbgrpc.dart';
import 'package:braingain_app/generated/document_service.pbgrpc.dart';
import 'package:braingain_app/generated/google/protobuf/empty.pb.dart';
import 'package:braingain_app/generated/notion.pbgrpc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:grpc/grpc.dart';
import 'package:grpc/grpc_or_grpcweb.dart';

final _channel = GrpcOrGrpcWebClientChannel.grpc(
  'localhost',
  port: 9055,
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

final crashlytics = CrashlyticsServiceClientAuth();

final notion = NotionClientAuth();

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

  Future<Collections> list(Empty request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.list(request, options: options);
  }

  Future<Empty> store(Collection request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.store(request, options: options);
  }

  Future<Empty> delete(Collection request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.delete(request, options: options);
  }
}

class DocumentServiceClientAuth {
  final _service = DocumentServiceClient(_channel);

  Future<DocumentList> list(DocumentFilter request,
      {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.list(request, options: options);
  }

  Future<Stream<IndexProgress>> index(IndexJob request,
      {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.index(
      request,
      options: options,
    );
  }

  Future<Empty> delete(DocumentID request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.delete(request, options: options);
  }

  Future<Empty> rename(RenameDocument request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.rename(request, options: options);
  }

  Future<SearchResults> search(SearchQuery request,
      {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.search(request, options: options);
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
    CollectionId request, {
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

class CrashlyticsServiceClientAuth {
  final _service = CrashlyticsServiceClient(_channel);

  Future<Empty> recordError(Error request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.recordError(request, options: options);
  }
}

class NotionClientAuth {
  final _service = NotionClient(_channel);

  Future<ResponseStream<ExecutionResult>> executePrompt(NotionPrompt request,
      {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.executePrompt(request, options: options);
  }

  Future<Databases> listDatabases(Empty request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.listDatabases(request, options: options);
  }

  Future<NotionApiKey> getApiKey(Empty request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.getApiKey(request, options: options);
  }

  Future<Empty> setApiKey(NotionApiKey request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.setApiKey(request, options: options);
  }

  Future<Empty> removeApiKey(Empty request, {CallOptions? options}) async {
    options = await _mergeAuth(options);
    return _service.removeApiKey(request, options: options);
  }
}
