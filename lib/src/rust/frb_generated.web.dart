// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.3.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

// Static analysis wrongly picks the IO variant, thus ignore this
// ignore_for_file: argument_type_not_assignable

import 'api/connection.dart';
import 'api/libsql.dart';
import 'api/statement.dart';
import 'api/transaction.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';
import 'utils/params.dart';
import 'utils/result.dart';
import 'utils/return_value.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  Map<String, LibsqlReturnValue> dco_decode_Map_String_libsql_return_value(
      dynamic raw);

  @protected
  Map<String, LibsqlValue> dco_decode_Map_String_libsql_value(dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  BatchResult dco_decode_batch_result(dynamic raw);

  @protected
  bool dco_decode_bool(dynamic raw);

  @protected
  bool dco_decode_box_autoadd_bool(dynamic raw);

  @protected
  ConnectArgs dco_decode_box_autoadd_connect_args(dynamic raw);

  @protected
  LibsqlConnection dco_decode_box_autoadd_libsql_connection(dynamic raw);

  @protected
  LibsqlOpenFlags dco_decode_box_autoadd_libsql_open_flags(dynamic raw);

  @protected
  LibsqlParams dco_decode_box_autoadd_libsql_params(dynamic raw);

  @protected
  LibsqlStatement dco_decode_box_autoadd_libsql_statement(dynamic raw);

  @protected
  LibsqlTransaction dco_decode_box_autoadd_libsql_transaction(dynamic raw);

  @protected
  LibsqlTransactionBehavior dco_decode_box_autoadd_libsql_transaction_behavior(
      dynamic raw);

  @protected
  BigInt dco_decode_box_autoadd_u_64(dynamic raw);

  @protected
  ConnectArgs dco_decode_connect_args(dynamic raw);

  @protected
  ConnectResult dco_decode_connect_result(dynamic raw);

  @protected
  ExecuteResult dco_decode_execute_result(dynamic raw);

  @protected
  double dco_decode_f_64(dynamic raw);

  @protected
  int dco_decode_i_32(dynamic raw);

  @protected
  PlatformInt64 dco_decode_i_64(dynamic raw);

  @protected
  LibsqlConnection dco_decode_libsql_connection(dynamic raw);

  @protected
  LibsqlOpenFlags dco_decode_libsql_open_flags(dynamic raw);

  @protected
  LibsqlParams dco_decode_libsql_params(dynamic raw);

  @protected
  LibsqlReturnValue dco_decode_libsql_return_value(dynamic raw);

  @protected
  LibsqlStatement dco_decode_libsql_statement(dynamic raw);

  @protected
  LibsqlTransaction dco_decode_libsql_transaction(dynamic raw);

  @protected
  LibsqlTransactionBehavior dco_decode_libsql_transaction_behavior(dynamic raw);

  @protected
  LibsqlValue dco_decode_libsql_value(dynamic raw);

  @protected
  List<Map<String, LibsqlReturnValue>>
      dco_decode_list_Map_String_libsql_return_value(dynamic raw);

  @protected
  List<String> dco_decode_list_String(dynamic raw);

  @protected
  List<LibsqlValue> dco_decode_list_libsql_value(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  List<(String, LibsqlReturnValue)>
      dco_decode_list_record_string_libsql_return_value(dynamic raw);

  @protected
  List<(String, LibsqlValue)> dco_decode_list_record_string_libsql_value(
      dynamic raw);

  @protected
  Map<String, LibsqlValue>? dco_decode_opt_Map_String_libsql_value(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  bool? dco_decode_opt_box_autoadd_bool(dynamic raw);

  @protected
  LibsqlOpenFlags? dco_decode_opt_box_autoadd_libsql_open_flags(dynamic raw);

  @protected
  LibsqlParams? dco_decode_opt_box_autoadd_libsql_params(dynamic raw);

  @protected
  LibsqlTransactionBehavior?
      dco_decode_opt_box_autoadd_libsql_transaction_behavior(dynamic raw);

  @protected
  BigInt? dco_decode_opt_box_autoadd_u_64(dynamic raw);

  @protected
  List<LibsqlValue>? dco_decode_opt_list_libsql_value(dynamic raw);

  @protected
  PrepareResult dco_decode_prepare_result(dynamic raw);

  @protected
  QueryResult dco_decode_query_result(dynamic raw);

  @protected
  (String, LibsqlReturnValue) dco_decode_record_string_libsql_return_value(
      dynamic raw);

  @protected
  (String, LibsqlValue) dco_decode_record_string_libsql_value(dynamic raw);

  @protected
  SyncResult dco_decode_sync_result(dynamic raw);

  @protected
  TransactionCommitResult dco_decode_transaction_commit_result(dynamic raw);

  @protected
  TransactionResult dco_decode_transaction_result(dynamic raw);

  @protected
  TransactionRollbackResult dco_decode_transaction_rollback_result(dynamic raw);

  @protected
  BigInt dco_decode_u_64(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  Map<String, LibsqlReturnValue> sse_decode_Map_String_libsql_return_value(
      SseDeserializer deserializer);

  @protected
  Map<String, LibsqlValue> sse_decode_Map_String_libsql_value(
      SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  BatchResult sse_decode_batch_result(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  bool sse_decode_box_autoadd_bool(SseDeserializer deserializer);

  @protected
  ConnectArgs sse_decode_box_autoadd_connect_args(SseDeserializer deserializer);

  @protected
  LibsqlConnection sse_decode_box_autoadd_libsql_connection(
      SseDeserializer deserializer);

  @protected
  LibsqlOpenFlags sse_decode_box_autoadd_libsql_open_flags(
      SseDeserializer deserializer);

  @protected
  LibsqlParams sse_decode_box_autoadd_libsql_params(
      SseDeserializer deserializer);

  @protected
  LibsqlStatement sse_decode_box_autoadd_libsql_statement(
      SseDeserializer deserializer);

  @protected
  LibsqlTransaction sse_decode_box_autoadd_libsql_transaction(
      SseDeserializer deserializer);

  @protected
  LibsqlTransactionBehavior sse_decode_box_autoadd_libsql_transaction_behavior(
      SseDeserializer deserializer);

  @protected
  BigInt sse_decode_box_autoadd_u_64(SseDeserializer deserializer);

  @protected
  ConnectArgs sse_decode_connect_args(SseDeserializer deserializer);

  @protected
  ConnectResult sse_decode_connect_result(SseDeserializer deserializer);

  @protected
  ExecuteResult sse_decode_execute_result(SseDeserializer deserializer);

  @protected
  double sse_decode_f_64(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  PlatformInt64 sse_decode_i_64(SseDeserializer deserializer);

  @protected
  LibsqlConnection sse_decode_libsql_connection(SseDeserializer deserializer);

  @protected
  LibsqlOpenFlags sse_decode_libsql_open_flags(SseDeserializer deserializer);

  @protected
  LibsqlParams sse_decode_libsql_params(SseDeserializer deserializer);

  @protected
  LibsqlReturnValue sse_decode_libsql_return_value(
      SseDeserializer deserializer);

  @protected
  LibsqlStatement sse_decode_libsql_statement(SseDeserializer deserializer);

  @protected
  LibsqlTransaction sse_decode_libsql_transaction(SseDeserializer deserializer);

  @protected
  LibsqlTransactionBehavior sse_decode_libsql_transaction_behavior(
      SseDeserializer deserializer);

  @protected
  LibsqlValue sse_decode_libsql_value(SseDeserializer deserializer);

  @protected
  List<Map<String, LibsqlReturnValue>>
      sse_decode_list_Map_String_libsql_return_value(
          SseDeserializer deserializer);

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer);

  @protected
  List<LibsqlValue> sse_decode_list_libsql_value(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  List<(String, LibsqlReturnValue)>
      sse_decode_list_record_string_libsql_return_value(
          SseDeserializer deserializer);

  @protected
  List<(String, LibsqlValue)> sse_decode_list_record_string_libsql_value(
      SseDeserializer deserializer);

  @protected
  Map<String, LibsqlValue>? sse_decode_opt_Map_String_libsql_value(
      SseDeserializer deserializer);

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  bool? sse_decode_opt_box_autoadd_bool(SseDeserializer deserializer);

  @protected
  LibsqlOpenFlags? sse_decode_opt_box_autoadd_libsql_open_flags(
      SseDeserializer deserializer);

  @protected
  LibsqlParams? sse_decode_opt_box_autoadd_libsql_params(
      SseDeserializer deserializer);

  @protected
  LibsqlTransactionBehavior?
      sse_decode_opt_box_autoadd_libsql_transaction_behavior(
          SseDeserializer deserializer);

  @protected
  BigInt? sse_decode_opt_box_autoadd_u_64(SseDeserializer deserializer);

  @protected
  List<LibsqlValue>? sse_decode_opt_list_libsql_value(
      SseDeserializer deserializer);

  @protected
  PrepareResult sse_decode_prepare_result(SseDeserializer deserializer);

  @protected
  QueryResult sse_decode_query_result(SseDeserializer deserializer);

  @protected
  (String, LibsqlReturnValue) sse_decode_record_string_libsql_return_value(
      SseDeserializer deserializer);

  @protected
  (String, LibsqlValue) sse_decode_record_string_libsql_value(
      SseDeserializer deserializer);

  @protected
  SyncResult sse_decode_sync_result(SseDeserializer deserializer);

  @protected
  TransactionCommitResult sse_decode_transaction_commit_result(
      SseDeserializer deserializer);

  @protected
  TransactionResult sse_decode_transaction_result(SseDeserializer deserializer);

  @protected
  TransactionRollbackResult sse_decode_transaction_rollback_result(
      SseDeserializer deserializer);

  @protected
  BigInt sse_decode_u_64(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  void sse_encode_Map_String_libsql_return_value(
      Map<String, LibsqlReturnValue> self, SseSerializer serializer);

  @protected
  void sse_encode_Map_String_libsql_value(
      Map<String, LibsqlValue> self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_batch_result(BatchResult self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_bool(bool self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_connect_args(
      ConnectArgs self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_libsql_connection(
      LibsqlConnection self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_libsql_open_flags(
      LibsqlOpenFlags self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_libsql_params(
      LibsqlParams self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_libsql_statement(
      LibsqlStatement self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_libsql_transaction(
      LibsqlTransaction self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_libsql_transaction_behavior(
      LibsqlTransactionBehavior self, SseSerializer serializer);

  @protected
  void sse_encode_box_autoadd_u_64(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_connect_args(ConnectArgs self, SseSerializer serializer);

  @protected
  void sse_encode_connect_result(ConnectResult self, SseSerializer serializer);

  @protected
  void sse_encode_execute_result(ExecuteResult self, SseSerializer serializer);

  @protected
  void sse_encode_f_64(double self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_i_64(PlatformInt64 self, SseSerializer serializer);

  @protected
  void sse_encode_libsql_connection(
      LibsqlConnection self, SseSerializer serializer);

  @protected
  void sse_encode_libsql_open_flags(
      LibsqlOpenFlags self, SseSerializer serializer);

  @protected
  void sse_encode_libsql_params(LibsqlParams self, SseSerializer serializer);

  @protected
  void sse_encode_libsql_return_value(
      LibsqlReturnValue self, SseSerializer serializer);

  @protected
  void sse_encode_libsql_statement(
      LibsqlStatement self, SseSerializer serializer);

  @protected
  void sse_encode_libsql_transaction(
      LibsqlTransaction self, SseSerializer serializer);

  @protected
  void sse_encode_libsql_transaction_behavior(
      LibsqlTransactionBehavior self, SseSerializer serializer);

  @protected
  void sse_encode_libsql_value(LibsqlValue self, SseSerializer serializer);

  @protected
  void sse_encode_list_Map_String_libsql_return_value(
      List<Map<String, LibsqlReturnValue>> self, SseSerializer serializer);

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer);

  @protected
  void sse_encode_list_libsql_value(
      List<LibsqlValue> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_list_record_string_libsql_return_value(
      List<(String, LibsqlReturnValue)> self, SseSerializer serializer);

  @protected
  void sse_encode_list_record_string_libsql_value(
      List<(String, LibsqlValue)> self, SseSerializer serializer);

  @protected
  void sse_encode_opt_Map_String_libsql_value(
      Map<String, LibsqlValue>? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_bool(bool? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_libsql_open_flags(
      LibsqlOpenFlags? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_libsql_params(
      LibsqlParams? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_libsql_transaction_behavior(
      LibsqlTransactionBehavior? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_box_autoadd_u_64(BigInt? self, SseSerializer serializer);

  @protected
  void sse_encode_opt_list_libsql_value(
      List<LibsqlValue>? self, SseSerializer serializer);

  @protected
  void sse_encode_prepare_result(PrepareResult self, SseSerializer serializer);

  @protected
  void sse_encode_query_result(QueryResult self, SseSerializer serializer);

  @protected
  void sse_encode_record_string_libsql_return_value(
      (String, LibsqlReturnValue) self, SseSerializer serializer);

  @protected
  void sse_encode_record_string_libsql_value(
      (String, LibsqlValue) self, SseSerializer serializer);

  @protected
  void sse_encode_sync_result(SyncResult self, SseSerializer serializer);

  @protected
  void sse_encode_transaction_commit_result(
      TransactionCommitResult self, SseSerializer serializer);

  @protected
  void sse_encode_transaction_result(
      TransactionResult self, SseSerializer serializer);

  @protected
  void sse_encode_transaction_rollback_result(
      TransactionRollbackResult self, SseSerializer serializer);

  @protected
  void sse_encode_u_64(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
extension type RustLibWasmModule._(JSObject _) implements JSObject {}
