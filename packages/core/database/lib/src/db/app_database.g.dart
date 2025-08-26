// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CoinsTable extends Coins with TableInfo<$CoinsTable, Coin> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CoinsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
    'symbol',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, name, symbol];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'coins';
  @override
  VerificationContext validateIntegrity(
    Insertable<Coin> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(
        _symbolMeta,
        symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta),
      );
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Coin map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Coin(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      symbol: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}symbol'],
      )!,
    );
  }

  @override
  $CoinsTable createAlias(String alias) {
    return $CoinsTable(attachedDatabase, alias);
  }
}

class Coin extends DataClass implements Insertable<Coin> {
  final String id;
  final String name;
  final String symbol;
  const Coin({required this.id, required this.name, required this.symbol});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['name'] = Variable<String>(name);
    map['symbol'] = Variable<String>(symbol);
    return map;
  }

  CoinsCompanion toCompanion(bool nullToAbsent) {
    return CoinsCompanion(
      id: Value(id),
      name: Value(name),
      symbol: Value(symbol),
    );
  }

  factory Coin.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Coin(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      symbol: serializer.fromJson<String>(json['symbol']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'symbol': serializer.toJson<String>(symbol),
    };
  }

  Coin copyWith({String? id, String? name, String? symbol}) => Coin(
    id: id ?? this.id,
    name: name ?? this.name,
    symbol: symbol ?? this.symbol,
  );
  Coin copyWithCompanion(CoinsCompanion data) {
    return Coin(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      symbol: data.symbol.present ? data.symbol.value : this.symbol,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Coin(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, symbol);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Coin &&
          other.id == this.id &&
          other.name == this.name &&
          other.symbol == this.symbol);
}

class CoinsCompanion extends UpdateCompanion<Coin> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> symbol;
  final Value<int> rowid;
  const CoinsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.symbol = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CoinsCompanion.insert({
    required String id,
    required String name,
    required String symbol,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       name = Value(name),
       symbol = Value(symbol);
  static Insertable<Coin> custom({
    Expression<String>? id,
    Expression<String>? name,
    Expression<String>? symbol,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (symbol != null) 'symbol': symbol,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CoinsCompanion copyWith({
    Value<String>? id,
    Value<String>? name,
    Value<String>? symbol,
    Value<int>? rowid,
  }) {
    return CoinsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CoinsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CoinsTable coins = $CoinsTable(this);
  late final CoinDao coinDao = CoinDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [coins];
}

typedef $$CoinsTableCreateCompanionBuilder =
    CoinsCompanion Function({
      required String id,
      required String name,
      required String symbol,
      Value<int> rowid,
    });
typedef $$CoinsTableUpdateCompanionBuilder =
    CoinsCompanion Function({
      Value<String> id,
      Value<String> name,
      Value<String> symbol,
      Value<int> rowid,
    });

class $$CoinsTableFilterComposer extends Composer<_$AppDatabase, $CoinsTable> {
  $$CoinsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnFilters(column),
  );
}

class $$CoinsTableOrderingComposer
    extends Composer<_$AppDatabase, $CoinsTable> {
  $$CoinsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get symbol => $composableBuilder(
    column: $table.symbol,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$CoinsTableAnnotationComposer
    extends Composer<_$AppDatabase, $CoinsTable> {
  $$CoinsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get symbol =>
      $composableBuilder(column: $table.symbol, builder: (column) => column);
}

class $$CoinsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $CoinsTable,
          Coin,
          $$CoinsTableFilterComposer,
          $$CoinsTableOrderingComposer,
          $$CoinsTableAnnotationComposer,
          $$CoinsTableCreateCompanionBuilder,
          $$CoinsTableUpdateCompanionBuilder,
          (Coin, BaseReferences<_$AppDatabase, $CoinsTable, Coin>),
          Coin,
          PrefetchHooks Function()
        > {
  $$CoinsTableTableManager(_$AppDatabase db, $CoinsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CoinsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CoinsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CoinsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> symbol = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => CoinsCompanion(
                id: id,
                name: name,
                symbol: symbol,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String name,
                required String symbol,
                Value<int> rowid = const Value.absent(),
              }) => CoinsCompanion.insert(
                id: id,
                name: name,
                symbol: symbol,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$CoinsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $CoinsTable,
      Coin,
      $$CoinsTableFilterComposer,
      $$CoinsTableOrderingComposer,
      $$CoinsTableAnnotationComposer,
      $$CoinsTableCreateCompanionBuilder,
      $$CoinsTableUpdateCompanionBuilder,
      (Coin, BaseReferences<_$AppDatabase, $CoinsTable, Coin>),
      Coin,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CoinsTableTableManager get coins =>
      $$CoinsTableTableManager(_db, _db.coins);
}
