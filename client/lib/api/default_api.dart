//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class DefaultApi {
  DefaultApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete a book
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the book to delete
  Future<Response> bookDeleteWithHttpInfo(int id,) async {
    // ignore: prefer_const_declarations
    final path = r'/book';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'id', id));

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Delete a book
  ///
  /// Parameters:
  ///
  /// * [int] id (required):
  ///   The id of the book to delete
  Future<void> bookDelete(int id,) async {
    final response = await bookDeleteWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get a list of books
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> bookGetWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/book';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get a list of books
  Future<List<BookGet200ResponseInner>?> bookGet() async {
    final response = await bookGetWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<BookGet200ResponseInner>') as List)
        .cast<BookGet200ResponseInner>()
        .toList(growable: false);

    }
    return null;
  }

  /// Add a new book
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BookPostRequest] bookPostRequest (required):
  Future<Response> bookPostWithHttpInfo(BookPostRequest bookPostRequest,) async {
    // ignore: prefer_const_declarations
    final path = r'/book';

    // ignore: prefer_final_locals
    Object? postBody = bookPostRequest;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Add a new book
  ///
  /// Parameters:
  ///
  /// * [BookPostRequest] bookPostRequest (required):
  Future<void> bookPost(BookPostRequest bookPostRequest,) async {
    final response = await bookPostWithHttpInfo(bookPostRequest,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Update an existing book
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [BookGet200ResponseInner] bookGet200ResponseInner (required):
  Future<Response> bookPutWithHttpInfo(BookGet200ResponseInner bookGet200ResponseInner,) async {
    // ignore: prefer_const_declarations
    final path = r'/book';

    // ignore: prefer_final_locals
    Object? postBody = bookGet200ResponseInner;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Update an existing book
  ///
  /// Parameters:
  ///
  /// * [BookGet200ResponseInner] bookGet200ResponseInner (required):
  Future<void> bookPut(BookGet200ResponseInner bookGet200ResponseInner,) async {
    final response = await bookPutWithHttpInfo(bookGet200ResponseInner,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
