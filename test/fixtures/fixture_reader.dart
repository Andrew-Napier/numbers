import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

//String fixture(String name) => File('test\\fixtures\\$name').readAsStringSync();
String fixture(String name) =>
    File(p.joinAll(["test", "fixtures", name])).readAsStringSync();
