import 'dart:async';
import 'dart:ui';

class SearchDebounce {
  /// Throttle duration.
  final Duration duration;

  /// Search method.
  /// Called after [duration] is complete.
  final Future<List> Function(String)? searchRequest;

  /// Sync search method.
  ///
  /// Use for sync functions, e.g. local search
  ///
  /// Called after [duration] is complete.
  final List Function(String)? syncSearchRequest;

  /// Return searched data.
  /// Must be called only when [_isDisposed] is false.
  final Function(List) onSearchCompleted;

  /// Called when user clears input.
  final VoidCallback onSearchCanceled;

  SearchDebounce({
    this.duration = const Duration(milliseconds: 350),
    this.searchRequest,
    this.syncSearchRequest,
    required this.onSearchCompleted,
    required this.onSearchCanceled,
  }) : assert(
          searchRequest != null && syncSearchRequest == null ||
              searchRequest == null && syncSearchRequest != null,
          'Either [searchRequest] or [syncSearchRequest] must be not null',
        );

  /// Throttle timer.
  /// Used to avoid many [searchRequest] calls.
  Timer? _timer;

  /// Last search input.
  String? _searchedRequest;

  /// Flag to cancel the last result of [searchRequest] due
  /// to clearing the input field.
  bool _isDisposed = false;

  /// Called with [TextField.onChanged].
  void search(String? input) {
    /// Input cleared, cancel current search result
    if (input?.isEmpty ?? true) {
      _searchedRequest = '';
      dispose();
      onSearchCanceled.call();
      return;
    }

    /// Skip input
    if (_timer?.isActive ?? false) {
      return;
    }

    /// Start search request
    _isDisposed = false;
    _timer = Timer(duration, () {
      _searchedRequest = input;
      if (searchRequest != null) {
        searchRequest!(input ?? '').then((value) {
          if (!_isDisposed) {
            onSearchCompleted.call(value);
          }
        });
      } else if (syncSearchRequest != null) {
        final value = syncSearchRequest!(input ?? '');
        if (!_isDisposed) {
          onSearchCompleted.call(value);
        }
      }

      _timer?.cancel();
    });
  }

  /// Called with [TextField.onFieldSubmitted].
  /// Used to avoid ignoring the result of a completed search text.
  void onSearchEnded(String? input) {
    if (_isDisposed || input == _searchedRequest) {
      return;
    }
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _searchedRequest = input;
    if (searchRequest != null) {
      searchRequest!(input ?? '').then((value) {
        onSearchCompleted.call(value);
      });
    } else if (syncSearchRequest != null) {
      final value = syncSearchRequest!(input ?? '');
      onSearchCompleted.call(value);
    }
  }

  /// Dispose timer to avoid memory leak.
  /// Must be called with [LogicBase.dispose].
  void dispose() {
    _isDisposed = true;
    _timer?.cancel();
  }
}
