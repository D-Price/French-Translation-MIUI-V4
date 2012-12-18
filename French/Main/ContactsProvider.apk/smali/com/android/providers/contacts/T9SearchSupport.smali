.class public Lcom/android/providers/contacts/T9SearchSupport;
.super Ljava/lang/Object;
.source "T9SearchSupport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/T9SearchSupport$ItemQuery;,
        Lcom/android/providers/contacts/T9SearchSupport$SPItemQuery;
    }
.end annotation


# static fields
.field private static final EMPTY_RESULT:Lcom/android/providers/contacts/t9/T9MatchResultList;

.field private static final sInstance:Lcom/android/providers/contacts/T9SearchSupport;


# instance fields
.field private mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

.field private mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

.field private mDepot:Lcom/android/providers/contacts/t9/T9Depot;

.field private mLoaded:Z

.field private mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

.field private mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

.field private mPhoneMimeTypeId:J

.field private mSipMimeTypeId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const-string v0, "EMPTY"

    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9MatchResultList;->createInstance(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v0

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_RESULT:Lcom/android/providers/contacts/t9/T9MatchResultList;

    .line 98
    new-instance v0, Lcom/android/providers/contacts/T9SearchSupport;

    invoke-direct {v0}, Lcom/android/providers/contacts/T9SearchSupport;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mLoaded:Z

    .line 108
    new-instance v0, Lcom/android/providers/contacts/t9/T9Depot;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9Depot;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    .line 110
    new-instance v0, Lcom/android/providers/contacts/t9/T9Cache;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9Cache;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    .line 112
    new-instance v0, Lcom/android/providers/contacts/t9/T9Cache;

    invoke-direct {v0}, Lcom/android/providers/contacts/t9/T9Cache;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    .line 114
    new-instance v0, Lcom/android/providers/contacts/t9/T9CallLogDepot;

    iget-object v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-direct {v0, v1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;-><init>(Lcom/android/providers/contacts/t9/T9Depot;)V

    iput-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/T9SearchSupport;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/providers/contacts/T9SearchSupport;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/providers/contacts/T9SearchSupport;)Lcom/android/providers/contacts/t9/T9Depot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/contacts/T9SearchSupport;)Lcom/android/providers/contacts/t9/T9CallLogDepot;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    return-object v0
.end method

.method public static getInstance()Lcom/android/providers/contacts/T9SearchSupport;
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/providers/contacts/T9SearchSupport;->sInstance:Lcom/android/providers/contacts/T9SearchSupport;

    return-object v0
.end method

