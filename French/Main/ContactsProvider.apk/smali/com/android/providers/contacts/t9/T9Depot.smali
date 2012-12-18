.class public Lcom/android/providers/contacts/t9/T9Depot;
.super Ljava/lang/Object;
.source "T9Depot.java"


# instance fields
.field private mContactId2Items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDataId2Items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;"
        }
    .end annotation
.end field

.field private mNameMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

.field private mNumberMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

.field private mRawContactId2Items:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    .line 15
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/t9/T9Depot;->mRawContactId2Items:Ljava/util/HashMap;

    .line 16
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/providers/contacts/t9/T9Depot;->mDataId2Items:Ljava/util/HashMap;

    .line 18
    sget v2, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEY_COUNT:I

    new-array v2, v2, [Lcom/android/providers/contacts/t9/T9MatchResultList;

    iput-object v2, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNameMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    .line 19
    sget v2, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEY_COUNT:I

    new-array v2, v2, [Lcom/android/providers/contacts/t9/T9MatchResultList;

    iput-object v2, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNumberMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    .line 22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v2, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEY_COUNT:I

    if-ge v0, v2, :cond_0

    .line 23
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->convertIndexToT9Key(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNameMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9MatchResultList;->createInstance(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v3

    aput-object v3, v2, v0

    .line 25
    iget-object v2, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNumberMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9MatchResultList;->createInstance(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v3

    aput-object v3, v2, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private declared-synchronized clear()V
    .locals 2

    .prologue
    .line 213
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 214
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Depot;->mRawContactId2Items:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 215
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Depot;->mDataId2Items:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 216
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEY_COUNT:I

    if-ge v0, v1, :cond_0

    .line 217
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNumberMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/providers/contacts/t9/T9MatchResultList;->clear()V

    .line 218
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNameMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/providers/contacts/t9/T9MatchResultList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    monitor-exit p0

    return-void

    .line 213
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getItemsInternal(JIZ)Ljava/util/ArrayList;
    .locals 12
    .parameter "id"
    .parameter "type"
    .parameter "remove"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 268
    monitor-enter p0

    const/4 v4, 0x0

    .line 269
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    packed-switch p3, :pswitch_data_0

    .line 346
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v4

    .line 271
    :pswitch_0
    if-eqz p4, :cond_1

    .line 272
    :try_start_0
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 273
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 274
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/t9/T9Item;

    .line 275
    .local v3, item:Lcom/android/providers/contacts/t9/T9Item;
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mRawContactId2Items:Ljava/util/HashMap;

    iget-wide v9, v3, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mDataId2Items:Ljava/util/HashMap;

    iget-wide v9, v3, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 268
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/providers/contacts/t9/T9Item;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 280
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 281
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    if-eqz v6, :cond_0

    .line 282
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableItemList()Ljava/util/ArrayList;

    move-result-object v4

    .line 283
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 288
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :pswitch_1
    if-eqz p4, :cond_5

    .line 289
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mRawContactId2Items:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/util/ArrayList;

    move-object v4, v0

    .line 290
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 291
    iget-object v9, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v10, v8, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 292
    .local v1, contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v8, v9, :cond_3

    .line 293
    iget-object v9, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v10, v8, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/t9/T9Item;

    .line 302
    .restart local v3       #item:Lcom/android/providers/contacts/t9/T9Item;
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mDataId2Items:Ljava/util/HashMap;

    iget-wide v9, v3, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 295
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Lcom/android/providers/contacts/t9/T9Item;
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/providers/contacts/t9/T9Item;>;"
    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 296
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v8, v8, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    cmp-long v8, v8, p1

    if-nez v8, :cond_4

    .line 297
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 306
    .end local v1           #contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    .end local v5           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/providers/contacts/t9/T9Item;>;"
    :cond_5
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mRawContactId2Items:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 307
    .restart local v6       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    if-eqz v6, :cond_0

    .line 308
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableItemList()Ljava/util/ArrayList;

    move-result-object v4

    .line 309
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    .line 314
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :pswitch_2
    if-eqz p4, :cond_a

    .line 315
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mDataId2Items:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/t9/T9Item;

    .line 316
    .restart local v3       #item:Lcom/android/providers/contacts/t9/T9Item;
    if-eqz v3, :cond_0

    .line 317
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableItemList()Ljava/util/ArrayList;

    move-result-object v4

    .line 318
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    iget-wide v9, v3, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 320
    .restart local v1       #contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mRawContactId2Items:Ljava/util/HashMap;

    iget-wide v9, v3, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 321
    .local v7, rawContactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 322
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    iget-wide v9, v3, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mRawContactId2Items:Ljava/util/HashMap;

    iget-wide v9, v3, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 325
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/providers/contacts/t9/T9Item;>;"
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 326
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v8, v8, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    cmp-long v8, v8, p1

    if-nez v8, :cond_7

    .line 327
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 330
    :cond_8
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 331
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v8, v8, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    cmp-long v8, v8, p1

    if-nez v8, :cond_9

    .line 332
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 338
    .end local v1           #contactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    .end local v3           #item:Lcom/android/providers/contacts/t9/T9Item;
    .end local v5           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/providers/contacts/t9/T9Item;>;"
    .end local v7           #rawContactIdList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :cond_a
    iget-object v8, p0, Lcom/android/providers/contacts/t9/T9Depot;->mDataId2Items:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/t9/T9Item;

    .line 339
    .restart local v3       #item:Lcom/android/providers/contacts/t9/T9Item;
    if-eqz v3, :cond_0

    .line 340
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableItemList()Ljava/util/ArrayList;

    move-result-object v4

    .line 341
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized insertItemInternal(Lcom/android/providers/contacts/t9/T9Item;Z)Z
    .locals 6
    .parameter "item"
    .parameter "keepOrder"

    .prologue
    .line 391
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    iget-wide v4, p1, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 392
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    if-nez v2, :cond_0

    .line 393
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    iget-wide v4, p1, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/t9/T9Item;

    .line 397
    .local v0, existItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/t9/T9Item;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 398
    const/4 v3, 0x0

    .line 413
    .end local v0           #existItem:Lcom/android/providers/contacts/t9/T9Item;
    :goto_0
    monitor-exit p0

    return v3

    .line 401
    :cond_2
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Depot;->mRawContactId2Items:Ljava/util/HashMap;

    iget-wide v4, p1, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 404
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    if-nez v2, :cond_3

    .line 405
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Depot;->mRawContactId2Items:Ljava/util/HashMap;

    iget-wide v4, p1, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    :cond_3
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Depot;->mDataId2Items:Ljava/util/HashMap;

    iget-wide v4, p1, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-direct {p0, p1, p2}, Lcom/android/providers/contacts/t9/T9Depot;->insertMatchResultInternal(Lcom/android/providers/contacts/t9/T9Item;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 413
    const/4 v3, 0x1

    goto :goto_0

    .line 391
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized insertItemsInternal(Ljava/util/Collection;Z)V
    .locals 3
    .parameter
    .parameter "keepOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/contacts/t9/T9Item;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/providers/contacts/t9/T9Item;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 260
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/t9/T9Item;

    .line 261
    .local v0, item:Lcom/android/providers/contacts/t9/T9Item;
    invoke-direct {p0, v0, p2}, Lcom/android/providers/contacts/t9/T9Depot;->insertItemInternal(Lcom/android/providers/contacts/t9/T9Item;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 262
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    .end local v0           #item:Lcom/android/providers/contacts/t9/T9Item;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/providers/contacts/t9/T9Item;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 265
    .restart local v1       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/providers/contacts/t9/T9Item;>;"
    :cond_1
    monitor-exit p0

    return-void
.end method

.method private insertItemsIntoDatabase(Ljava/util/Collection;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/contacts/t9/T9Item;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/t9/T9Item;

    .line 243
    .local v1, item:Lcom/android/providers/contacts/t9/T9Item;
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x1

    iget-wide v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 244
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x2

    iget-wide v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 245
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x3

    iget-wide v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 246
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x4

    iget-object v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mData:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 247
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x5

    iget-object v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 248
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x6

    iget-object v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 249
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v3, 0x7

    iget-wide v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mPhotoId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 250
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x8

    iget-wide v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mTimesContacted:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 251
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0x9

    iget-object v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mT9Key:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 252
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0xa

    iget-object v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mDisplayString:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 253
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    const/16 v3, 0xb

    iget-wide v4, v1, Lcom/android/providers/contacts/t9/T9Item;->mKeyType:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 254
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sInsertStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    goto :goto_0

    .line 256
    .end local v1           #item:Lcom/android/providers/contacts/t9/T9Item;
    :cond_0
    return-void
.end method

.method private declared-synchronized insertMatchResultInternal(Lcom/android/providers/contacts/t9/T9Item;Z)V
    .locals 5
    .parameter "item"
    .parameter "keepOrder"

    .prologue
    .line 423
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    :try_start_0
    sget v4, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEY_COUNT:I

    if-ge v0, v4, :cond_3

    .line 425
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->convertIndexToT9Key(I)C

    move-result v1

    .line 428
    .local v1, key:C
    invoke-static {p1, v1}, Lcom/android/providers/contacts/t9/T9Matcher;->matchNumber(Lcom/android/providers/contacts/t9/T9Item;C)Lcom/android/providers/contacts/t9/T9MatchResult;

    move-result-object v3

    .line 429
    .local v3, numberResult:Lcom/android/providers/contacts/t9/T9MatchResult;
    if-eqz v3, :cond_0

    .line 430
    iget-object v4, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNumberMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3, p2}, Lcom/android/providers/contacts/t9/T9MatchResultList;->add(Lcom/android/providers/contacts/t9/T9MatchResult;Z)V

    .line 434
    :cond_0
    const/4 v4, 0x1

    invoke-static {p1, v1, v4}, Lcom/android/providers/contacts/t9/T9Matcher;->match(Lcom/android/providers/contacts/t9/T9Item;CZ)Lcom/android/providers/contacts/t9/T9MatchResult;

    move-result-object v2

    .line 435
    .local v2, nameResult:Lcom/android/providers/contacts/t9/T9MatchResult;
    if-eqz v2, :cond_2

    .line 436
    iget-object v4, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNameMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v4, v4, v0

    invoke-virtual {v4, v2, p2}, Lcom/android/providers/contacts/t9/T9MatchResultList;->add(Lcom/android/providers/contacts/t9/T9MatchResult;Z)V

    .line 423
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 437
    :cond_2
    if-eqz v3, :cond_1

    .line 438
    iget-object v4, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNameMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3, p2}, Lcom/android/providers/contacts/t9/T9MatchResultList;->add(Lcom/android/providers/contacts/t9/T9MatchResult;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 423
    .end local v1           #key:C
    .end local v2           #nameResult:Lcom/android/providers/contacts/t9/T9MatchResult;
    .end local v3           #numberResult:Lcom/android/providers/contacts/t9/T9MatchResult;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 441
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized insertMatchResultsInternal(Ljava/util/Collection;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/contacts/t9/T9Item;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/t9/T9Item;

    .line 418
    .local v1, item:Lcom/android/providers/contacts/t9/T9Item;
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/t9/T9Depot;->insertMatchResultInternal(Lcom/android/providers/contacts/t9/T9Item;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 417
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/providers/contacts/t9/T9Item;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 420
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private removeItemsFromDatabase(JI)V
    .locals 2
    .parameter "id"
    .parameter "type"

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, statement:Landroid/database/sqlite/SQLiteStatement;
    packed-switch p3, :pswitch_data_0

    .line 235
    :goto_0
    if-eqz v0, :cond_0

    .line 236
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 237
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 239
    :cond_0
    return-void

    .line 226
    :pswitch_0
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 227
    goto :goto_0

    .line 229
    :pswitch_1
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sRawContactDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    .line 230
    goto :goto_0

    .line 232
    :pswitch_2
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sDataDeleteStatement:Landroid/database/sqlite/SQLiteStatement;

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private declared-synchronized removeItemsInternal(JI)I
    .locals 3
    .parameter "id"
    .parameter "type"

    .prologue
    .line 350
    monitor-enter p0

    const/4 v0, 0x0

    .line 351
    .local v0, count:I
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v2}, Lcom/android/providers/contacts/t9/T9Depot;->getItemsInternal(JIZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 352
    .local v1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    if-eqz v1, :cond_0

    .line 353
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/t9/T9Depot;->removeMatchResultsInternal(Ljava/util/Collection;)V

    .line 354
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 355
    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :cond_0
    monitor-exit p0

    return v0

    .line 350
    .end local v1           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized removeMatchResultsInternal(Ljava/util/Collection;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, items:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/providers/contacts/t9/T9Item;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/providers/contacts/t9/T9Item;

    .line 362
    .local v2, item:Lcom/android/providers/contacts/t9/T9Item;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v6, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEY_COUNT:I

    if-ge v0, v6, :cond_0

    .line 364
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->convertIndexToT9Key(I)C

    move-result v3

    .line 367
    .local v3, key:C
    invoke-static {v2, v3}, Lcom/android/providers/contacts/t9/T9Matcher;->matchNumber(Lcom/android/providers/contacts/t9/T9Item;C)Lcom/android/providers/contacts/t9/T9MatchResult;

    move-result-object v5

    .line 368
    .local v5, numberResult:Lcom/android/providers/contacts/t9/T9MatchResult;
    if-eqz v5, :cond_1

    .line 369
    iget-object v6, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNumberMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v6, v6, v0

    invoke-virtual {v6, v5}, Lcom/android/providers/contacts/t9/T9MatchResultList;->remove(Lcom/android/providers/contacts/t9/T9MatchResult;)V

    .line 373
    :cond_1
    const/4 v6, 0x1

    invoke-static {v2, v3, v6}, Lcom/android/providers/contacts/t9/T9Matcher;->match(Lcom/android/providers/contacts/t9/T9Item;CZ)Lcom/android/providers/contacts/t9/T9MatchResult;

    move-result-object v4

    .line 374
    .local v4, nameResult:Lcom/android/providers/contacts/t9/T9MatchResult;
    if-eqz v4, :cond_5

    .line 375
    iget-object v6, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNameMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v6, v6, v0

    invoke-virtual {v6, v4}, Lcom/android/providers/contacts/t9/T9MatchResultList;->remove(Lcom/android/providers/contacts/t9/T9MatchResult;)V

    .line 380
    :cond_2
    :goto_1
    if-eqz v5, :cond_3

    .line 381
    invoke-virtual {v5}, Lcom/android/providers/contacts/t9/T9MatchResult;->recycle()V

    .line 383
    :cond_3
    if-eqz v4, :cond_4

    .line 384
    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9MatchResult;->recycle()V

    .line 362
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_5
    if-eqz v5, :cond_2

    .line 377
    iget-object v6, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNameMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v6, v6, v0

    invoke-virtual {v6, v5}, Lcom/android/providers/contacts/t9/T9MatchResultList;->remove(Lcom/android/providers/contacts/t9/T9MatchResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 361
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #item:Lcom/android/providers/contacts/t9/T9Item;
    .end local v3           #key:C
    .end local v4           #nameResult:Lcom/android/providers/contacts/t9/T9MatchResult;
    .end local v5           #numberResult:Lcom/android/providers/contacts/t9/T9MatchResult;
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 388
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_6
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public getContactId(J)J
    .locals 5
    .parameter "rawContactId"

    .prologue
    .line 107
    const-wide/16 v0, -0x1

    .line 108
    .local v0, contactId:J
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Depot;->mRawContactId2Items:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 109
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 110
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/t9/T9Item;

    iget-wide v0, v3, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    .line 112
    :cond_0
    return-wide v0
.end method

.method declared-synchronized getItem(JLcom/android/providers/contacts/t9/T9CallLogItem;)Lcom/android/providers/contacts/t9/T9Item;
    .locals 6
    .parameter "contactId"
    .parameter "callLogItem"

    .prologue
    .line 444
    monitor-enter p0

    const/4 v1, 0x0

    .line 445
    .local v1, item:Lcom/android/providers/contacts/t9/T9Item;
    :try_start_0
    iget-object v4, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 446
    .local v3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 447
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, l:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 448
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/providers/contacts/t9/T9Item;

    invoke-static {v4, p3}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->matchItem(Lcom/android/providers/contacts/t9/T9Item;Lcom/android/providers/contacts/t9/T9CallLogItem;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 449
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #item:Lcom/android/providers/contacts/t9/T9Item;
    check-cast v1, Lcom/android/providers/contacts/t9/T9Item;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    .end local v0           #i:I
    .end local v2           #l:I
    .restart local v1       #item:Lcom/android/providers/contacts/t9/T9Item;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 447
    .restart local v0       #i:I
    .restart local v2       #l:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v0           #i:I
    .end local v1           #item:Lcom/android/providers/contacts/t9/T9Item;
    .end local v2           #l:I
    .end local v3           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized getName(C)Lcom/android/providers/contacts/t9/T9MatchResultList;
    .locals 2
    .parameter "key"

    .prologue
    .line 203
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9Utils;->convertT9CharToIndex(C)I

    move-result v0

    .line 204
    .local v0, index:I
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNameMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 203
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getNumber(C)Lcom/android/providers/contacts/t9/T9MatchResultList;
    .locals 2
    .parameter "key"

    .prologue
    .line 208
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9Utils;->convertT9CharToIndex(C)I

    move-result v0

    .line 209
    .local v0, index:I
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNumberMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v1, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 208
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public incTimesContacted(J)V
    .locals 7
    .parameter "contactId"

    .prologue
    const/4 v4, 0x1

    .line 145
    sget-object v3, Lcom/android/providers/contacts/t9/T9Utils;->sTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 146
    sget-object v3, Lcom/android/providers/contacts/t9/T9Utils;->sTimesContactedUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 149
    monitor-enter p0

    .line 150
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/providers/contacts/t9/T9Depot;->getItemsInternal(JIZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 151
    .local v2, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 152
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/t9/T9Depot;->removeMatchResultsInternal(Ljava/util/Collection;)V

    .line 153
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/t9/T9Item;

    .line 154
    .local v1, item:Lcom/android/providers/contacts/t9/T9Item;
    iget-wide v3, v1, Lcom/android/providers/contacts/t9/T9Item;->mTimesContacted:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/android/providers/contacts/t9/T9Item;->mTimesContacted:J

    goto :goto_0

    .line 158
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/providers/contacts/t9/T9Item;
    .end local v2           #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 156
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :cond_0
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/providers/contacts/t9/T9Depot;->insertMatchResultsInternal(Ljava/util/Collection;)V

    .line 158
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    return-void
.end method

.method public insert(JI)V
    .locals 2
    .parameter "id"
    .parameter "type"

    .prologue
    .line 163
    sget-object v1, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p3, p1, p2}, Lcom/android/providers/contacts/t9/T9Builder;->buildItem(Landroid/database/sqlite/SQLiteDatabase;IJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 166
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    monitor-enter p0

    .line 167
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/t9/T9Depot;->insertItemsInternal(Ljava/util/Collection;Z)V

    .line 168
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9Depot;->insertItemsIntoDatabase(Ljava/util/Collection;)V

    .line 173
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/util/ArrayList;)V

    .line 174
    return-void

    .line 168
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public load()V
    .locals 25

    .prologue
    .line 53
    const/16 v20, 0x0

    .line 54
    .local v20, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->getReusableItemList()Ljava/util/ArrayList;

    move-result-object v22

    .line 55
    .local v22, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    const/16 v23, 0x0

    .line 56
    .local v23, rowOffset:I
    const/16 v24, 0x0

    .line 60
    .local v24, rows:I
    :cond_0
    :try_start_0
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "t9_lookup"

    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 62
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 65
    :goto_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    new-instance v2, Lcom/android/providers/contacts/t9/T9Item;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const/4 v7, 0x2

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x3

    move-object/from16 v0, v20

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    move-object/from16 v0, v20

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x6

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x7

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/16 v16, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xa

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-direct/range {v2 .. v19}, Lcom/android/providers/contacts/t9/T9Item;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v21

    .line 79
    .local v21, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v2, "failed to load t9 search items from database"

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/android/providers/contacts/t9/T9Utils;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    if-eqz v20, :cond_1

    .line 82
    move/from16 v0, v23

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    .line 83
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 86
    .end local v21           #e:Ljava/lang/RuntimeException;
    :cond_1
    :goto_1
    const/16 v2, 0x3e8

    move/from16 v0, v24

    if-eq v0, v2, :cond_0

    .line 89
    monitor-enter p0

    .line 90
    :try_start_2
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/contacts/t9/T9Depot;->clear()V

    .line 91
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Depot;->insertItemsInternal(Ljava/util/Collection;Z)V

    .line 92
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    invoke-static/range {v22 .. v22}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/util/ArrayList;)V

    .line 95
    return-void

    .line 81
    :cond_2
    if-eqz v20, :cond_1

    .line 82
    move/from16 v0, v23

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    .line 83
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 81
    :catchall_0
    move-exception v2

    if-eqz v20, :cond_3

    .line 82
    move/from16 v0, v23

    add-int/lit16 v0, v0, 0x3e8

    move/from16 v23, v0

    .line 83
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .line 92
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public rebuild()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 31
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-wide/16 v3, 0x0

    invoke-static {v2, v5, v3, v4}, Lcom/android/providers/contacts/t9/T9Builder;->buildItem(Landroid/database/sqlite/SQLiteDatabase;IJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 32
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Builder;->buildSpItem()Ljava/util/ArrayList;

    move-result-object v1

    .line 35
    .local v1, spItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    monitor-enter p0

    .line 36
    :try_start_0
    invoke-direct {p0}, Lcom/android/providers/contacts/t9/T9Depot;->clear()V

    .line 37
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/providers/contacts/t9/T9Depot;->insertItemsInternal(Ljava/util/Collection;Z)V

    .line 38
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/providers/contacts/t9/T9Depot;->insertItemsInternal(Ljava/util/Collection;Z)V

    .line 39
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object v2, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "DELETE FROM t9_lookup"

    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9Depot;->insertItemsIntoDatabase(Ljava/util/Collection;)V

    .line 46
    invoke-direct {p0, v1}, Lcom/android/providers/contacts/t9/T9Depot;->insertItemsIntoDatabase(Ljava/util/Collection;)V

    .line 48
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/util/ArrayList;)V

    .line 49
    invoke-static {v1}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/util/ArrayList;)V

    .line 50
    return-void

    .line 39
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public remove(JI)V
    .locals 1
    .parameter "id"
    .parameter "type"

    .prologue
    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/t9/T9Depot;->removeItemsInternal(JI)I

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/t9/T9Depot;->removeItemsFromDatabase(JI)V

    .line 184
    return-void

    .line 180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sortResults()V
    .locals 2

    .prologue
    .line 98
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget v1, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEY_COUNT:I

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNameMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/providers/contacts/t9/T9MatchResultList;->sort()V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/providers/contacts/t9/T9Utils;->VALID_T9_KEY_COUNT:I

    if-ge v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9Depot;->mNumberMatchResults:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/providers/contacts/t9/T9MatchResultList;->sort()V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 104
    :cond_1
    return-void
.end method

.method public update(JI)V
    .locals 2
    .parameter "id"
    .parameter "type"

    .prologue
    .line 188
    sget-object v1, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, p3, p1, p2}, Lcom/android/providers/contacts/t9/T9Builder;->buildItem(Landroid/database/sqlite/SQLiteDatabase;IJ)Ljava/util/ArrayList;

    move-result-object v0

    .line 191
    .local v0, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    monitor-enter p0

    .line 192
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/t9/T9Depot;->removeItemsInternal(JI)I

    .line 193
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/providers/contacts/t9/T9Depot;->insertItemsInternal(Ljava/util/Collection;Z)V

    .line 194
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/t9/T9Depot;->removeItemsFromDatabase(JI)V

    .line 198
    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/T9Depot;->insertItemsIntoDatabase(Ljava/util/Collection;)V

    .line 199
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->recyle(Ljava/util/ArrayList;)V

    .line 200
    return-void

    .line 194
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public updatePhotoId(JJ)V
    .locals 5
    .parameter "contactId"
    .parameter "photoId"

    .prologue
    .line 123
    sget-object v3, Lcom/android/providers/contacts/t9/T9Utils;->sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, p3, p4}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 124
    sget-object v3, Lcom/android/providers/contacts/t9/T9Utils;->sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, p1, p2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 125
    sget-object v3, Lcom/android/providers/contacts/t9/T9Utils;->sPhotoUpdateStatement:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    .line 128
    monitor-enter p0

    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9Depot;->mContactId2Items:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 130
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/contacts/t9/T9Item;

    .line 132
    .local v1, item:Lcom/android/providers/contacts/t9/T9Item;
    iput-wide p3, v1, Lcom/android/providers/contacts/t9/T9Item;->mPhotoId:J

    goto :goto_0

    .line 135
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/android/providers/contacts/t9/T9Item;
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    :cond_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    return-void
.end method
