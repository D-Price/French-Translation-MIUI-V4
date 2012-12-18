.class public Lcom/android/providers/contacts/t9/DataCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "DataCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/contacts/t9/DataCursor$DataProvider;
    }
.end annotation


# instance fields
.field private mColumnNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private final mName:Ljava/lang/String;

.field private final mProvider:Lcom/android/providers/contacts/t9/DataCursor$DataProvider;

.field private final mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/providers/contacts/t9/DataCursor$DataProvider;Ljava/lang/String;)V
    .locals 2
    .parameter "query"
    .parameter "provider"
    .parameter "name"

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/t9/DataCursor;->mCount:I

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "query object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    if-nez p2, :cond_1

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "provider object cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_1
    invoke-interface {p2}, Lcom/android/providers/contacts/t9/DataCursor$DataProvider;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/android/providers/contacts/t9/DataCursor$DataProvider;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "columns object cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_3
    iput-object p2, p0, Lcom/android/providers/contacts/t9/DataCursor;->mProvider:Lcom/android/providers/contacts/t9/DataCursor$DataProvider;

    .line 50
    iput-object p1, p0, Lcom/android/providers/contacts/t9/DataCursor;->mQuery:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/android/providers/contacts/t9/DataCursor;->mName:Ljava/lang/String;

    .line 52
    invoke-interface {p2}, Lcom/android/providers/contacts/t9/DataCursor$DataProvider;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/t9/DataCursor;->setExtras(Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method private fillWindow(I)V
    .locals 7
    .parameter "startPos"

    .prologue
    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 154
    .local v1, start:J
    iget-object v3, p0, Lcom/android/providers/contacts/t9/DataCursor;->mName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/providers/contacts/t9/DataCursor;->clearOrCreateWindow(Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v3}, Landroid/database/CursorWindow;->acquireReference()V

    .line 157
    :try_start_0
    iget-object v3, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    iget-object v4, p0, Lcom/android/providers/contacts/t9/DataCursor;->mProvider:Lcom/android/providers/contacts/t9/DataCursor$DataProvider;

    invoke-interface {v4}, Lcom/android/providers/contacts/t9/DataCursor$DataProvider;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v4}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    .line 158
    iget-object v3, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v3, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 159
    iget-object v3, p0, Lcom/android/providers/contacts/t9/DataCursor;->mProvider:Lcom/android/providers/contacts/t9/DataCursor$DataProvider;

    iget-object v4, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-interface {v3, p0, p1, v4}, Lcom/android/providers/contacts/t9/DataCursor$DataProvider;->fillWindow(Lcom/android/providers/contacts/t9/DataCursor;ILandroid/database/CursorWindow;)I

    move-result v0

    .line 160
    .local v0, count:I
    if-nez p1, :cond_0

    .line 161
    iput v0, p0, Lcom/android/providers/contacts/t9/DataCursor;->mCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v3}, Landroid/database/CursorWindow;->releaseReference()V

    .line 168
    .end local v0           #count:I
    :goto_0
    const-string v3, "DataCursor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]ms to fillWindow"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void

    .line 163
    :catch_0
    move-exception v3

    .line 166
    iget-object v3, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v3}, Landroid/database/CursorWindow;->releaseReference()V

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v4}, Landroid/database/CursorWindow;->releaseReference()V

    throw v3
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 95
    iget-object v0, p0, Lcom/android/providers/contacts/t9/DataCursor;->mProvider:Lcom/android/providers/contacts/t9/DataCursor$DataProvider;

    invoke-interface {v0, p0}, Lcom/android/providers/contacts/t9/DataCursor$DataProvider;->onClose(Lcom/android/providers/contacts/t9/DataCursor;)V

    .line 96
    return-void
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/DataCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/DataCursor;->close()V

    .line 136
    const-string v0, "DataCursor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing data cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/contacts/t9/DataCursor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", which hass not been deactived or closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_0
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 142
    return-void

    .line 140
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 6
    .parameter "columnName"

    .prologue
    .line 79
    iget-object v4, p0, Lcom/android/providers/contacts/t9/DataCursor;->mColumnNameMap:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 80
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/DataCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, columnNames:[Ljava/lang/String;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 82
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v0

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 83
    aget-object v4, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iput-object v3, p0, Lcom/android/providers/contacts/t9/DataCursor;->mColumnNameMap:Ljava/util/HashMap;

    .line 88
    .end local v0           #columnNames:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v4, p0, Lcom/android/providers/contacts/t9/DataCursor;->mColumnNameMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 89
    .local v1, i:Ljava/lang/Integer;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_1
    return v4

    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/providers/contacts/t9/DataCursor;->mProvider:Lcom/android/providers/contacts/t9/DataCursor$DataProvider;

    invoke-interface {v0}, Lcom/android/providers/contacts/t9/DataCursor$DataProvider;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 66
    iget v0, p0, Lcom/android/providers/contacts/t9/DataCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/t9/DataCursor;->fillWindow(I)V

    .line 69
    :cond_0
    iget v0, p0, Lcom/android/providers/contacts/t9/DataCursor;->mCount:I

    return v0
.end method

.method public onDataChanged()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/providers/contacts/t9/DataCursor;->onChange(Z)V

    .line 150
    return-void
.end method

.method public onMove(II)Z
    .locals 2
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 59
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/t9/DataCursor;->fillWindow(I)V

    .line 61
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public requery()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/DataCursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    :goto_0
    return v1

    .line 104
    :cond_0
    monitor-enter p0

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/providers/contacts/t9/DataCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v2}, Landroid/database/CursorWindow;->clear()V

    .line 108
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/providers/contacts/t9/DataCursor;->mPos:I

    .line 109
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/providers/contacts/t9/DataCursor;->mCount:I

    .line 111
    iget-object v2, p0, Lcom/android/providers/contacts/t9/DataCursor;->mProvider:Lcom/android/providers/contacts/t9/DataCursor$DataProvider;

    invoke-interface {v2, p0}, Lcom/android/providers/contacts/t9/DataCursor$DataProvider;->requery(Lcom/android/providers/contacts/t9/DataCursor;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    monitor-exit p0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    const/4 v1, 0x0

    .line 118
    .local v1, result:Z
    :try_start_2
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "DataCursor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requery() failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->setWindow(Landroid/database/CursorWindow;)V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/contacts/t9/DataCursor;->mCount:I

    .line 129
    return-void
.end method