.method private initialize(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "context"
    .parameter "helper"
    .parameter "db"

    .prologue
    .line 155
    const-string v0, "initialize()"

    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    if-eq p2, v0, :cond_0

    .line 158
    iput-object p2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDatabaseHelper:Lcom/android/providers/contacts/ContactsDatabaseHelper;

    .line 159
    const-string v0, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p2, v0, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhoneMimeTypeId:J

    .line 160
    const-string v0, "vnd.android.cursor.item/sip_address"

    invoke-virtual {p2, v0, p3}, Lcom/android/providers/contacts/ContactsDatabaseHelper;->lookupMimeTypeId(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSipMimeTypeId:J

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneMimeTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhoneMimeTypeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSipMimeTypeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSipMimeTypeId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 164
    :cond_0
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eq p3, v0, :cond_1

    .line 165
    invoke-static {p1, p3}, Lcom/android/providers/contacts/t9/T9Utils;->onDatabaseChanged(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 167
    :cond_1
    return-void
.end method

.method private queryName(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResultList;
    .locals 12
    .parameter "key"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 528
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 529
    .local v6, timeStart:J
    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_RESULT:Lcom/android/providers/contacts/t9/T9MatchResultList;

    .line 531
    .local v5, results:Lcom/android/providers/contacts/t9/T9MatchResultList;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x100

    if-ge v8, v9, :cond_0

    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9Utils;->isValidT9Key(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 532
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 533
    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/providers/contacts/t9/T9Depot;->getName(C)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v5

    .line 564
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query name for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    .line 565
    return-object v5

    .line 536
    :cond_1
    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v8, p1}, Lcom/android/providers/contacts/t9/T9Cache;->contains(Ljava/lang/String;)I

    move-result v3

    .line 537
    .local v3, index:I
    if-ltz v3, :cond_3

    .line 538
    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v8, v3}, Lcom/android/providers/contacts/t9/T9Cache;->getCachedResult(I)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v5

    .line 544
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_0

    .line 545
    move-object v1, v5

    .line 546
    .local v1, candidateList:Lcom/android/providers/contacts/t9/T9MatchResultList;
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9MatchResultList;->createInstance(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v5

    .line 548
    const/4 v4, 0x0

    .line 550
    .local v4, result:Lcom/android/providers/contacts/t9/T9MatchResult;
    invoke-virtual {v1, v11}, Lcom/android/providers/contacts/t9/T9MatchResultList;->getResults(Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/t9/T9MatchResult;

    .line 551
    .local v0, candidate:Lcom/android/providers/contacts/t9/T9MatchResult;
    invoke-virtual {v0}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/providers/contacts/t9/T9Item;->isContactSPDivider()Z

    move-result v8

    if-nez v8, :cond_2

    .line 554
    invoke-virtual {v0}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v8

    invoke-static {v8, p1, v10}, Lcom/android/providers/contacts/t9/T9Matcher;->match(Lcom/android/providers/contacts/t9/T9Item;Ljava/lang/String;Z)Lcom/android/providers/contacts/t9/T9MatchResult;

    move-result-object v4

    .line 555
    if-eqz v4, :cond_2

    .line 556
    invoke-virtual {v5, v4, v11}, Lcom/android/providers/contacts/t9/T9MatchResultList;->add(Lcom/android/providers/contacts/t9/T9MatchResult;Z)V

    goto :goto_2

    .line 540
    .end local v0           #candidate:Lcom/android/providers/contacts/t9/T9MatchResult;
    .end local v1           #candidateList:Lcom/android/providers/contacts/t9/T9MatchResultList;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #result:Lcom/android/providers/contacts/t9/T9MatchResult;
    :cond_3
    const/4 v3, 0x0

    .line 541
    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/providers/contacts/t9/T9Depot;->getName(C)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v5

    goto :goto_1

    .line 559
    .restart local v1       #candidateList:Lcom/android/providers/contacts/t9/T9MatchResultList;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #result:Lcom/android/providers/contacts/t9/T9MatchResult;
    :cond_4
    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v8, p1, v5}, Lcom/android/providers/contacts/t9/T9Cache;->put(Ljava/lang/String;Lcom/android/providers/contacts/t9/T9MatchResultList;)V

    goto :goto_0
.end method

.method private queryNumber(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResultList;
    .locals 12
    .parameter "key"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 575
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 576
    .local v6, timeStart:J
    sget-object v5, Lcom/android/providers/contacts/T9SearchSupport;->EMPTY_RESULT:Lcom/android/providers/contacts/t9/T9MatchResultList;

    .line 578
    .local v5, results:Lcom/android/providers/contacts/t9/T9MatchResultList;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x100

    if-ge v8, v9, :cond_0

    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9Utils;->isValidT9Key(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 579
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v10, :cond_1

    .line 580
    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/providers/contacts/t9/T9Depot;->getNumber(C)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v5

    .line 611
    :cond_0
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "query number for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    .line 612
    return-object v5

    .line 583
    :cond_1
    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v8, p1}, Lcom/android/providers/contacts/t9/T9Cache;->contains(Ljava/lang/String;)I

    move-result v3

    .line 584
    .local v3, index:I
    if-ltz v3, :cond_3

    .line 585
    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v8, v3}, Lcom/android/providers/contacts/t9/T9Cache;->getCachedResult(I)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v5

    .line 591
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-eq v3, v8, :cond_0

    .line 592
    move-object v1, v5

    .line 593
    .local v1, candidateList:Lcom/android/providers/contacts/t9/T9MatchResultList;
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9MatchResultList;->createInstance(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v5

    .line 595
    const/4 v4, 0x0

    .line 597
    .local v4, result:Lcom/android/providers/contacts/t9/T9MatchResult;
    invoke-virtual {v1, v10}, Lcom/android/providers/contacts/t9/T9MatchResultList;->getResults(Z)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/t9/T9MatchResult;

    .line 598
    .local v0, candidate:Lcom/android/providers/contacts/t9/T9MatchResult;
    invoke-virtual {v0}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/providers/contacts/t9/T9Item;->isContactSPDivider()Z

    move-result v8

    if-nez v8, :cond_2

    .line 601
    invoke-virtual {v0}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/android/providers/contacts/t9/T9Matcher;->matchNumber(Lcom/android/providers/contacts/t9/T9Item;Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResult;

    move-result-object v4

    .line 602
    if-eqz v4, :cond_2

    .line 603
    invoke-virtual {v5, v4, v10}, Lcom/android/providers/contacts/t9/T9MatchResultList;->add(Lcom/android/providers/contacts/t9/T9MatchResult;Z)V

    goto :goto_2

    .line 587
    .end local v0           #candidate:Lcom/android/providers/contacts/t9/T9MatchResult;
    .end local v1           #candidateList:Lcom/android/providers/contacts/t9/T9MatchResultList;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #result:Lcom/android/providers/contacts/t9/T9MatchResult;
    :cond_3
    const/4 v3, 0x0

    .line 588
    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/providers/contacts/t9/T9Depot;->getNumber(C)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v5

    goto :goto_1

    .line 606
    .restart local v1       #candidateList:Lcom/android/providers/contacts/t9/T9MatchResultList;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v4       #result:Lcom/android/providers/contacts/t9/T9MatchResult;
    :cond_4
    iget-object v8, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v8, p1, v5}, Lcom/android/providers/contacts/t9/T9Cache;->put(Ljava/lang/String;Lcom/android/providers/contacts/t9/T9MatchResultList;)V

    goto :goto_0
.end method


# virtual methods
.method public getCallLog(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .parameter "selection"

    .prologue
    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-boolean v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 260
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 264
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 268
    .local v1, timeStart:J
    iget-object v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    invoke-virtual {v3, p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->getCallLog(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 270
    .local v0, cursor:Landroid/database/Cursor;
    const-string v3, "finish to get call log"

    invoke-static {v1, v2, v3}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    .line 271
    return-object v0

    .line 264
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #timeStart:J
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 261
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getPhoneMimeTypeId()J
    .locals 2

    .prologue
    .line 147
    iget-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhoneMimeTypeId:J

    return-wide v0
.end method

.method public getSipMimeTypeId()J
    .locals 2

    .prologue
    .line 151
    iget-wide v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSipMimeTypeId:J

    return-wide v0
.end method

.method public load()V
    .locals 3

    .prologue
    .line 203
    const-string v2, "load()"

    invoke-static {v2}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 206
    .local v0, timeStart:J
    iget-boolean v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mLoaded:Z

    if-nez v2, :cond_0

    .line 207
    new-instance v2, Lcom/android/providers/contacts/T9SearchSupport$1;

    invoke-direct {v2, p0}, Lcom/android/providers/contacts/T9SearchSupport$1;-><init>(Lcom/android/providers/contacts/T9SearchSupport;)V

    invoke-virtual {v2}, Lcom/android/providers/contacts/T9SearchSupport$1;->start()V

    .line 233
    :cond_0
    const-string v2, "load t9 search indexes"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    .line 234
    return-void
.end method

.method public onCallLogDeleted(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V
    .locals 1
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
    .line 514
    .local p3, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->deleteCallLog(Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)V

    .line 515
    return-void
.end method

.method public onCallLogInserted(JLjava/lang/String;Ljava/lang/String;IJJZI)V
    .locals 12
    .parameter "id"
    .parameter "number"
    .parameter "normalizedNumber"
    .parameter "type"
    .parameter "duration"
    .parameter "date"
    .parameter "isForwarded"
    .parameter "firewallType"

    .prologue
    .line 510
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    move-wide v1, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->insert(JLjava/lang/String;Ljava/lang/String;IJJZI)V

    .line 511
    return-void
.end method

.method public onCallLogRemoveExpiredEntries(I)V
    .locals 1
    .parameter "limitation"

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    invoke-virtual {v0, p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->removeExpiredEntries(I)V

    .line 519
    return-void
.end method

.method public onContactIdUpdated(JJ)V
    .locals 8
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    const-wide/16 v6, 0x0

    .line 315
    cmp-long v4, p1, v6

    if-gtz v4, :cond_0

    .line 333
    :goto_0
    return-void

    .line 319
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 321
    .local v2, timeStart:J
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 322
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 324
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {v4, p1, p2}, Lcom/android/providers/contacts/t9/T9Depot;->getContactId(J)J

    move-result-wide v0

    .line 325
    .local v0, oldContactId:J
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    const/4 v5, 0x2

    invoke-virtual {v4, p1, p2, v5}, Lcom/android/providers/contacts/t9/T9Depot;->update(JI)V

    .line 326
    cmp-long v4, v0, v6

    if-ltz v4, :cond_1

    .line 327
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/providers/contacts/t9/T9Depot;->update(JI)V

    .line 330
    :cond_1
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->setDirty(I)V

    .line 332
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update contact id for raw contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " as "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDataDeleted(JJJ)V
    .locals 6
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"

    .prologue
    const-wide/16 v4, 0x0

    .line 446
    iget-wide v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhoneMimeTypeId:J

    cmp-long v2, p5, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSipMimeTypeId:J

    cmp-long v2, p5, v2

    if-nez v2, :cond_1

    .line 447
    :cond_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    cmp-long v2, p3, v4

    if-gtz v2, :cond_2

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 451
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 453
    .local v0, timeStart:J
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 454
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 455
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/providers/contacts/t9/T9Depot;->remove(JI)V

    .line 457
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->setDirty(I)V

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete data for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of raw contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDataInserted(JJJLjava/lang/String;)V
    .locals 6
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"
    .parameter "data"

    .prologue
    const-wide/16 v4, 0x0

    .line 472
    iget-wide v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhoneMimeTypeId:J

    cmp-long v2, p5, v2

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSipMimeTypeId:J

    cmp-long v2, p5, v2

    if-nez v2, :cond_1

    .line 473
    :cond_0
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    cmp-long v2, p3, v4

    if-gtz v2, :cond_2

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 477
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 479
    .local v0, timeStart:J
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 480
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 481
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    const/4 v3, 0x3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/providers/contacts/t9/T9Depot;->insert(JI)V

    .line 483
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->setDirty(I)V

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert data for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of raw contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDataUpdated(JJJLjava/lang/String;)V
    .locals 7
    .parameter "dataId"
    .parameter "rawContactId"
    .parameter "mimeTypeId"
    .parameter "data"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x3

    .line 416
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    invoke-virtual/range {p0 .. p6}, Lcom/android/providers/contacts/T9SearchSupport;->onDataDeleted(JJJ)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-wide v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mPhoneMimeTypeId:J

    cmp-long v2, p5, v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mSipMimeTypeId:J

    cmp-long v2, p5, v2

    if-nez v2, :cond_0

    .line 422
    :cond_2
    cmp-long v2, p1, v5

    if-lez v2, :cond_0

    cmp-long v2, p3, v5

    if-lez v2, :cond_0

    .line 426
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 428
    .local v0, timeStart:J
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 429
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 430
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {v2, p1, p2, v4}, Lcom/android/providers/contacts/t9/T9Depot;->update(JI)V

    .line 432
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    invoke-virtual {v2, v4}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->setDirty(I)V

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update data for id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of raw contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onDatabaseCreate(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "context"
    .parameter "helper"
    .parameter "db"

    .prologue
    .line 127
    const-string v4, "onDatabaseCreate()"

    invoke-static {v4}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 128
    sget-object v0, Lcom/android/providers/contacts/t9/T9Utils;->CREATE_STATEMENTS:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 129
    .local v3, sql:Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v3           #sql:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/T9SearchSupport;->initialize(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport;->rebuild()V

    .line 133
    return-void
.end method

.method public onDatabaseOpen(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "context"
    .parameter "helper"
    .parameter "db"

    .prologue
    .line 136
    const-string v0, "onDatabaseOpen()"

    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/contacts/T9SearchSupport;->initialize(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/providers/contacts/T9SearchSupport;->load()V

    .line 139
    return-void
.end method

.method public onDatabaseUpgrade(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "context"
    .parameter "helper"
    .parameter "db"

    .prologue
    .line 142
    const-string v0, "onDatabaseUpgrade()"

    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/providers/contacts/T9SearchSupport;->onDatabaseCreate(Landroid/content/Context;Lcom/android/providers/contacts/ContactsDatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 144
    return-void
.end method

.method public onDisplayNameUpdated(J)V
    .locals 4
    .parameter "contactId"

    .prologue
    .line 374
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 387
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 380
    .local v0, timeStart:J
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 381
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 382
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/providers/contacts/t9/T9Depot;->update(JI)V

    .line 384
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->setDirty(I)V

    .line 386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update display name for contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onPhotoUpdated(JJ)V
    .locals 4
    .parameter "contactId"
    .parameter "photoId"

    .prologue
    .line 396
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 405
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 402
    .local v0, timeStart:J
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/providers/contacts/t9/T9Depot;->updatePhotoId(JJ)V

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update photo for contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onRawContactDeleted(J)V
    .locals 9
    .parameter "rawContactId"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x2

    .line 341
    cmp-long v4, p1, v7

    if-gtz v4, :cond_0

    .line 358
    :goto_0
    return-void

    .line 345
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 347
    .local v2, timeStart:J
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 348
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 349
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {v4, p1, p2}, Lcom/android/providers/contacts/t9/T9Depot;->getContactId(J)J

    move-result-wide v0

    .line 350
    .local v0, contactId:J
    cmp-long v4, v0, v7

    if-ltz v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {v4, p1, p2, v6}, Lcom/android/providers/contacts/t9/T9Depot;->remove(JI)V

    .line 352
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    const/4 v5, 0x1

    invoke-virtual {v4, v0, v1, v5}, Lcom/android/providers/contacts/t9/T9Depot;->update(JI)V

    .line 355
    :cond_1
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    invoke-virtual {v4, v6}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->setDirty(I)V

    .line 357
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete raw contact "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onRawContactInserted(J)V
    .locals 0
    .parameter "rawContactId"

    .prologue
    .line 366
    return-void
.end method

.method public onTimesContactedChanged(J)V
    .locals 4
    .parameter "contactId"

    .prologue
    .line 495
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    .line 506
    :goto_0
    return-void

    .line 499
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 501
    .local v0, timeStart:J
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 502
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 503
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {v2, p1, p2}, Lcom/android/providers/contacts/t9/T9Depot;->incTimesContacted(J)V

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update time contacted for contact "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    goto :goto_0
.end method

.method public onTransactionBegin()V
    .locals 0

    .prologue
    .line 278
    return-void
.end method

.method public onTransactionEnd()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method public onTranscationCommit()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public onTranscationRollback()V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public onUpdateSPVisibility()V
    .locals 3

    .prologue
    .line 299
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 301
    .local v0, timeStart:J
    invoke-static {}, Lcom/android/providers/contacts/t9/T9Utils;->updateSpItemVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 303
    iget-object v2, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v2}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 306
    :cond_0
    const-string v2, "update sp visibility"

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    .line 307
    return-void
.end method

.method public query(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 6
    .parameter "key"
    .parameter "numberOnly"

    .prologue
    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-boolean v3, p0, Lcom/android/providers/contacts/T9SearchSupport;->mLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 240
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 248
    .local v1, timeStart:J
    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/providers/contacts/t9/DataCursor;

    new-instance v3, Lcom/android/providers/contacts/t9/T9CursorProvider;

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->queryNumber(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    invoke-virtual {v5, p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->query(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/android/providers/contacts/t9/T9CursorProvider;-><init>(Ljava/lang/String;Lcom/android/providers/contacts/t9/T9MatchResultList;Ljava/util/List;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(t9 number only)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v3, v4}, Lcom/android/providers/contacts/t9/DataCursor;-><init>(Ljava/lang/String;Lcom/android/providers/contacts/t9/DataCursor$DataProvider;Ljava/lang/String;)V

    .line 252
    .local v0, cursor:Landroid/database/Cursor;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finish to query "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    .line 253
    return-object v0

    .line 244
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #timeStart:J
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 248
    .restart local v1       #timeStart:J
    :cond_1
    new-instance v0, Lcom/android/providers/contacts/t9/DataCursor;

    new-instance v3, Lcom/android/providers/contacts/t9/T9CursorProvider;

    invoke-direct {p0, p1}, Lcom/android/providers/contacts/T9SearchSupport;->queryName(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResultList;

    move-result-object v4

    iget-object v5, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    invoke-virtual {v5, p1}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->query(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/android/providers/contacts/t9/T9CursorProvider;-><init>(Ljava/lang/String;Lcom/android/providers/contacts/t9/T9MatchResultList;Ljava/util/List;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(t9 name + number)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v3, v4}, Lcom/android/providers/contacts/t9/DataCursor;-><init>(Ljava/lang/String;Lcom/android/providers/contacts/t9/DataCursor$DataProvider;Ljava/lang/String;)V

    goto :goto_1

    .line 241
    .end local v1           #timeStart:J
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public rebuild()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 170
    const-string v4, "rebuild()"

    invoke-static {v4}, Lcom/android/providers/contacts/t9/T9Utils;->logd(Ljava/lang/String;)V

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 173
    .local v1, timeStart:J
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v4

    if-nez v4, :cond_3

    .line 176
    .local v3, usingTransaction:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 177
    :try_start_0
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 179
    :cond_0
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mDepot:Lcom/android/providers/contacts/t9/T9Depot;

    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9Depot;->rebuild()V

    .line 180
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->load()V

    .line 181
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mLoaded:Z

    .line 184
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNameCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 185
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mNumberCache:Lcom/android/providers/contacts/t9/T9Cache;

    invoke-virtual {v4}, Lcom/android/providers/contacts/t9/T9Cache;->clear()V

    .line 186
    iget-object v4, p0, Lcom/android/providers/contacts/T9SearchSupport;->mCallLogDepot:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->setDirty(I)V

    .line 188
    if-eqz v3, :cond_1

    .line 189
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    if-eqz v3, :cond_2

    .line 195
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 199
    :cond_2
    :goto_1
    const-string v4, "rebuild t9 search indexes"

    invoke-static {v1, v2, v4}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    .line 200
    return-void

    .line 173
    .end local v3           #usingTransaction:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 191
    .restart local v3       #usingTransaction:Z
    :catch_0
    move-exception v0

    .line 192
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v4, "rebuild t9 search database failed"

    invoke-static {v4, v0}, Lcom/android/providers/contacts/t9/T9Utils;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    if-eqz v3, :cond_2

    .line 195
    sget-object v4, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    .line 194
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_4

    .line 195
    sget-object v5, Lcom/android/providers/contacts/t9/T9Utils;->sDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_4
    throw v4
.end method
