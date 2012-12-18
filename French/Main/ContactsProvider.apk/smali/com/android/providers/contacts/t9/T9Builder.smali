.class public Lcom/android/providers/contacts/t9/T9Builder;
.super Ljava/lang/Object;
.source "T9Builder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/t9/T9Builder$EnoughAndFillBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method private static build(Lcom/android/providers/contacts/t9/T9Item;Ljava/util/ArrayList;)Lcom/android/providers/contacts/t9/T9Item;
    .locals 1
    .parameter "item"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/contacts/t9/T9Item;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;)",
            "Lcom/android/providers/contacts/t9/T9Item;"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, originalTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/providers/contacts/t9/T9Builder;->buildT9Key(Lcom/android/providers/contacts/t9/T9Item;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v0

    goto :goto_0
.end method

.method private static buildHeadBackTokens(Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)I
    .locals 4
    .parameter
    .parameter
    .parameter "index"
    .parameter "middle"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;IZ)I"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .local p1, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    const/4 v0, 0x0

    .line 439
    .local v0, enough:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 440
    .local v1, tokenSize:I
    if-nez p3, :cond_1

    .line 441
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/HanziToPinyin$Token;

    invoke-static {p0, v2, p2}, Lcom/android/providers/contacts/t9/T9Builder;->buildTokenIntoCandidates(Ljava/util/ArrayList;Lmiui/util/HanziToPinyin$Token;I)I

    move-result v0

    .line 442
    if-nez v0, :cond_0

    .line 443
    sub-int v2, v1, p2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/HanziToPinyin$Token;

    sub-int v3, v1, p2

    add-int/lit8 v3, v3, -0x1

    invoke-static {p0, v2, v3}, Lcom/android/providers/contacts/t9/T9Builder;->buildTokenIntoCandidates(Ljava/util/ArrayList;Lmiui/util/HanziToPinyin$Token;I)I

    move-result v0

    .line 451
    :goto_0
    return v0

    .line 445
    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    .line 449
    :cond_1
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/util/HanziToPinyin$Token;

    invoke-static {p0, v2, p2}, Lcom/android/providers/contacts/t9/T9Builder;->buildTokenIntoCandidates(Ljava/util/ArrayList;Lmiui/util/HanziToPinyin$Token;I)I

    goto :goto_0
.end method

