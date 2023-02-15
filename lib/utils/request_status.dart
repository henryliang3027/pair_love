enum RequestStatus { initial, loading, success, failure }

extension RequestStatusX on RequestStatus {
  bool get isInitial => this == RequestStatus.initial;
  bool get loading => this == RequestStatus.loading;
  bool get success => this == RequestStatus.success;
  bool get failure => this == RequestStatus.failure;
}
