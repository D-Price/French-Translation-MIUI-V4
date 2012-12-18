.class public Lcom/android/providers/contacts/t9/T9CallLogDepot;
.super Ljava/lang/Object;
.source "T9CallLogDepot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/t9/T9CallLogDepot$2;,
        Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;
    }
.end annotation


# static fields
.field private static final CONTACT_ID_SELECTION_PROJECTION:Ljava/lang/String;

.field private static final sCallsProjectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllCursors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/DataCursor;",
            ">;"
        }
    .end annotation
.end field

.field private mDepot:Lcom/android/providers/contacts/t9/T9Depot;

.field private mDirty:I

.field private mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

.field private mItemLinkTail:Lcom/android/providers/contacts/t9/T9CallLogItem;

.field private mNormalizedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/t9/T9CallLogItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CASE  WHEN cid IS NULL THEN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ELSE cid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " END AS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "contact_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->CONTACT_ID_SELECTION_PROJECTION:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    .line 76
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v2, "_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "number"

    const-string v2, "number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "normalized_number"

    const-string v2, "normalized_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "photo_id"

    const-string v2, "photo_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "contact_id"

    sget-object v2, Lcom/android/providers/contacts/t9/T9CallLogDepot;->CONTACT_ID_SELECTION_PROJECTION:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "country_iso"

    const-string v2, "countryiso"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "voicemail_uri"

    const-string v2, "voicemail_uri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_count"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "missed_count"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "is_new"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_type"

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_date"

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "call_duration"

    const-string v2, "duration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "firewall_type"

    const-string v2, "firewalltype"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "forwarded_call"

    const-string v2, "forwarded_call"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "key_type"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "match_detail"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "display_string"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    const-string v1, "data_id"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    return-void
.end method

.method public constructor <init>(Lcom/android/providers/contacts/t9/T9Depot;)V
    .locals 1
    .parameter "t9Depot"

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    .line 102
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDirty:I

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mAllCursors:Ljava/util/ArrayList;

    .line 219
    iput-object p1, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/t9/T9CallLogDepot;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mAllCursors:Ljava/util/ArrayList;

    return-object v0
.end method