.method public static buildItem(Landroid/database/sqlite/SQLiteDatabase;IJ)Ljava/util/ArrayList;
    .locals 11
    .parameter "db"
    .parameter "type"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "IJ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableItemList()Ljava/util/ArrayList;

    move-result-object v3

    .line 74
    .local v3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    if-nez p1, :cond_2

    .line 75
    :try_start_0
    sget-object v6, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    aget-object v6, v6, p1

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 80
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 81
    new-instance v2, Lcom/android/providers/contacts/t9/T9Item;

    invoke-direct {v2}, Lcom/android/providers/contacts/t9/T9Item;-><init>()V

    .line 82
    .local v2, item:Lcom/android/providers/contacts/t9/T9Item;
    const/4 v6, 0x4

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 83
    .local v4, mimeTypeId:J
    const/4 v6, 0x0

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    .line 84
    const/4 v6, 0x1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    .line 85
    const/4 v6, 0x2

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    .line 86
    const/4 v6, 0x3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/providers/contacts/t9/T9Item;->mData:Ljava/lang/String;

    .line 87
    iget-object v6, v2, Lcom/android/providers/contacts/t9/T9Item;->mData:Ljava/lang/String;

    invoke-static {v6, v4, v5}, Lcom/android/providers/contacts/t9/T9Builder;->normalizeData(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    .line 88
    const/4 v6, 0x5

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    .line 89
    const/4 v6, 0x7

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/providers/contacts/t9/T9Item;->mPhotoId:J

    .line 90
    const/16 v6, 0x8

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/android/providers/contacts/t9/T9Item;->mTimesContacted:J

    .line 92
    const/4 v6, 0x6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v7

    :goto_1
    invoke-static {v2, v6}, Lcom/android/providers/contacts/t9/T9Builder;->build(Lcom/android/providers/contacts/t9/T9Item;Ljava/util/ArrayList;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v2

    .line 95
    if-eqz v2, :cond_0

    .line 96
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    .end local v2           #item:Lcom/android/providers/contacts/t9/T9Item;
    .end local v4           #mimeTypeId:J
    :catch_0
    move-exception v1

    .line 100
    .local v1, e:Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "failed to query database - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/android/providers/contacts/t9/T9Utils;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 106
    .end local v1           #e:Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    return-object v3

    .line 77
    :cond_2
    :try_start_2
    sget-object v6, Lcom/android/providers/contacts/t9/T9Utils;->ITEM_QUERY_SQLS:[Ljava/lang/String;

    aget-object v6, v6, p1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto/16 :goto_0

    .line 92
    .restart local v2       #item:Lcom/android/providers/contacts/t9/T9Item;
    .restart local v4       #mimeTypeId:J
    :cond_3
    iget-object v6, v2, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    const/4 v8, 0x6

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/providers/contacts/t9/T9Builder;->buildPinyinTokens(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v6

    goto :goto_1

    .line 102
    .end local v2           #item:Lcom/android/providers/contacts/t9/T9Item;
    .end local v4           #mimeTypeId:J
    :cond_4
    if-eqz v0, :cond_1

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .line 102
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_5

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v6
.end method

.method private static buildPinyinTokens(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "name"
    .parameter "pinyin"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v3, v5

    .line 137
    :cond_0
    return-object v3

    .line 123
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, pinyins:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .local v3, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 126
    aget-object v6, v1, v0

    invoke-static {v6}, Lcom/android/providers/contacts/t9/T9Builder;->filterNonLetterAndDigit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, validPinyin:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 128
    new-instance v2, Lmiui/util/HanziToPinyin$Token;

    invoke-direct {v2}, Lmiui/util/HanziToPinyin$Token;-><init>()V

    .line 129
    .local v2, t:Lmiui/util/HanziToPinyin$Token;
    iput-object v5, v2, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    .line 130
    iput-object v5, v2, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    .line 131
    iput-object v4, v2, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 132
    const/4 v6, 0x2

    iput v6, v2, Lmiui/util/HanziToPinyin$Token;->type:I

    .line 133
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .end local v2           #t:Lmiui/util/HanziToPinyin$Token;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static buildSpItem()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    const/4 v6, 0x0

    .line 39
    .local v6, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableItemList()Ljava/util/ArrayList;

    move-result-object v11

    .line 41
    .local v11, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :try_start_0
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://yellowpage/sp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/providers/contacts/T9SearchSupport$SPItemQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 43
    const-wide/16 v8, -0x64

    .line 44
    .local v8, id:J
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    new-instance v10, Lcom/android/providers/contacts/t9/T9Item;

    invoke-direct {v10}, Lcom/android/providers/contacts/t9/T9Item;-><init>()V

    .line 46
    .local v10, item:Lcom/android/providers/contacts/t9/T9Item;
    iput-wide v8, v10, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    .line 47
    iput-wide v8, v10, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    .line 48
    iput-wide v8, v10, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    .line 49
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/providers/contacts/t9/T9Item;->mData:Ljava/lang/String;

    .line 50
    iget-object v0, v10, Lcom/android/providers/contacts/t9/T9Item;->mData:Ljava/lang/String;

    iput-object v0, v10, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    .line 51
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    .line 52
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 54
    .local v12, pinyin:Ljava/lang/String;
    iget-object v0, v10, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    invoke-static {v0, v12}, Lcom/android/providers/contacts/t9/T9Builder;->buildPinyinTokens(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/providers/contacts/t9/T9Builder;->build(Lcom/android/providers/contacts/t9/T9Item;Ljava/util/ArrayList;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v10

    .line 55
    if-eqz v10, :cond_0

    .line 56
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    const-wide/16 v0, 0x1

    sub-long/2addr v8, v0

    .line 59
    goto :goto_0

    .line 63
    .end local v10           #item:Lcom/android/providers/contacts/t9/T9Item;
    .end local v12           #pinyin:Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_2

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 67
    .end local v8           #id:J
    :cond_2
    :goto_1
    return-object v11

    .line 60
    :catch_0
    move-exception v7

    .line 61
    .local v7, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v0, "failed to query SP database"

    invoke-static {v0, v7}, Lcom/android/providers/contacts/t9/T9Utils;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    if-eqz v6, :cond_2

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 63
    .end local v7           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static buildT9Key(Lcom/android/providers/contacts/t9/T9Item;Ljava/lang/String;Ljava/util/ArrayList;)Lcom/android/providers/contacts/t9/T9Item;
    .locals 23
    .parameter "item"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/contacts/t9/T9Item;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;)",
            "Lcom/android/providers/contacts/t9/T9Item;"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, originalTokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    if-nez p2, :cond_0

    .line 150
    invoke-static {}, Lmiui/util/HanziToPinyin;->getInstance()Lmiui/util/HanziToPinyin;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lmiui/util/HanziToPinyin;->get(Ljava/lang/String;ZZ)Ljava/util/ArrayList;

    move-result-object p2

    .line 153
    :cond_0
    sget-object v20, Lcom/android/providers/contacts/t9/T9Utils;->sContext:Landroid/content/Context;

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "t9_indexing_key"

    sget v22, Lmiui/provider/ExtraSettings$System;->T9_INDEXING_KEY_DEFAULT:I

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    const/16 v19, 0x1

    .line 158
    .local v19, useZhuyin:Z
    :goto_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v18, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    const/4 v11, 0x2

    .line 163
    .local v11, keyType:I
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 166
    .local v4, builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lmiui/util/HanziToPinyin$Token;

    .line 167
    .local v15, t:Lmiui/util/HanziToPinyin$Token;
    iget v0, v15, Lmiui/util/HanziToPinyin$Token;->type:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    goto :goto_1

    .line 183
    :pswitch_0
    iget-object v0, v15, Lmiui/util/HanziToPinyin$Token;->source:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/providers/contacts/t9/T9Builder;->filterNonLetterAndDigit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    iput-object v0, v15, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    .line 184
    iget-object v0, v15, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_1

    .line 185
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 153
    .end local v4           #builder:Ljava/lang/StringBuilder;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v11           #keyType:I
    .end local v15           #t:Lmiui/util/HanziToPinyin$Token;
    .end local v18           #tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    .end local v19           #useZhuyin:Z
    :cond_2
    const/16 v19, 0x0

    goto :goto_0

    .line 169
    .restart local v4       #builder:Ljava/lang/StringBuilder;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #keyType:I
    .restart local v15       #t:Lmiui/util/HanziToPinyin$Token;
    .restart local v18       #tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    .restart local v19       #useZhuyin:Z
    :pswitch_1
    const/4 v11, 0x1

    .line 170
    iget-object v0, v15, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_3

    .line 171
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget-object v0, v15, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    iput-object v0, v15, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    .line 173
    :cond_3
    if-eqz v19, :cond_4

    .line 174
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    iget-object v0, v15, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v7, v0, :cond_4

    .line 175
    iget-object v0, v15, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    move-object/from16 v20, v0

    iget-object v0, v15, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    move-object/from16 v21, v0

    aget-object v21, v21, v7

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lmiui/util/HanziToPinyin;->convertPinyin2Zhuyin(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/CharSequence;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v20, v7

    .line 174
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 178
    .end local v7           #i:I
    :cond_4
    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 191
    .end local v15           #t:Lmiui/util/HanziToPinyin$Token;
    :cond_5
    int-to-long v0, v11

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/providers/contacts/t9/T9Item;->mKeyType:J

    .line 194
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v11, v0, :cond_12

    .line 196
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v5, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 200
    .local v17, tokenSize:I
    const v12, 0x3ecccccc

    .line 201
    .local v12, lastScale:F
    const/4 v6, 0x0

    .line 202
    .local v6, enough:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_3
    add-int/lit8 v20, v17, 0x1

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    if-ge v7, v0, :cond_6

    .line 203
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ge v7, v0, :cond_8

    .line 206
    sub-int v20, v17, v7

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v0, v7, :cond_7

    const/16 v20, 0x1

    :goto_4
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v5, v0, v7, v1}, Lcom/android/providers/contacts/t9/T9Builder;->buildHeadBackTokens(Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)I

    move-result v6

    .line 234
    :goto_5
    if-eqz v6, :cond_d

    .line 235
    const/16 v20, 0x3

    move/from16 v0, v20

    if-ne v6, v0, :cond_c

    const/16 v20, 0x1

    :goto_6
    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v5, v0, v7, v1}, Lcom/android/providers/contacts/t9/T9Builder;->fillCandidate(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Boolean;)V

    .line 239
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_e

    .line 240
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/android/providers/contacts/t9/T9Builder;->joinName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/t9/T9Item;->mDisplayString:Ljava/lang/String;

    .line 241
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/android/providers/contacts/t9/T9Builder;->convertNameToT9Key([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    .line 267
    .end local v5           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .end local v6           #enough:I
    .end local v7           #i:I
    .end local v12           #lastScale:F
    .end local v17           #tokenSize:I
    :goto_7
    return-object p0

    .line 206
    .restart local v5       #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .restart local v6       #enough:I
    .restart local v7       #i:I
    .restart local v12       #lastScale:F
    .restart local v17       #tokenSize:I
    :cond_7
    const/16 v20, 0x0

    goto :goto_4

    .line 214
    :cond_8
    sub-int v20, v17, v7

    add-int/lit8 v20, v20, -0x2

    add-int/lit8 v21, v7, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_9

    .line 215
    const v20, 0x3f19999a

    mul-float v16, v12, v20

    .line 220
    .local v16, thisScale:F
    :goto_8
    const v20, 0x3ca3d70a

    cmpg-float v20, v16, v20

    if-gez v20, :cond_a

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    const/16 v21, 0x16d

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_a

    .line 224
    const/4 v6, 0x2

    .line 225
    add-int/lit8 v7, v7, -0x1

    .line 231
    :goto_9
    sub-float v12, v12, v16

    goto :goto_5

    .line 217
    .end local v16           #thisScale:F
    :cond_9
    move/from16 v16, v12

    .restart local v16       #thisScale:F
    goto :goto_8

    .line 228
    :cond_a
    sub-int v20, v17, v7

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v20

    if-ne v0, v7, :cond_b

    const/16 v20, 0x1

    :goto_a
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v5, v0, v7, v1}, Lcom/android/providers/contacts/t9/T9Builder;->buildHeadBackTokens(Ljava/util/ArrayList;Ljava/util/ArrayList;IZ)I

    move-result v6

    goto :goto_9

    :cond_b
    const/16 v20, 0x0

    goto :goto_a

    .line 235
    .end local v16           #thisScale:F
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_6

    .line 202
    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 243
    :cond_e
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v14

    .line 244
    .local v14, nbuilder:Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v10

    .line 245
    .local v10, kbuilder:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v7, v0, :cond_11

    .line 246
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/android/providers/contacts/t9/T9Builder;->joinName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 247
    .local v13, n:Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    invoke-static/range {v20 .. v20}, Lcom/android/providers/contacts/t9/T9Builder;->convertNameToT9Key([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 248
    .local v9, k:Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v20

    if-gez v20, :cond_10

    .line 249
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v20

    if-eqz v20, :cond_f

    .line 250
    const/16 v20, 0x3b

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 251
    const/16 v20, 0x3b

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_f
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 257
    .end local v9           #k:Ljava/lang/String;
    .end local v13           #n:Ljava/lang/String;
    :cond_11
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/t9/T9Item;->mDisplayString:Ljava/lang/String;

    .line 258
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    .line 259
    invoke-static {v14}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/lang/StringBuilder;)V

    .line 260
    invoke-static {v10}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/lang/StringBuilder;)V

    goto/16 :goto_7

    .line 264
    .end local v5           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .end local v6           #enough:I
    .end local v7           #i:I
    .end local v10           #kbuilder:Ljava/lang/StringBuilder;
    .end local v12           #lastScale:F
    .end local v14           #nbuilder:Ljava/lang/StringBuilder;
    .end local v17           #tokenSize:I
    :cond_12
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/t9/T9Item;->mDisplayString:Ljava/lang/String;

    .line 265
    invoke-static/range {p1 .. p1}, Lcom/android/providers/contacts/t9/T9Builder;->convertNameToT9Key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    goto/16 :goto_7

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static buildTokenIntoCandidates(Ljava/util/ArrayList;Lmiui/util/HanziToPinyin$Token;I)I
    .locals 9
    .parameter
    .parameter "t"
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Lmiui/util/HanziToPinyin$Token;",
            "I)I"
        }
    .end annotation

    .prologue
    .local p0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 398
    const/4 v4, 0x0

    .line 399
    .local v4, tokenTarget:Ljava/lang/String;
    const/4 v0, 0x0

    .line 400
    .local v0, enough:I
    iget v5, p1, Lmiui/util/HanziToPinyin$Token;->type:I

    packed-switch v5, :pswitch_data_0

    .line 425
    :cond_0
    return v0

    .line 402
    :pswitch_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 403
    .local v3, lastSize:I
    iget-object v5, p1, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    array-length v5, v5

    invoke-static {p0, v5}, Lcom/android/providers/contacts/t9/T9Builder;->extendCandidates(Ljava/util/ArrayList;I)I

    move-result v0

    .line 404
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    iget-object v5, p1, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 405
    iget-object v5, p1, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    aget-object v4, v5, v1

    .line 406
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 411
    :goto_1
    const/4 v2, 0x0

    .line 413
    .local v2, k:I
    :goto_2
    mul-int v5, v1, v3

    add-int/2addr v5, v2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    if-ge v2, v3, :cond_2

    .line 414
    mul-int v5, v1, v3

    add-int/2addr v5, v2

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aput-object v4, v5, p2

    .line 415
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 406
    .end local v2           #k:I
    :cond_1
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 404
    .restart local v2       #k:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    .end local v1           #j:I
    .end local v2           #k:I
    .end local v3           #lastSize:I
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2       #k:I
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 421
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iget-object v6, p1, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    aput-object v6, v5, p2

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 400
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertNameToT9Key(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "name"

    .prologue
    const/16 v7, 0x3b

    .line 272
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    .local v0, builder:Ljava/lang/StringBuilder;
    const/16 v4, 0x20

    .line 274
    .local v4, pc:C
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 275
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 276
    .local v1, c:C
    if-ne v1, v7, :cond_0

    .line 277
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->formatCharToT9(C)C

    move-result v2

    .line 281
    .local v2, digit:C
    if-nez v2, :cond_2

    .line 283
    const/16 v2, 0x20

    .line 292
    :cond_1
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 293
    move v4, v1

    goto :goto_1

    .line 284
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_4

    .line 286
    :cond_3
    invoke-static {v2}, Lcom/android/providers/contacts/t9/T9Utils;->converDigitToInitial(C)C

    move-result v2

    goto :goto_2

    .line 287
    :cond_4
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 288
    invoke-static {v2}, Lcom/android/providers/contacts/t9/T9Utils;->converDigitToInitial(C)C

    move-result v2

    goto :goto_2

    .line 289
    :cond_5
    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->isValidT9Key(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 290
    invoke-static {v2}, Lcom/android/providers/contacts/t9/T9Utils;->converDigitToInitial(C)C

    move-result v2

    goto :goto_2

    .line 295
    .end local v1           #c:C
    .end local v2           #digit:C
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, ret:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/lang/StringBuilder;)V

    .line 297
    return-object v5
.end method

.method private static convertNameToT9Key([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "tokens"

    .prologue
    .line 302
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 303
    .local v1, builder:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 304
    .local v5, token:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/providers/contacts/t9/T9Builder;->convertNameToT9Key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 306
    .end local v5           #token:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, ret:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/lang/StringBuilder;)V

    .line 308
    return-object v4
.end method

.method private static extendCandidates(Ljava/util/ArrayList;I)I
    .locals 5
    .parameter
    .parameter "times"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 376
    .local p0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 377
    .local v0, curSize:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 378
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 379
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v3}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x2da

    if-lt v3, v4, :cond_0

    .line 382
    const/4 v3, 0x2

    .line 386
    .end local v2           #j:I
    :goto_2
    return v3

    .line 378
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 377
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 386
    .end local v2           #j:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private static fillCandidate(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/lang/Boolean;)V
    .locals 9
    .parameter
    .parameter
    .parameter "index"
    .parameter "fillBack"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/util/HanziToPinyin$Token;",
            ">;I",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    .local p1, tokens:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lmiui/util/HanziToPinyin$Token;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 464
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 465
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v1, v5, p2

    .line 469
    .local v1, indexTo:I
    :goto_0
    add-int/lit8 v0, p2, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 470
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/util/HanziToPinyin$Token;

    .line 471
    .local v3, t:Lmiui/util/HanziToPinyin$Token;
    iget v5, v3, Lmiui/util/HanziToPinyin$Token;->type:I

    packed-switch v5, :pswitch_data_0

    .line 469
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    .end local v0           #i:I
    .end local v1           #indexTo:I
    .end local v3           #t:Lmiui/util/HanziToPinyin$Token;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, p2

    add-int/lit8 v1, v5, -0x1

    .restart local v1       #indexTo:I
    goto :goto_0

    .line 473
    .restart local v0       #i:I
    .restart local v3       #t:Lmiui/util/HanziToPinyin$Token;
    :pswitch_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmiui/util/HanziToPinyin$Token;

    iget-object v5, v5, Lmiui/util/HanziToPinyin$Token;->polyPhones:[Ljava/lang/String;

    aget-object v4, v5, v7

    .line 474
    .local v4, tokenTarget:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v8, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 478
    :goto_2
    const/4 v2, 0x0

    .local v2, j:I
    :goto_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 479
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    aput-object v4, v5, v0

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 474
    .end local v2           #j:I
    :cond_2
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 483
    .end local v4           #tokenTarget:Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x0

    .restart local v2       #j:I
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 484
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iget-object v6, v3, Lmiui/util/HanziToPinyin$Token;->target:Ljava/lang/String;

    aput-object v6, v5, v0

    .line 483
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 489
    .end local v2           #j:I
    .end local v3           #t:Lmiui/util/HanziToPinyin$Token;
    :cond_3
    return-void

    .line 471
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static filterNonLetterAndDigit(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "input"

    .prologue
    .line 344
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 345
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 346
    const/4 v2, 0x1

    .line 347
    .local v2, firstLetter:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 348
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 349
    .local v1, c:C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 350
    if-eqz v2, :cond_0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    .end local v1           #c:C
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    const/4 v2, 0x0

    .line 347
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    .restart local v1       #c:C
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    const/4 v2, 0x1

    goto :goto_1

    .line 355
    :cond_2
    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->isValidT9Key(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 357
    const/4 v2, 0x1

    goto :goto_1

    .line 359
    :cond_3
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    const/4 v2, 0x1

    goto :goto_1

    .line 363
    .end local v1           #c:C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, ret:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/lang/StringBuilder;)V

    .line 365
    return-object v4
.end method

.method private static joinName([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "tokens"

    .prologue
    .line 312
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 313
    .local v1, builder:Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 314
    .local v5, token:Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    .end local v5           #token:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 317
    .local v4, ret:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/lang/StringBuilder;)V

    .line 318
    return-object v4
.end method

.method private static normalizeData(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .parameter "number"
    .parameter "mimeTypeId"

    .prologue
    .line 330
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/T9SearchSupport;->getSipMimeTypeId()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v0, 0x3

    .line 332
    .local v0, phoneType:I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, v0}, Lmiui/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lmiui/telephony/PhoneNumberUtils;->extractPostDialPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 330
    .end local v0           #phoneType:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
