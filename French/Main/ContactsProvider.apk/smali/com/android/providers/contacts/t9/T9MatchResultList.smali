.class public Lcom/android/providers/contacts/t9/T9MatchResultList;
.super Ljava/lang/Object;
.source "T9MatchResultList.java"


# static fields
.field private static final sPool:[Lcom/android/providers/contacts/t9/T9MatchResultList;

.field private static sPoolIndex:I


# instance fields
.field private mInOrder:Z

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9MatchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field private mReadOnlyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/t9/T9MatchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSpCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/providers/contacts/t9/T9MatchResultList;

    sput-object v0, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPool:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    .line 12
    const/4 v0, -0x1

    sput v0, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPoolIndex:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mInOrder:Z

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mSpCount:I

    .line 32
    new-instance v0, Lcom/android/providers/contacts/t9/T9MatchResultList$1;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/t9/T9MatchResultList$1;-><init>(Lcom/android/providers/contacts/t9/T9MatchResultList;)V

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mReadOnlyList:Ljava/util/List;

    .line 45
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9MatchResultList;->clear()V

    .line 46
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/t9/T9MatchResultList;->setName(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/t9/T9MatchResultList;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static createInstance(Ljava/lang/String;)Lcom/android/providers/contacts/t9/T9MatchResultList;
    .locals 6
    .parameter "name"

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, list:Lcom/android/providers/contacts/t9/T9MatchResultList;
    sget-object v3, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPool:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    monitor-enter v3

    .line 17
    :try_start_0
    sget v2, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPoolIndex:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 18
    new-instance v1, Lcom/android/providers/contacts/t9/T9MatchResultList;

    invoke-direct {v1, p0}, Lcom/android/providers/contacts/t9/T9MatchResultList;-><init>(Ljava/lang/String;)V

    .end local v0           #list:Lcom/android/providers/contacts/t9/T9MatchResultList;
    .local v1, list:Lcom/android/providers/contacts/t9/T9MatchResultList;
    move-object v0, v1

    .line 24
    .end local v1           #list:Lcom/android/providers/contacts/t9/T9MatchResultList;
    .restart local v0       #list:Lcom/android/providers/contacts/t9/T9MatchResultList;
    :goto_0
    monitor-exit v3

    .line 25
    return-object v0

    .line 20
    :cond_0
    sget-object v2, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPool:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    sget v4, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPoolIndex:I

    aget-object v0, v2, v4

    .line 21
    sget-object v2, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPool:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    sget v4, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPoolIndex:I

    add-int/lit8 v5, v4, -0x1

    sput v5, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPoolIndex:I

    const/4 v5, 0x0

    aput-object v5, v2, v4

    .line 22
    invoke-direct {v0, p0}, Lcom/android/providers/contacts/t9/T9MatchResultList;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mName:Ljava/lang/String;

    .line 122
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/android/providers/contacts/t9/T9MatchResult;Z)V
    .locals 3
    .parameter "result"
    .parameter "inOrder"

    .prologue
    .line 59
    monitor-enter p0

    if-eqz p2, :cond_2

    .line 60
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9MatchResultList;->sort()V

    .line 61
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/providers/contacts/t9/T9MatchResult;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 62
    .local v0, index:I
    if-gez v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    neg-int v2, v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 70
    .end local v0           #index:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/t9/T9Item;->isSPItem()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget v1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mSpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mSpCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    monitor-exit p0

    return-void

    .line 66
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mInOrder:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/providers/contacts/t9/T9MatchResult;->createContactSPDivider()Lcom/android/providers/contacts/t9/T9MatchResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mSpCount:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mInOrder:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getResults(Z)Ljava/util/List;
    .locals 1
    .parameter "inOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/t9/T9MatchResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9MatchResultList;->sort()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mReadOnlyList:Ljava/util/List;

    return-object v0
.end method

.method public getSpCount()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mSpCount:I

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9MatchResultList;->clear()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mName:Ljava/lang/String;

    .line 113
    sget-object v1, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPool:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    monitor-enter v1

    .line 114
    :try_start_0
    sget v0, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPoolIndex:I

    add-int/lit8 v0, v0, 0x1

    sget-object v2, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPool:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 115
    sget-object v0, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPool:[Lcom/android/providers/contacts/t9/T9MatchResultList;

    sget v2, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPoolIndex:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/providers/contacts/t9/T9MatchResultList;->sPoolIndex:I

    aput-object p0, v0, v2

    .line 117
    :cond_0
    monitor-exit v1

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized remove(Lcom/android/providers/contacts/t9/T9MatchResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9MatchResultList;->sort()V

    .line 77
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/providers/contacts/t9/T9MatchResult;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, p1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 78
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 79
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 80
    invoke-virtual {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/providers/contacts/t9/T9Item;->isSPItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    iget v1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mSpCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mSpCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    monitor-exit p0

    return-void

    .line 76
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized sort()V
    .locals 4

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mInOrder:Z

    if-nez v2, :cond_0

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 104
    .local v0, timeStart:J
    iget-object v2, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/providers/contacts/t9/T9MatchResult;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 105
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mInOrder:Z

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sort results for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9MatchResultList;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v0           #timeStart:J
    :cond_0
    monitor-exit p0

    return-void

    .line 102
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