.method private declared-synchronized append(Lcom/android/providers/contacts/t9/T9CallLogItem;)V
    .locals 2
    .parameter "callLogItem"

    .prologue
    .line 587
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->insertItemBeforeInternal(Lcom/android/providers/contacts/t9/T9CallLogItem;Lcom/android/providers/contacts/t9/T9CallLogItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 592
    :cond_0
    monitor-exit p0

    return-void

    .line 587
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private deleteCallLogByIds(Ljava/util/List;)V
    .locals 28
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 361
    .local v20, callLogItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9CallLogItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

    move-object/from16 v19, v0

    .local v19, callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :goto_0
    if-eqz v19, :cond_0

    .line 362
    move-object/from16 v0, v19

    iget-wide v3, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_2

    .line 363
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 370
    :cond_0
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v27, newCallLogItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9CallLogItem;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .end local v19           #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    check-cast v19, Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 372
    .restart local v19       #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    const/16 v26, 0x0

    .line 373
    .local v26, newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    const/16 v23, 0x0

    .line 375
    .local v23, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "normalized_number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 377
    .local v5, whereClause:Ljava/lang/String;
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 378
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v3, " (SELECT _id, number, normalized_number, matched_number, countryiso, voicemail_uri, new, type, date, duration, firewalltype, forwarded_call, substr(normalized_number, -7, 7) AS calls_min_match FROM calls GROUP BY normalized_number ORDER BY date DESC) LEFT OUTER JOIN (SELECT contact_id AS cid, photo_id, display_name AS name, normalized_data, substr(normalized_data, -7, 7) AS t9_min_match FROM t9_lookup) ON ( calls_min_match = t9_min_match AND PHONE_NUMBERS_EQUAL(matched_number, normalized_data, 0))"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 379
    sget-object v3, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 380
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 381
    sget-object v3, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "date DESC"

    const-string v10, "1"

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v23

    .line 383
    :goto_2
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 384
    const/4 v3, 0x1

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 385
    .local v21, contactId:J
    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 386
    .local v25, id:Ljava/lang/Long;
    const/4 v3, 0x3

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 387
    .local v9, number:Ljava/lang/String;
    const/4 v3, 0x7

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 388
    .local v11, type:I
    const/16 v3, 0x9

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 389
    .local v12, duration:J
    const/16 v3, 0x8

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 390
    .local v14, date:J
    const/16 v3, 0xe

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/16 v16, 0x1

    .line 392
    .local v16, isForwarded:Z
    :goto_3
    const/16 v3, 0xd

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 393
    .local v17, firewallType:I
    const/16 v3, 0x12

    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 395
    .local v10, normalizedNumber:Ljava/lang/String;
    new-instance v6, Lcom/android/providers/contacts/t9/T9CallLogItem;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/16 v18, 0x0

    invoke-direct/range {v6 .. v18}, Lcom/android/providers/contacts/t9/T9CallLogItem;-><init>(JLjava/lang/String;Ljava/lang/String;IJJZILcom/android/providers/contacts/t9/T9Item;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    .end local v26           #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .local v6, newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    const-wide/16 v3, -0x1

    cmp-long v3, v21, v3

    if-nez v3, :cond_4

    const/4 v3, 0x0

    :goto_4
    :try_start_1
    iput-object v3, v6, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    .line 400
    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v26, v6

    .line 401
    .end local v6           #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .restart local v26       #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    goto :goto_2

    .line 361
    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v5           #whereClause:Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #normalizedNumber:Ljava/lang/String;
    .end local v11           #type:I
    .end local v12           #duration:J
    .end local v14           #date:J
    .end local v16           #isForwarded:Z
    .end local v17           #firewallType:I
    .end local v21           #contactId:J
    .end local v23           #cursor:Landroid/database/Cursor;
    .end local v24           #i$:Ljava/util/Iterator;
    .end local v25           #id:Ljava/lang/Long;
    .end local v26           #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .end local v27           #newCallLogItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9CallLogItem;>;"
    :cond_2
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    move-object/from16 v19, v0

    goto/16 :goto_0

    .line 390
    .restart local v2       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v5       #whereClause:Ljava/lang/String;
    .restart local v9       #number:Ljava/lang/String;
    .restart local v11       #type:I
    .restart local v12       #duration:J
    .restart local v14       #date:J
    .restart local v21       #contactId:J
    .restart local v23       #cursor:Landroid/database/Cursor;
    .restart local v24       #i$:Ljava/util/Iterator;
    .restart local v25       #id:Ljava/lang/Long;
    .restart local v26       #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .restart local v27       #newCallLogItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9CallLogItem;>;"
    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    .line 397
    .end local v26           #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .restart local v6       #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .restart local v10       #normalizedNumber:Ljava/lang/String;
    .restart local v16       #isForwarded:Z
    .restart local v17       #firewallType:I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1, v6}, Lcom/android/providers/contacts/t9/T9Depot;->getItem(JLcom/android/providers/contacts/t9/T9CallLogItem;)Lcom/android/providers/contacts/t9/T9Item;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v3

    goto :goto_4

    .line 403
    .end local v6           #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #normalizedNumber:Ljava/lang/String;
    .end local v11           #type:I
    .end local v12           #duration:J
    .end local v14           #date:J
    .end local v16           #isForwarded:Z
    .end local v17           #firewallType:I
    .end local v21           #contactId:J
    .end local v25           #id:Ljava/lang/Long;
    .restart local v26       #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :cond_5
    if-eqz v23, :cond_1

    .line 404
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 403
    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v5           #whereClause:Ljava/lang/String;
    :catchall_0
    move-exception v3

    move-object/from16 v6, v26

    .end local v26           #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .restart local v6       #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :goto_5
    if-eqz v23, :cond_6

    .line 404
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v3

    .line 409
    .end local v6           #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .end local v23           #cursor:Landroid/database/Cursor;
    :cond_7
    monitor-enter p0

    .line 410
    :try_start_3
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .end local v19           #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    check-cast v19, Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 411
    .restart local v19       #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->removeItemInternal(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    goto :goto_6

    .line 417
    .end local v19           #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 414
    .restart local v19       #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :cond_8
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :goto_7
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    .end local v19           #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    check-cast v19, Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 415
    .restart local v19       #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->insert(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    goto :goto_7

    .line 417
    :cond_9
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 418
    return-void

    .line 403
    .restart local v2       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v5       #whereClause:Ljava/lang/String;
    .restart local v6       #newCallLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .restart local v9       #number:Ljava/lang/String;
    .restart local v10       #normalizedNumber:Ljava/lang/String;
    .restart local v11       #type:I
    .restart local v12       #duration:J
    .restart local v14       #date:J
    .restart local v16       #isForwarded:Z
    .restart local v17       #firewallType:I
    .restart local v21       #contactId:J
    .restart local v23       #cursor:Landroid/database/Cursor;
    .restart local v25       #id:Ljava/lang/Long;
    :catchall_2
    move-exception v3

    goto :goto_5
.end method

.method static fill(Landroid/database/CursorWindow;IILcom/android/providers/contacts/t9/T9CallLogItem;)V
    .locals 9
    .parameter "window"
    .parameter "row"
    .parameter "columnSize"
    .parameter "item"

    .prologue
    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, -0x1

    .line 123
    const/4 v0, 0x0

    .local v0, column:I
    :goto_0
    if-ge v0, p2, :cond_a

    .line 124
    packed-switch v0, :pswitch_data_0

    .line 212
    :pswitch_0
    invoke-virtual {p0, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    .line 123
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :pswitch_1
    iget-wide v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mId:J

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 130
    :pswitch_2
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    if-nez v1, :cond_0

    .line 131
    invoke-virtual {p0, v7, v8, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 133
    :cond_0
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v1, v1, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 138
    :pswitch_3
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    if-nez v1, :cond_1

    .line 139
    invoke-virtual {p0, v7, v8, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 141
    :cond_1
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v1, v1, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 146
    :pswitch_4
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    if-nez v1, :cond_3

    .line 147
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNumber:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 148
    invoke-virtual {p0, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 150
    :cond_2
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    goto :goto_1

    .line 153
    :cond_3
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    iget-object v1, v1, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 154
    invoke-virtual {p0, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 156
    :cond_4
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    iget-object v1, v1, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    goto :goto_1

    .line 162
    :pswitch_5
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNumber:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 163
    invoke-virtual {p0, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 165
    :cond_5
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    goto :goto_1

    .line 170
    :pswitch_6
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    if-nez v1, :cond_6

    .line 171
    invoke-virtual {p0, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 173
    :cond_6
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {p0, v1, p1, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    goto :goto_1

    .line 178
    :pswitch_7
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    if-eqz v1, :cond_7

    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v1, v1, Lcom/android/providers/contacts/t9/T9Item;->mPhotoId:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_8

    .line 179
    :cond_7
    invoke-virtual {p0, p1, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 181
    :cond_8
    iget-object v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v1, v1, Lcom/android/providers/contacts/t9/T9Item;->mPhotoId:J

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 186
    :pswitch_8
    iget v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mType:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto/16 :goto_1

    .line 190
    :pswitch_9
    iget-wide v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mDuration:J

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto/16 :goto_1

    .line 194
    :pswitch_a
    iget-wide v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mDate:J

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto/16 :goto_1

    .line 198
    :pswitch_b
    iget-boolean v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mIsForwarded:Z

    if-eqz v1, :cond_9

    move-wide v1, v3

    :goto_2
    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto/16 :goto_1

    :cond_9
    move-wide v1, v5

    goto :goto_2

    .line 204
    :pswitch_c
    iget v1, p3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mFirewallType:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto/16 :goto_1

    .line 208
    :pswitch_d
    invoke-virtual {p0, v3, v4, p1, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto/16 :goto_1

    .line 216
    :cond_a
    return-void

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_d
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized fillList(Ljava/util/ArrayList;Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;)V
    .locals 5
    .parameter
    .parameter "filter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9CallLogItem;",
            ">;",
            "Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9CallLogItem;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .local v0, callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :goto_0
    if-eqz v0, :cond_2

    .line 596
    sget-object v1, Lcom/android/providers/contacts/t9/T9CallLogDepot$2;->$SwitchMap$com$android$providers$contacts$t9$T9CallLogDepot$Filter:[I

    invoke-virtual {p2}, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 595
    :cond_0
    :goto_1
    iget-object v0, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    goto :goto_0

    .line 598
    :pswitch_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 595
    .end local v0           #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 601
    .restart local v0       #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :pswitch_1
    :try_start_1
    iget v1, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 602
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 606
    :pswitch_2
    iget v1, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 607
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 611
    :pswitch_3
    iget v1, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 612
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 616
    :pswitch_4
    iget-object v1, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v1, v1, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 617
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 621
    :cond_2
    monitor-exit p0

    return-void

    .line 596
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized getCallLog(Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;)Landroid/database/Cursor;
    .locals 6
    .parameter "filter"

    .prologue
    .line 624
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 625
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9CallLogItem;>;"
    invoke-direct {p0, v1, p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->fillList(Ljava/util/ArrayList;Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;)V

    .line 627
    new-instance v0, Lcom/android/providers/contacts/t9/DataCursor;

    invoke-virtual {p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;

    invoke-direct {v3, p0, v1}, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;-><init>(Lcom/android/providers/contacts/t9/T9CallLogDepot;Ljava/util/ArrayList;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CallLog.filter."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/providers/contacts/t9/DataCursor;-><init>(Ljava/lang/String;Lcom/android/providers/contacts/t9/DataCursor$DataProvider;Ljava/lang/String;)V

    .line 665
    .local v0, cursor:Lcom/android/providers/contacts/t9/DataCursor;
    iget-object v2, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mAllCursors:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    monitor-exit p0

    return-object v0

    .line 624
    .end local v0           #cursor:Lcom/android/providers/contacts/t9/DataCursor;
    .end local v1           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9CallLogItem;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private getFilter(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;
    .locals 7
    .parameter "selection"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 670
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Invalid:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    .line 671
    .local v0, filter:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 672
    const-string v2, "\\(|\\)"

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 673
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-lez v2, :cond_1

    .line 674
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, parts:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v6, :cond_0

    const-string v2, "type"

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 676
    aget-object v2, v1, v5

    const-string v3, "\'"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 698
    .end local v1           #parts:[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 678
    .restart local v1       #parts:[Ljava/lang/String;
    :pswitch_0
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Missed:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    .line 679
    goto :goto_0

    .line 681
    :pswitch_1
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Accepted:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    .line 682
    goto :goto_0

    .line 684
    :pswitch_2
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Called:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    goto :goto_0

    .line 688
    .end local v1           #parts:[Ljava/lang/String;
    :cond_1
    const-string v2, "<"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 689
    const-string v2, "<"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 690
    .restart local v1       #parts:[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v6, :cond_2

    const-string v2, "contact_id"

    aget-object v3, v1, v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    aget-object v2, v1, v5

    const-string v3, "\'"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 692
    :cond_3
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Stranger:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    goto :goto_0

    .line 696
    .end local v1           #parts:[Ljava/lang/String;
    :cond_4
    sget-object v0, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->None:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    goto :goto_0

    .line 676
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized insert(Lcom/android/providers/contacts/t9/T9CallLogItem;)V
    .locals 5
    .parameter "callLogItem"

    .prologue
    .line 561
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 562
    .local v0, item:Lcom/android/providers/contacts/t9/T9CallLogItem;
    if-eqz v0, :cond_0

    .line 563
    iget-wide v1, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mDate:J

    iget-wide v3, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mDate:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 565
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->removeItemInternal(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 572
    :cond_0
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const/4 v0, 0x0

    .line 574
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

    if-eqz v1, :cond_1

    .line 575
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 576
    :goto_0
    if-eqz v0, :cond_1

    .line 577
    iget-wide v1, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mDate:J

    iget-wide v3, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mDate:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 583
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->insertItemBeforeInternal(Lcom/android/providers/contacts/t9/T9CallLogItem;Lcom/android/providers/contacts/t9/T9CallLogItem;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    :cond_2
    monitor-exit p0

    return-void

    .line 580
    :cond_3
    :try_start_1
    iget-object v0, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 561
    .end local v0           #item:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized insertItemBeforeInternal(Lcom/android/providers/contacts/t9/T9CallLogItem;Lcom/android/providers/contacts/t9/T9CallLogItem;)V
    .locals 1
    .parameter "callLogItem"
    .parameter "next"

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iput-object p2, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 545
    if-nez p2, :cond_0

    .line 546
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkTail:Lcom/android/providers/contacts/t9/T9CallLogItem;

    iput-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 547
    iput-object p1, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkTail:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 553
    :goto_0
    iget-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

    iput-object p1, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :goto_1
    monitor-exit p0

    return-void

    .line 549
    :cond_0
    :try_start_1
    iget-object v0, p2, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

    iput-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 550
    iput-object p1, p2, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 556
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method static matchItem(Lcom/android/providers/contacts/t9/T9Item;Lcom/android/providers/contacts/t9/T9CallLogItem;)Z
    .locals 8
    .parameter "item"
    .parameter "callLogItem"

    .prologue
    const/4 v5, 0x7

    const/4 v3, 0x0

    .line 107
    if-eqz p0, :cond_0

    iget-object v4, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    if-nez v4, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v3

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 112
    .local v1, len1:I
    iget-object v4, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    .line 113
    .local v2, len2:I
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 114
    .local v0, compareLen:I
    iget-object v4, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    sub-int v5, v2, v0

    iget-object v6, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    sub-int v7, v1, v0

    invoke-virtual {v4, v5, v6, v7, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    iget-object v4, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNumber:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private declared-synchronized notifyChanged()V
    .locals 3

    .prologue
    .line 702
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mAllCursors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/t9/DataCursor;

    .line 703
    .local v0, cursor:Lcom/android/providers/contacts/t9/DataCursor;
    invoke-virtual {v0}, Lcom/android/providers/contacts/t9/DataCursor;->onDataChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 702
    .end local v0           #cursor:Lcom/android/providers/contacts/t9/DataCursor;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 705
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized refresh()V
    .locals 4

    .prologue
    .line 496
    monitor-enter p0

    :try_start_0
    iget v3, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDirty:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 526
    :goto_0
    monitor-exit p0

    return-void

    .line 500
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 502
    .local v1, timeStart:J
    iget v3, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDirty:I

    packed-switch v3, :pswitch_data_0

    .line 523
    :cond_1
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDirty:I

    .line 525
    const-string v3, "refresh call log"

    invoke-static {v1, v2, v3}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 496
    .end local v1           #timeStart:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 504
    .restart local v1       #timeStart:J
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .local v0, callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :goto_1
    if-eqz v0, :cond_1

    .line 505
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->updateItem(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 504
    iget-object v0, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    goto :goto_1

    .line 509
    .end local v0           #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :pswitch_1
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .restart local v0       #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :goto_2
    if-eqz v0, :cond_1

    .line 510
    iget-object v3, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    if-nez v3, :cond_2

    .line 511
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->updateItem(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 509
    :cond_2
    iget-object v0, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    goto :goto_2

    .line 516
    .end local v0           #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :pswitch_2
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .restart local v0       #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :goto_3
    if-eqz v0, :cond_1

    .line 517
    iget-object v3, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    if-eqz v3, :cond_3

    .line 518
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->updateItem(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 516
    :cond_3
    iget-object v0, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized removeItemInternal(Lcom/android/providers/contacts/t9/T9CallLogItem;)V
    .locals 2
    .parameter "callLogItem"

    .prologue
    .line 529
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

    iget-object v1, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    iput-object v1, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 534
    :goto_0
    iget-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    if-eqz v0, :cond_1

    .line 535
    iget-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    iget-object v1, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

    iput-object v1, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 539
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 540
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    monitor-exit p0

    return-void

    .line 532
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 537
    :cond_1
    :try_start_2
    iget-object v0, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mPrev:Lcom/android/providers/contacts/t9/T9CallLogItem;

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkTail:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static removeParenthesis(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    const/16 v6, 0x20

    .line 708
    move-object v3, p0

    .line 709
    .local v3, ret:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 710
    const/4 v4, 0x0

    .local v4, start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 711
    .local v2, end:I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 712
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, charStart:C
    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 713
    .local v0, charEnd:C
    if-gt v1, v6, :cond_0

    .line 714
    add-int/lit8 v4, v4, 0x1

    .line 715
    goto :goto_0

    .line 717
    :cond_0
    if-gt v0, v6, :cond_1

    .line 718
    add-int/lit8 v2, v2, -0x1

    .line 719
    goto :goto_0

    .line 721
    :cond_1
    const/16 v5, 0x28

    if-ne v1, v5, :cond_2

    const/16 v5, 0x29

    if-ne v0, v5, :cond_2

    .line 722
    add-int/lit8 v4, v4, 0x1

    .line 723
    add-int/lit8 v2, v2, -0x1

    .line 724
    goto :goto_0

    .line 729
    .end local v0           #charEnd:C
    .end local v1           #charStart:C
    :cond_2
    if-nez v4, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v2, v5, :cond_4

    .line 730
    :cond_3
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 733
    .end local v2           #end:I
    .end local v4           #start:I
    :cond_4
    return-object v3
.end method

.method private updateItem(Lcom/android/providers/contacts/t9/T9CallLogItem;)V
    .locals 6
    .parameter "callLogItem"

    .prologue
    .line 481
    const/4 v3, 0x0

    iput-object v3, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    .line 482
    iget-object v3, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 483
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    iget-object v4, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/t9/T9Depot;->getNumber(C)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/providers/contacts/t9/T9MatchResultList;->getResults(Z)Ljava/util/List;

    move-result-object v2

    .line 486
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/t9/T9MatchResult;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, l:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 487
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/t9/T9MatchResult;

    invoke-virtual {v3}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->matchItem(Lcom/android/providers/contacts/t9/T9Item;Lcom/android/providers/contacts/t9/T9CallLogItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 488
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/t9/T9MatchResult;

    invoke-virtual {v3}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    .line 493
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/t9/T9MatchResult;>;"
    :cond_0
    return-void

    .line 486
    .restart local v0       #i:I
    .restart local v1       #l:I
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/t9/T9MatchResult;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public deleteCallLog(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .locals 12
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p3, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->removeParenthesis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    const/4 v2, 0x0

    .line 261
    .local v2, done:Z
    if-nez v2, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_5

    const-string v8, " IN "

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_5

    .line 263
    const-string v8, " IN "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 264
    .local v7, parts:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "normalized_number"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 265
    :cond_0
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "\\(|\\)"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 266
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_5

    .line 267
    const/4 v8, 0x1

    aget-object v8, v7, v8

    const-string v9, "\\s"

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\',\'"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 268
    .local v6, numbers:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v6, v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_1

    .line 269
    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v6, v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 271
    :cond_1
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    aget-object v8, v6, v8

    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v6, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_2

    .line 272
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    array-length v9, v6

    add-int/lit8 v9, v9, -0x1

    aget-object v9, v6, v9

    const/4 v10, 0x0

    array-length v11, v6

    add-int/lit8 v11, v11, -0x1

    aget-object v11, v6, v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    .line 275
    :cond_2
    monitor-enter p0

    .line 276
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    :try_start_0
    array-length v8, v6

    if-ge v4, v8, :cond_4

    .line 277
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    aget-object v9, v6, v4

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 278
    .local v5, item:Lcom/android/providers/contacts/t9/T9CallLogItem;
    if-eqz v5, :cond_3

    .line 279
    invoke-direct {p0, v5}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->removeItemInternal(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 276
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 282
    .end local v5           #item:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    const/4 v2, 0x1

    .line 284
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove normalized number in: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 289
    .end local v4           #i:I
    .end local v6           #numbers:[Ljava/lang/String;
    .end local v7           #parts:[Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_6

    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_6

    .line 291
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 292
    .restart local v7       #parts:[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "_id"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 293
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->deleteCallLogByIds(Ljava/util/List;)V

    .line 294
    const/4 v2, 0x1

    .line 295
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove id : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 299
    .end local v7           #parts:[Ljava/lang/String;
    :cond_6
    if-nez v2, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_8

    .line 300
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->getFilter(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    move-result-object v3

    .line 301
    .local v3, filter:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;
    sget-object v8, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->Invalid:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    if-eq v3, v8, :cond_8

    .line 302
    monitor-enter p0

    .line 303
    :try_start_1
    sget-object v8, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->None:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    if-ne v3, v8, :cond_a

    .line 304
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 305
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkTail:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 306
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    .line 345
    :cond_7
    const/4 v2, 0x1

    .line 346
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "remove by filter: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 347
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 351
    .end local v3           #filter:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;
    :cond_8
    if-nez v2, :cond_9

    .line 352
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->deleteCallLogByIds(Ljava/util/List;)V

    .line 353
    const/4 v2, 0x1

    .line 356
    :cond_9
    invoke-direct {p0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->notifyChanged()V

    .line 357
    return-void

    .line 282
    .restart local v4       #i:I
    .restart local v6       #numbers:[Ljava/lang/String;
    .restart local v7       #parts:[Ljava/lang/String;
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 308
    .end local v4           #i:I
    .end local v6           #numbers:[Ljava/lang/String;
    .end local v7           #parts:[Ljava/lang/String;
    .restart local v3       #filter:Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;
    :cond_a
    :try_start_3
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .local v0, callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :goto_1
    if-eqz v0, :cond_7

    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, del:Z
    sget-object v8, Lcom/android/providers/contacts/t9/T9CallLogDepot$2;->$SwitchMap$com$android$providers$contacts$t9$T9CallLogDepot$Filter:[I

    invoke-virtual {v3}, Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 335
    :cond_b
    :goto_2
    if-eqz v1, :cond_d

    .line 336
    move-object v5, v0

    .line 337
    .restart local v5       #item:Lcom/android/providers/contacts/t9/T9CallLogItem;
    iget-object v0, v5, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 338
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    iget-object v9, v5, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-direct {p0, v5}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->removeItemInternal(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    goto :goto_1

    .line 347
    .end local v0           #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .end local v1           #del:Z
    .end local v5           #item:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :catchall_1
    move-exception v8

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 312
    .restart local v0       #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .restart local v1       #del:Z
    :pswitch_0
    :try_start_4
    iget v8, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mType:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    .line 313
    const/4 v1, 0x1

    goto :goto_2

    .line 317
    :pswitch_1
    iget v8, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mType:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_b

    .line 318
    const/4 v1, 0x1

    goto :goto_2

    .line 322
    :pswitch_2
    iget v8, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 323
    const/4 v1, 0x1

    goto :goto_2

    .line 327
    :pswitch_3
    iget-object v8, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    if-eqz v8, :cond_c

    iget-object v8, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v8, v8, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_b

    .line 329
    :cond_c
    const/4 v1, 0x1

    goto :goto_2

    .line 341
    :cond_d
    iget-object v0, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 310
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCallLog(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "selection"

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->refresh()V

    .line 231
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->getFilter(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->getCallLog(Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insert(JLjava/lang/String;Ljava/lang/String;IJJZI)V
    .locals 13
    .parameter "id"
    .parameter "number"
    .parameter "normalizedNumber"
    .parameter "type"
    .parameter "duration"
    .parameter "date"
    .parameter "isForwarded"
    .parameter "firewallType"

    .prologue
    .line 422
    new-instance v0, Lcom/android/providers/contacts/t9/T9CallLogItem;

    const/4 v12, 0x0

    move-wide v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/providers/contacts/t9/T9CallLogItem;-><init>(JLjava/lang/String;Ljava/lang/String;IJJZILcom/android/providers/contacts/t9/T9Item;)V

    .line 425
    .local v0, callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    iget v1, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDirty:I

    if-nez v1, :cond_0

    add-long v1, p8, p6

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 426
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->insert(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 428
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->setDirty(I)V

    .line 434
    :goto_0
    return-void

    .line 430
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->updateItem(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 431
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->insert(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 432
    invoke-direct {p0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->notifyChanged()V

    goto :goto_0
.end method

.method public load()V
    .locals 24

    .prologue
    .line 437
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v21, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9CallLogItem;>;"
    const/16 v18, 0x0

    .line 440
    .local v18, cursor:Landroid/database/Cursor;
    :try_start_0
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 441
    .local v2, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v15, " (SELECT _id, number, normalized_number, matched_number, countryiso, voicemail_uri, new, type, date, duration, firewalltype, forwarded_call, substr(normalized_number, -7, 7) AS calls_min_match FROM calls GROUP BY normalized_number ORDER BY date DESC) LEFT OUTER JOIN (SELECT contact_id AS cid, photo_id, display_name AS name, normalized_data, substr(normalized_data, -7, 7) AS t9_min_match FROM t9_lookup) ON ( calls_min_match = t9_min_match AND PHONE_NUMBERS_EQUAL(matched_number, normalized_data, 0))"

    invoke-virtual {v2, v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 442
    sget-object v15, Lcom/android/providers/contacts/t9/T9CallLogDepot;->sCallsProjectionMap:Ljava/util/HashMap;

    invoke-virtual {v2, v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 443
    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 445
    sget-object v3, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v4, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "normalized_number"

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 448
    :goto_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 449
    const/4 v15, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 450
    .local v16, contactId:J
    const/4 v15, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 451
    .local v4, id:J
    const/4 v15, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 452
    .local v6, number:Ljava/lang/String;
    const/4 v15, 0x7

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 453
    .local v8, type:I
    const/16 v15, 0x9

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 454
    .local v9, duration:J
    const/16 v15, 0x8

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 455
    .local v11, date:J
    const/16 v15, 0xe

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v15, v0, :cond_1

    const/4 v13, 0x1

    .line 457
    .local v13, isForwarded:Z
    :goto_1
    const/16 v15, 0xd

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 458
    .local v14, firewallType:I
    const/16 v15, 0x12

    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 460
    .local v7, normalizedNumber:Ljava/lang/String;
    new-instance v3, Lcom/android/providers/contacts/t9/T9CallLogItem;

    const/4 v15, 0x0

    invoke-direct/range {v3 .. v15}, Lcom/android/providers/contacts/t9/T9CallLogItem;-><init>(JLjava/lang/String;Ljava/lang/String;IJJZILcom/android/providers/contacts/t9/T9Item;)V

    .line 462
    .local v3, callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    const-wide/16 v22, -0x1

    cmp-long v15, v16, v22

    if-nez v15, :cond_2

    const/4 v15, 0x0

    :goto_2
    iput-object v15, v3, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    .line 464
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 467
    .end local v2           #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .end local v3           #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .end local v4           #id:J
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #normalizedNumber:Ljava/lang/String;
    .end local v8           #type:I
    .end local v9           #duration:J
    .end local v11           #date:J
    .end local v13           #isForwarded:Z
    .end local v14           #firewallType:I
    .end local v16           #contactId:J
    :catchall_0
    move-exception v15

    if-eqz v18, :cond_0

    .line 468
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v15

    .line 455
    .restart local v2       #qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    .restart local v4       #id:J
    .restart local v6       #number:Ljava/lang/String;
    .restart local v8       #type:I
    .restart local v9       #duration:J
    .restart local v11       #date:J
    .restart local v16       #contactId:J
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 462
    .restart local v3       #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .restart local v7       #normalizedNumber:Ljava/lang/String;
    .restart local v13       #isForwarded:Z
    .restart local v14       #firewallType:I
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    move-wide/from16 v0, v16

    invoke-virtual {v15, v0, v1, v3}, Lcom/android/providers/contacts/t9/T9Depot;->getItem(JLcom/android/providers/contacts/t9/T9CallLogItem;)Lcom/android/providers/contacts/t9/T9Item;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v15

    goto :goto_2

    .line 467
    .end local v3           #callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    .end local v4           #id:J
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #normalizedNumber:Ljava/lang/String;
    .end local v8           #type:I
    .end local v9           #duration:J
    .end local v11           #date:J
    .end local v13           #isForwarded:Z
    .end local v14           #firewallType:I
    .end local v16           #contactId:J
    :cond_3
    if-eqz v18, :cond_4

    .line 468
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 472
    :cond_4
    monitor-enter p0

    .line 473
    const/16 v19, 0x0

    .local v19, i:I
    :try_start_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v20

    .local v20, l:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 474
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/providers/contacts/t9/T9CallLogItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->append(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 473
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 476
    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDirty:I

    .line 477
    monitor-exit p0

    .line 478
    return-void

    .line 477
    .end local v20           #l:I
    :catchall_1
    move-exception v15

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v15
.end method

.method public query(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/t9/T9CallLogItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->refresh()V

    .line 237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9CallLogItem;>;"
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkHead:Lcom/android/providers/contacts/t9/T9CallLogItem;

    .local v0, callLogItem:Lcom/android/providers/contacts/t9/T9CallLogItem;
    :goto_0
    if-eqz v0, :cond_2

    .line 239
    iget-object v2, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mItem:Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v2, v2, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 240
    :cond_0
    iget-object v2, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_1

    .line 241
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_1
    iget-object v0, v0, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNext:Lcom/android/providers/contacts/t9/T9CallLogItem;

    goto :goto_0

    .line 245
    :cond_2
    return-object v1
.end method

.method public removeExpiredEntries(I)V
    .locals 2
    .parameter "limitation"

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkTail:Lcom/android/providers/contacts/t9/T9CallLogItem;

    iget-object v1, v1, Lcom/android/providers/contacts/t9/T9CallLogItem;->mNormalizedNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mItemLinkTail:Lcom/android/providers/contacts/t9/T9CallLogItem;

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->removeItemInternal(Lcom/android/providers/contacts/t9/T9CallLogItem;)V

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 254
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removing expired enteries: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 255
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 256
    return-void
.end method

.method public setDirty(I)V
    .locals 1
    .parameter "dirty"

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mNormalizedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->notifyChanged()V

    .line 225
    iget v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDirty:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot;->mDirty:I

    .line 227
    :cond_0
    return-void
.end method
