import 'package:equatable/equatable.dart';

abstract class WifiState extends Equatable {
  const WifiState();

  @override
  List<Object> get props => [];
}

class WifiStateLoading extends WifiState {}

class WifiStateConnecting extends WifiState {}

class WifiStateError extends WifiState {
  final String errorMsg;

  WifiStateError(this.errorMsg);
}

class WifiStateScanning extends WifiState {}


class WifiStateLoaded extends WifiState {
  final List<Map<String, dynamic>> wifiList;

  WifiStateLoaded({required this.wifiList});
}

class WifiStateProvisioning extends WifiState {}
class WifiStateProvisioningDisconnected extends WifiState {}
class WifiStateProvisioningAuthError extends WifiState {}
class WifiStateProvisioningNetworkNotFound extends WifiState {}
class WifiStateProvisionedSuccessfully extends WifiState {}
