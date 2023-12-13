# openapi.api.DefaultApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:3000*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bookDelete**](DefaultApi.md#bookdelete) | **DELETE** /book | Delete a book
[**bookGet**](DefaultApi.md#bookget) | **GET** /book | Get a list of books
[**bookPost**](DefaultApi.md#bookpost) | **POST** /book | Add a new book
[**bookPut**](DefaultApi.md#bookput) | **PUT** /book | Update an existing book


# **bookDelete**
> bookDelete(id)

Delete a book

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final id = 56; // int | The id of the book to delete

try {
    api_instance.bookDelete(id);
} catch (e) {
    print('Exception when calling DefaultApi->bookDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| The id of the book to delete | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookGet**
> List<BookGet200ResponseInner> bookGet()

Get a list of books

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();

try {
    final result = api_instance.bookGet();
    print(result);
} catch (e) {
    print('Exception when calling DefaultApi->bookGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<BookGet200ResponseInner>**](BookGet200ResponseInner.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookPost**
> bookPost(bookPostRequest)

Add a new book

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final bookPostRequest = BookPostRequest(); // BookPostRequest | 

try {
    api_instance.bookPost(bookPostRequest);
} catch (e) {
    print('Exception when calling DefaultApi->bookPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookPostRequest** | [**BookPostRequest**](BookPostRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **bookPut**
> bookPut(bookGet200ResponseInner)

Update an existing book

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = DefaultApi();
final bookGet200ResponseInner = BookGet200ResponseInner(); // BookGet200ResponseInner | 

try {
    api_instance.bookPut(bookGet200ResponseInner);
} catch (e) {
    print('Exception when calling DefaultApi->bookPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bookGet200ResponseInner** | [**BookGet200ResponseInner**](BookGet200ResponseInner.md)|  | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

