# panty_bill

Panty Bill is a bill tracker for shared houses.
It is mainly a playground for me to experiment some flutter features and firebase environment.
It is web app published on firebase.

## Getting Started

The project can be locally launched with `flutter run`

## Run firebase emulators

````
firebase emulators:start --only database
```

## Typesafe firestore

The project uses Firestore ODM.

### Generate an entity

Replace the entity name (<entity>) with the actual name.

```
import 'package:json_annotation/json_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

// This file is generated after the modelling
part '<entity>.g.dart';

/// A custom JsonSerializable annotation that supports decoding objects such
/// as Timestamps and DateTimes.
/// This variable can be reused between different models
const firestoreSerializable = JsonSerializable(
  converters: firestoreJsonConverters,
  // The following values could alternatively be set inside your `build.yaml`
  explicitToJson: true,
  createFieldMap: true,
  createPerFieldToJson: true,
);

@Collection<Bill>('table name')
@firestoreSerializable
class <Entity> {
  <Entity>({
  // fields
    required this.id,
    // ...
  });

  factory <Entity>.fromJson(Map<String, Object?> json) => _$<Entity>FromJson(json);

  // fields
  @Id()
  final String id;
  // ...

  Map<String, Object?> toJson() => _$<Entity>ToJson(this);
}

```

### Code generation

```
dart run build_runner build --delete-conflicting-outputs
```

or

```
dart run build_runner watch --delete-conflicting-outputs
```
````
