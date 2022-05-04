import 'package:sqflite/sqflite.dart';
import 'package:todo_list/app/core/database/migration.dart/migration.dart';

class MigrationV2 implements Migration {
  @override
  void create(Batch batch) {
    batch.execute('create table teste(id integer)');
  }

  @override
  void update(Batch batch) {
    batch.execute('create table teste(id integer)');
  }
}
