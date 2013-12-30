// Copyright (c) 2013, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Use the File `writeAsBytes()` method to write bytes to a file.

import 'dart:io';
import 'dart:convert';

void main() {
  final string = 'Dart!';
  // Encode to UTF8.
  var encodedData = UTF8.encode(string);

  new File('file.txt')
    .writeAsBytes(encodedData)
    .then((file) => file.readAsBytes())
    .then((data) {
      // Decode to a string, and print.
      print(UTF8.decode(data)); // Prints 'Dart!'.
  });
}
