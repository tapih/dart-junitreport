// Copyright (c) 2016-2021, TOPdesk. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed by a MIT-style
// license that can be found in the LICENSE file.

import 'package:testreport/testreport.dart';
import 'package:junitreport/src/impl/report.dart';

/// Transformer to convert a [Report] to an xml String.
abstract class JUnitReport {
  /// Creates a JUnitReport with the given [base], [fileRelativeTo] and [package].
  ///
  /// In the [Report], the [Suite]s contain the path to the test files.
  ///
  /// To modify this path, [base] will be removed from it,
  /// and [package] will be prepended.
  ///
  /// [Test]s contain the URI to the test file that starts with 'file://'.
  ///
  /// To convert this URI to a path, [fileRelativeTo] is used to calculate the
  /// relative path.
  factory JUnitReport({String base = '', String fileRelativeTo = '.', String package = ''}) =>
      XmlReport(base, fileRelativeTo, package);

  /// Transforms the given [Reports] to an xml String.
  String toXml(Report report);
}
