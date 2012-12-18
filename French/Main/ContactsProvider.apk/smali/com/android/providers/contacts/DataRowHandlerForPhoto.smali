.class public Lcom/android/providers/contacts/DataRowHandlerForPhoto;
.super Lcom/android/providers/contacts/DataRowHandler;
.source "DataRowHandlerForPhoto.java"


# static fields
.field private static final sPackageList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mPhotoStore:Lcom/android/providers/contacts/PhotoStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->sPackageList:Ljava/util/HashSet;

    .line 50
    sget-object v0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->sPackageList:Ljava/util/HashSet;

    const-string v1, "com.miui.backup"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Lcom/android/providers/contacts/PhotoStore;)V
    .locals 1
    .parameter "context"
    .parameter "dbHelper"
    .parameter "aggregator"
    .parameter "photoStore"

    .prologue
    .line 56
    const-string v0, "vnd.android.cursor.item/photo"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/providers/contacts/DataRowHandler;-><init>(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Lcom/android/providers/contacts/ContactAggregator;Ljava/lang/String;)V

    .line 57
    iput-object p4, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    .line 58
    return-void
.end method

.method private getPhotoPath(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 3
    .parameter "values"

    .prologue
    .line 148
    const-string v2, "data1"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 149
    const-string v2, "data1"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, path:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 151
    const-string v2, "data1"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 152
    .local v1, uri:Landroid/net/Uri;
    const-string v2, "data1"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 157
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hasNonNullPhoto(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "values"

    .prologue
    .line 143
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 144
    .local v0, photoBytes:[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private preProcessPhoto(Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "values"

    .prologue
    .line 124
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->hasNonNullPhoto(Landroid/content/ContentValues;)Z

    move-result v0

    .line 126
    .local v0, photoExists:Z
    if-eqz v0, :cond_0

    .line 127
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->processPhoto(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 129
    const/4 v1, 0x0

    .line 139
    .end local v0           #photoExists:Z
    :goto_0
    return v1

    .line 134
    .restart local v0       #photoExists:Z
    :cond_0
    const-string v1, "data1"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 135
    const-string v1, "data15"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 136
    const-string v1, "data14"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 139
    .end local v0           #photoExists:Z
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private processPhoto(Landroid/content/ContentValues;)Z
    .locals 19
    .parameter "values"

    .prologue
    .line 170
    const/16 v16, 0x0

    .line 171
    .local v16, skipCompressed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    .line 173
    .local v10, pas:[Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 174
    move-object v3, v10

    .local v3, arr$:[Ljava/lang/String;
    array-length v6, v3

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v15, v3, v4

    .line 175
    .local v15, s:Ljava/lang/String;
    sget-object v17, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->sPackageList:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 176
    const/16 v16, 0x1

    .line 182
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v15           #s:Ljava/lang/String;
    :cond_0
    const-string v17, "data15"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v9

    .line 183
    .local v9, originalPhoto:[B
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->getPhotoPath(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v11

    .line 185
    .local v11, path:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const/high16 v18, 0x7f03

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 188
    .local v7, maxDisplayPhotoDim:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f030001

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 191
    .local v8, maxThumbnailPhotoDim:I
    :try_start_0
    new-instance v14, Lcom/android/providers/contacts/PhotoProcessor;

    invoke-direct {v14, v9, v7, v8}, Lcom/android/providers/contacts/PhotoProcessor;-><init>([BII)V

    .line 193
    .local v14, processor:Lcom/android/providers/contacts/PhotoProcessor;
    const-wide/16 v12, 0x0

    .line 195
    .local v12, photoFileId:J
    if-eqz v11, :cond_1

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/android/providers/contacts/PhotoStore;->insert(Ljava/lang/String;)J

    move-result-wide v12

    .line 198
    :cond_1
    const-wide/16 v17, 0x0

    cmp-long v17, v12, v17

    if-eqz v17, :cond_3

    .line 199
    const-string v17, "data14"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 203
    :goto_1
    const-string v17, "data15"

    if-eqz v16, :cond_5

    .end local v9           #originalPhoto:[B
    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 204
    const/16 v17, 0x1

    .line 211
    .end local v7           #maxDisplayPhotoDim:I
    .end local v8           #maxThumbnailPhotoDim:I
    .end local v12           #photoFileId:J
    .end local v14           #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :goto_3
    return v17

    .line 174
    .end local v11           #path:Ljava/lang/String;
    .restart local v3       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    .restart local v15       #s:Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 201
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v15           #s:Ljava/lang/String;
    .restart local v7       #maxDisplayPhotoDim:I
    .restart local v8       #maxThumbnailPhotoDim:I
    .restart local v9       #originalPhoto:[B
    .restart local v11       #path:Ljava/lang/String;
    .restart local v12       #photoFileId:J
    .restart local v14       #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :cond_3
    const-string v17, "data14"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 206
    .end local v9           #originalPhoto:[B
    .end local v12           #photoFileId:J
    .end local v14           #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :catch_0
    move-exception v5

    .line 207
    .local v5, ioe:Ljava/io/IOException;
    const-string v17, "DataRowHandlerForPhoto"

    const-string v18, "Could not process photo for insert or update"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    .end local v5           #ioe:Ljava/io/IOException;
    .end local v7           #maxDisplayPhotoDim:I
    .end local v8           #maxThumbnailPhotoDim:I
    :cond_4
    const/16 v17, 0x0

    goto :goto_3

    .line 203
    .restart local v7       #maxDisplayPhotoDim:I
    .restart local v8       #maxThumbnailPhotoDim:I
    .restart local v9       #originalPhoto:[B
    .restart local v12       #photoFileId:J
    .restart local v14       #processor:Lcom/android/providers/contacts/PhotoProcessor;
    :cond_5
    :try_start_1
    invoke-virtual {v14}, Lcom/android/providers/contacts/PhotoProcessor;->getThumbnailPhotoBytes()[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto :goto_2
.end method


# virtual methods
.method public delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I
    .locals 4
    .parameter "db"
    .parameter "txContext"
    .parameter "c"

    .prologue
    .line 162
    const/4 v3, 0x2

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 163
    .local v1, rawContactId:J
    invoke-super {p0, p1, p2, p3}, Lcom/android/providers/contacts/DataRowHandler;->delete(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/database/Cursor;)I

    move-result v0

    .line 164
    .local v0, count:I
    iget-object v3, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 165
    return v0
.end method

.method public insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J
    .locals 3
    .parameter "db"
    .parameter "txContext"
    .parameter "rawContactId"
    .parameter "values"

    .prologue
    .line 64
    const-string v2, "skip_processing"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 65
    const-string v2, "skip_processing"

    invoke-virtual {p5, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 73
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->insert(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;JLandroid/content/ContentValues;)J

    move-result-wide v0

    .line 74
    .local v0, dataId:J
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/contacts/TransactionContext;->isNewRawContact(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    iget-object v2, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v2, p1, p3, p4}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 77
    .end local v0           #dataId:J
    :cond_1
    :goto_0
    return-wide v0

    .line 68
    :cond_2
    invoke-direct {p0, p5}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z
    .locals 9
    .parameter "db"
    .parameter "txContext"
    .parameter "values"
    .parameter "c"
    .parameter "callerIsSyncAdapter"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 83
    invoke-interface {p4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 85
    .local v3, rawContactId:J
    const-string v7, "skip_processing"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 86
    const-string v7, "skip_processing"

    invoke-virtual {p3, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 108
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/android/providers/contacts/DataRowHandler;->update(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/providers/contacts/TransactionContext;Landroid/content/ContentValues;Landroid/database/Cursor;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 113
    :goto_1
    return v5

    .line 87
    :cond_1
    if-eqz p5, :cond_2

    .line 93
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->getPhotoPath(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 95
    const-wide/16 v1, -0x1

    .line 96
    .local v1, photoId:J
    iget-object v7, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mPhotoStore:Lcom/android/providers/contacts/PhotoStore;

    invoke-virtual {v7, v0}, Lcom/android/providers/contacts/PhotoStore;->insert(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_0

    .line 97
    const-string v7, "data14"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {p3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 102
    .end local v0           #path:Ljava/lang/String;
    .end local v1           #photoId:J
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->preProcessPhoto(Landroid/content/ContentValues;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 112
    :cond_3
    iget-object v5, p0, Lcom/android/providers/contacts/DataRowHandlerForPhoto;->mContactAggregator:Lcom/android/providers/contacts/ContactAggregator;

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/providers/contacts/ContactAggregator;->updatePhotoId(Landroid/database/sqlite/SQLiteDatabase;J)V

    move v5, v6

    .line 113
    goto :goto_1
.end method
