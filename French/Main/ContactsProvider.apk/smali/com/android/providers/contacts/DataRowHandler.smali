.class public abstract Lcom/android/providers/contacts/DataRowHandler;
.super Ljava/lang/Object;
.source "DataRowHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/DataRowHandler$DataUpdateQuery;,
        Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;
    }
.end annotation


# instance fields
.field protected final mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

.field protected final mContext:Landroid/content/Context;

.field protected final mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field protected final mMimetype:Ljava/lang/String;

.field protected mMimetypeId:J

.field protected mSelectionArgs1:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "mimetype"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/android/providers/contacts/DataRowHandler;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 86
    iput-object p3, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    .line 87
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetype:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private fixPrimary(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 19
    .parameter "db"
    .parameter "rawContactId"

    .prologue
    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v13

    .line 288
    .local v13, mimeTypeId:J
    const-wide/16 v15, -0x1

    .line 289
    .local v15, primaryId:J
    const/16 v17, -0x1

    .line 290
    .local v17, primaryType:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 291
    const-string v3, "data JOIN mimetypes ON (data.mimetype_id = mimetypes._id)"

    sget-object v4, Lcom/android/providers/contacts/DataRowHandler$DataDeleteQuery;->CONCRETE_COLUMNS:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "raw_contact_id=? AND mimetype_id="

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .local v10, c:Landroid/database/Cursor;
    move-wide v5, v15

    .line 297
    .end local v15           #primaryId:J
    .local v5, primaryId:J
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 299
    .local v11, dataId:J
    const/4 v2, 0x4

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 300
    .local v18, type:I
    const/4 v2, -0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandler;->getTypeRank(I)I

    move-result v2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandler;->getTypeRank(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-ge v2, v3, :cond_0

    .line 301
    :cond_1
    move-wide v5, v11

    .line 302
    move/from16 v17, v18

    goto :goto_0

    .line 306
    .end local v11           #dataId:J
    .end local v18           #type:I
    :cond_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 308
    const-wide/16 v2, -0x1

    cmp-long v2, v5, v2

    if-eqz v2, :cond_3

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v3, p2

    move-wide v7, v13

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    .line 311
    :cond_3
    return-void

    .line 306
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private handlePrimaryAndSuperPrimary(Landroid/content/ContentValues;JJ)V
    .locals 21
    .parameter "values"
    .parameter "dataId"
    .parameter "rawContactId"

    .prologue
    .line 203
    const-string v2, "is_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v15

    .line 204
    .local v15, hasPrimary:Z
    const-string v2, "is_super_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    .line 207
    .local v16, hasSuperPrimary:Z
    if-nez v15, :cond_0

    if-nez v16, :cond_0

    .line 262
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v10

    .line 212
    .local v10, mimeTypeId:J
    if-eqz v15, :cond_5

    const-string v2, "is_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_5

    const/4 v13, 0x1

    .line 214
    .local v13, clearPrimary:Z
    :goto_1
    if-eqz v16, :cond_6

    const-string v2, "is_super_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_6

    const/4 v14, 0x1

    .line 217
    .local v14, clearSuperPrimary:Z
    :goto_2
    if-nez v13, :cond_1

    if-eqz v14, :cond_9

    .line 219
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 220
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "is_primary"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "is_super_primary"

    aput-object v3, v4, v2

    .line 221
    .local v4, cols:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "data"

    const-string v5, "_id=?"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 224
    .local v12, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_7

    const/16 v17, 0x1

    .line 226
    .local v17, isPrimary:Z
    :goto_3
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    const/16 v18, 0x1

    .line 228
    .local v18, isSuperPrimary:Z
    :goto_4
    if-eqz v18, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1, v10, v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->clearSuperPrimary(JJ)V

    .line 231
    :cond_2
    if-eqz v13, :cond_3

    if-eqz v17, :cond_3

    .line 232
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    const-wide/16 v8, -0x1

    move-wide/from16 v6, p4

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    .end local v17           #isPrimary:Z
    .end local v18           #isSuperPrimary:Z
    :cond_3
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 260
    .end local v4           #cols:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    :cond_4
    :goto_5
    const-string v2, "is_super_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 261
    const-string v2, "is_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 212
    .end local v13           #clearPrimary:Z
    .end local v14           #clearSuperPrimary:Z
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 214
    .restart local v13       #clearPrimary:Z
    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .line 225
    .restart local v4       #cols:[Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v14       #clearSuperPrimary:Z
    :cond_7
    const/16 v17, 0x0

    goto :goto_3

    .line 226
    .restart local v17       #isPrimary:Z
    :cond_8
    const/16 v18, 0x0

    goto :goto_4

    .line 236
    .end local v17           #isPrimary:Z
    :catchall_0
    move-exception v2

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v2

    .line 240
    .end local v4           #cols:[Ljava/lang/String;
    .end local v12           #c:Landroid/database/Cursor;
    :cond_9
    if-eqz v15, :cond_a

    const-string v2, "is_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_a

    const/16 v19, 0x1

    .line 242
    .local v19, setPrimary:Z
    :goto_6
    if-eqz v16, :cond_b

    const-string v2, "is_super_primary"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_b

    const/16 v20, 0x1

    .line 244
    .local v20, setSuperPrimary:Z
    :goto_7
    if-eqz v20, :cond_c

    .line 246
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v6, p4

    move-wide/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    .line 247
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v6, p4

    move-wide/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    goto :goto_5

    .line 240
    .end local v19           #setPrimary:Z
    .end local v20           #setSuperPrimary:Z
    :cond_a
    const/16 v19, 0x0

    goto :goto_6

    .line 242
    .restart local v19       #setPrimary:Z
    :cond_b
    const/16 v20, 0x0

    goto :goto_7

    .line 248
    .restart local v20       #setSuperPrimary:Z
    :cond_c
    if-eqz v19, :cond_4

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p4

    invoke-virtual {v2, v0, v1, v10, v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rawContactHasSuperPrimary(JJ)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 253
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v6, p4

    move-wide/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    .line 255
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v6, p4

    move-wide/from16 v8, p2

    invoke-virtual/range {v5 .. v11}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    goto/16 :goto_5
.end method

.method private isNewRawContact(Lcom/android/providers/contacts/TransactionContext;J)Z
    .locals 1
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 330
    invoke-virtual {p1, p2, p3}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public appendSearchableData(Lcom/android/providers/contacts/SearchIndexManager$IndexBuilder;)V
    .locals 0
    .parameter "builder"

    .prologue
    .line 195
    return-void
.end method

.method public areAllEmpty(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 5
    .parameter "values"
    .parameter "keys"

    .prologue
    .line 377
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 378
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 379
    const/4 v4, 0x0

    .line 382
    .end local v2           #key:Ljava/lang/String;
    :goto_1
    return v4

    .line 377
    .restart local v2       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public areAnySpecified(Landroid/content/ContentValues;[Ljava/lang/String;)Z
    .locals 5
    .parameter "values"
    .parameter "keys"

    .prologue
    .line 389
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 390
    .local v2, key:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    const/4 v4, 0x1

    .line 394
    .end local v2           #key:Ljava/lang/String;
    :goto_1
    return v4

    .line 389
    .restart local v2       #key:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 394
    .end local v2           #key:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public containsSearchableColumns(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 10
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 265
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 266
    .local v1, dataId:J
    const/4 v5, 0x2

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 267
    .local v3, rawContactId:J
    const/4 v5, 0x3

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v8, 0x1

    .line 268
    .local v8, primary:Z
    :goto_0
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 269
    const-string v5, "data"

    const-string v6, "_id=?"

    iget-object v9, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v5, v6, v9}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 270
    .local v7, count:I
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    .line 271
    const-string v0, "presence"

    const-string v5, "presence_raw_contact_id=?"

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 272
    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    .line 273
    invoke-direct {p0, p1, v3, v4}, Lcom/android/providers/contacts/DataRowHandler;->fixPrimary(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->hasSearchableData()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    invoke-virtual {p2, v3, v4}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForRawContact(J)V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/contacts/T9SearchSupport;->onDataDeleted(JJJ)V

    .line 283
    :cond_2
    return v7

    .end local v7           #count:I
    .end local v8           #primary:Z
    :cond_3
    move v8, v0

    .line 267
    goto :goto_0
.end method

.method protected fixRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 323
    invoke-direct {p0, p2, p3, p4}, Lcom/android/providers/contacts/DataRowHandler;->isNewRawContact(Lcom/android/providers/contacts/TransactionContext;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->updateRawContactDisplayName(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 325
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updateDisplayNameForRawContact(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 327
    :cond_0
    return-void
.end method

.method public getAugmentedValues(Landroid/database/sqlite/SQLiteDatabase;JLandroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 18
    .parameter "db"
    .parameter "dataId"
    .parameter "update"

    .prologue
    .line 340
    const/4 v10, 0x0

    .line 341
    .local v10, changing:Z
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v17, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 343
    const-string v3, "data"

    const/4 v4, 0x0

    const-string v5, "_id=?"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 346
    .local v11, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 347
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    if-ge v12, v2, :cond_3

    .line 348
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v13

    .line 349
    .local v13, key:Ljava/lang/String;
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 350
    .local v16, value:Ljava/lang/String;
    if-nez v10, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 351
    move-object/from16 v0, p4

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 352
    .local v15, newValue:Ljava/lang/Object;
    if-nez v15, :cond_1

    const/4 v14, 0x0

    .line 353
    .local v14, newString:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v16

    invoke-static {v14, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_2
    or-int/2addr v10, v2

    .line 355
    .end local v14           #newString:Ljava/lang/String;
    .end local v15           #newValue:Ljava/lang/Object;
    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 352
    .restart local v15       #newValue:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    goto :goto_1

    .line 353
    .restart local v14       #newString:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 359
    .end local v12           #i:I
    .end local v13           #key:Ljava/lang/String;
    .end local v14           #newString:Ljava/lang/String;
    .end local v15           #newValue:Ljava/lang/Object;
    .end local v16           #value:Ljava/lang/String;
    :cond_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 361
    if-nez v10, :cond_4

    .line 362
    const/16 v17, 0x0

    .line 366
    .end local v17           #values:Landroid/content/ContentValues;
    :goto_3
    return-object v17

    .line 359
    .restart local v17       #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 365
    :cond_4
    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    goto :goto_3
.end method

.method protected getMimeTypeId()J
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetypeId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    iget-object v1, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->getMimeTypeId(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetypeId:J

    .line 102
    :cond_0
    iget-wide v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mMimetypeId:J

    return-wide v0
.end method

.method protected getTypeRank(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method public hasSearchableData()Z
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 19
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 110
    const-string v2, "data"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 112
    .local v5, dataId:J
    const-string v2, "is_primary"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v17

    .line 113
    .local v17, primary:Ljava/lang/Integer;
    const-string v2, "is_super_primary"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 114
    .local v18, superPrimary:Ljava/lang/Integer;
    if-eqz v17, :cond_0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_2

    .line 115
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v7

    .line 116
    .local v7, mimeTypeId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsPrimary(JJJ)V

    .line 120
    if-eqz v18, :cond_6

    .line 121
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    .line 135
    .end local v7           #mimeTypeId:J
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/providers/contacts/DataRowHandler;->containsSearchableColumns(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    invoke-virtual/range {p2 .. p4}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForRawContact(J)V

    .line 139
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v2}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    const-string v2, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 141
    .local v16, data1:Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 142
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v14

    move-wide v10, v5

    move-wide/from16 v12, p3

    invoke-virtual/range {v9 .. v16}, Lcom/android/providers/contacts/T9SearchSupport;->onDataInserted(JJJLjava/lang/String;)V

    .line 146
    .end local v16           #data1:Ljava/lang/String;
    :cond_4
    return-wide v5

    .line 124
    .restart local v7       #mimeTypeId:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->clearSuperPrimary(JJ)V

    goto :goto_0

    .line 129
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v0, p3

    invoke-virtual {v2, v0, v1, v7, v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->rawContactHasSuperPrimary(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    move-wide/from16 v3, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->setIsSuperPrimary(JJJ)V

    goto :goto_0
.end method

.method public triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V
    .locals 1
    .parameter "txContext"
    .parameter "rawContactId"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/ContactAggregator;->triggerAggregation(Lcom/android/providers/contacts/TransactionContext;J)V

    .line 371
    return-void
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 10
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 157
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 158
    .local v2, dataId:J
    invoke-interface {p4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .local v4, rawContactId:J
    move-object v0, p0

    move-object v1, p3

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/android/providers/contacts/DataRowHandler;->handlePrimaryAndSuperPrimary(Landroid/content/ContentValues;JJ)V

    .line 162
    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 164
    const-string v0, "data"

    const-string v1, "_id =?"

    iget-object v6, p0, Lcom/android/providers/contacts/DataRowHandler;->mSelectionArgs1:[Ljava/lang/String;

    invoke-virtual {p1, v0, p3, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    :cond_0
    invoke-virtual {p0, p3}, Lcom/android/providers/contacts/DataRowHandler;->containsSearchableColumns(Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p2, v4, v5}, Lcom/android/providers/contacts/TransactionContext;->invalidateSearchIndexForRawContact(J)V

    .line 171
    :cond_1
    if-nez p5, :cond_2

    .line 172
    invoke-virtual {p2, v4, v5}, Lcom/android/providers/contacts/TransactionContext;->markRawContactDirty(J)V

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/android/providers/contacts/DataRowHandler;->mDbHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->isContactDatabase()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    const-string v0, "data1"

    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 177
    .local v8, data1:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 178
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/providers/contacts/DataRowHandler;->getMimeTypeId()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v8}, Lcom/android/providers/contacts/T9SearchSupport;->onDataUpdated(JJJLjava/lang/String;)V

    .line 183
    .end local v8           #data1:Ljava/lang/String;
    :cond_3
    return v9
.end method
