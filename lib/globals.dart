library;

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Map<String, String> env = dotenv.env;

FirebaseFirestore db = FirebaseFirestore.instance;
