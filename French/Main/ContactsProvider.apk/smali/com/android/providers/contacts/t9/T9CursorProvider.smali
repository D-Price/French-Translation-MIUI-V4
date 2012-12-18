.class public Lcom/android/providers/contacts/t9/T9CursorProvider;
.super Ljava/lang/Object;
.source "T9CursorProvider.java"

# interfaces
.implements Lcom/android/providers/contacts/t9/DataCursor$DataProvider;


# static fields
.field private static final EMPTY_RESULT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/t9/T9MatchResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCallLogItemInsertPosition:I

.field private mCallLogItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/t9/T9CallLogItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCount:I

.field private mExtras:Landroid/os/Bundle;

.field private mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/t9/T9MatchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/providers/contacts/t9/T9CursorProvider;->EMPTY_RESULT:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/android/providers/contacts/t9/T9CursorProvider;->EMPTY_RESULT:Ljava/util/List;

    iput-object v0, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mResults:Ljava/util/List;

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/providers/contacts/t9/T9MatchResultList;Ljava/util/List;)V
    .locals 5
    .parameter "key"
    .parameter "matchResults"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/providers/contacts/t9/T9MatchResultList;",
            "Ljava/util/List",
            "<",
            "Lcom/android/providers/contacts/t9/T9CallLogItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, callLogItems:Ljava/util/List;,"Ljava/util/List<Lcom/android/providers/contacts/t9/T9CallLogItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 43
    .local v1, timeStart:J
    iput-object p1, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mSearchKey:Ljava/lang/String;

    .line 44
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/android/providers/contacts/t9/T9MatchResultList;->getResults(Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mResults:Ljava/util/List;

    .line 45
    iput-object p3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCallLogItems:Ljava/util/List;

    .line 46
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/providers/contacts/t9/T9MatchResultList;->getSpCount()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v0, v3, -0x1

    .line 47
    .local v0, countOfNormalItems:I
    sget-boolean v3, Lcom/android/providers/contacts/t9/T9Utils;->sIsSpItemVisibile:Z

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/android/providers/contacts/t9/T9MatchResultList;->getSpCount()I

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v0

    invoke-static {v3}, Lcom/android/providers/contacts/t9/T9CursorProvider;->createContactSPDividerPosExtra(I)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mExtras:Landroid/os/Bundle;

    .line 49
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mResults:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCount:I

    .line 53
    :goto_0
    iget v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCount:I

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCount:I

    .line 54
    iput v0, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCallLogItemInsertPosition:I

    .line 55
    const-string v3, "build t9 cursor provider"

    invoke-static {v1, v2, v3}, Lcom/android/providers/contacts/t9/T9Utils;->plog(JLjava/lang/String;)V

    .line 56
    return-void

    .line 51
    :cond_0
    iput v0, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCount:I

    goto :goto_0
.end method

.method private static createContactSPDividerPosExtra(I)Landroid/os/Bundle;
    .locals 2
    .parameter "pos"

    .prologue
    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "contact_sp_divider_pos_in_t9_cursor"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    return-object v0
.end method

.method private fill(Landroid/database/CursorWindow;IILcom/android/providers/contacts/t9/T9MatchResult;)V
    .locals 6
    .parameter "window"
    .parameter "row"
    .parameter "columnSize"
    .parameter "result"

    .prologue
    const-wide/16 v4, 0x0

    .line 86
    invoke-virtual {p4}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v1

    .line 87
    .local v1, item:Lcom/android/providers/contacts/t9/T9Item;
    const/4 v0, 0x0

    .local v0, column:I
    :goto_0
    if-ge v0, p3, :cond_7

    .line 88
    packed-switch v0, :pswitch_data_0

    .line 155
    :pswitch_0
    invoke-virtual {p1, p2, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    .line 87
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :pswitch_1
    iget-wide v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    invoke-virtual {p1, v2, v3, p2, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 95
    :pswitch_2
    iget-object v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 98
    :cond_0
    iget-object v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v2, p2, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    goto :goto_1

    .line 103
    :pswitch_3
    iget-object v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mData:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 104
    invoke-virtual {p1, p2, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 106
    :cond_1
    iget-object v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mData:Ljava/lang/String;

    invoke-virtual {p1, v2, p2, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    goto :goto_1

    .line 111
    :pswitch_4
    iget-wide v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mPhotoId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 114
    :cond_2
    iget-wide v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mPhotoId:J

    invoke-virtual {p1, v2, v3, p2, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 119
    :pswitch_5
    instance-of v2, p4, Lcom/android/providers/contacts/t9/T9NameMatchResult;

    if-eqz v2, :cond_3

    .line 120
    iget-wide v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mKeyType:J

    invoke-virtual {p1, v2, v3, p2, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 122
    :cond_3
    invoke-virtual {p1, v4, v5, p2, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 127
    :pswitch_6
    invoke-virtual {p4}, Lcom/android/providers/contacts/t9/T9MatchResult;->getMatchDetail()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 128
    invoke-virtual {p1, p2, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 130
    :cond_4
    invoke-virtual {p4}, Lcom/android/providers/contacts/t9/T9MatchResult;->getMatchDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    goto :goto_1

    .line 135
    :pswitch_7
    invoke-virtual {p4}, Lcom/android/providers/contacts/t9/T9MatchResult;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    .line 136
    invoke-virtual {p1, p2, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 138
    :cond_5
    invoke-virtual {p4}, Lcom/android/providers/contacts/t9/T9MatchResult;->getDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, p2, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    goto :goto_1

    .line 143
    :pswitch_8
    iget-object v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 144
    invoke-virtual {p1, p2, v0}, Landroid/database/CursorWindow;->putNull(II)Z

    goto :goto_1

    .line 146
    :cond_6
    iget-object v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mNormalizedData:Ljava/lang/String;

    invoke-virtual {p1, v2, p2, v0}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    goto :goto_1

    .line 151
    :pswitch_9
    iget-wide v2, v1, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    invoke-virtual {p1, v2, v3, p2, v0}, Landroid/database/CursorWindow;->putLong(JII)Z

    goto :goto_1

    .line 159
    :cond_7
    return-void

    .line 88
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public fillWindow(Lcom/android/providers/contacts/t9/DataCursor;ILandroid/database/CursorWindow;)I
    .locals 5
    .parameter "cursor"
    .parameter "startPos"
    .parameter "window"

    .prologue
    .line 65
    move v1, p2

    .local v1, row:I
    iget v2, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCount:I

    .local v2, rowSize:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 66
    invoke-virtual {p3}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 82
    :cond_0
    iget v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCount:I

    return v3

    .line 70
    :cond_1
    move v0, v1

    .line 71
    .local v0, index:I
    iget v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCallLogItemInsertPosition:I

    if-lt v1, v3, :cond_2

    iget v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCallLogItemInsertPosition:I

    iget-object v4, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCallLogItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_2

    .line 72
    iget v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCallLogItemInsertPosition:I

    sub-int v0, v1, v3

    .line 73
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9CursorProvider;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCallLogItems:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/t9/T9CallLogItem;

    invoke-static {p3, v1, v4, v3}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->fill(Landroid/database/CursorWindow;IILcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_2
    iget v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCallLogItemInsertPosition:I

    iget-object v4, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCallLogItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    if-lt v1, v3, :cond_3

    .line 76
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mCallLogItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v0, v1, v3

    .line 78
    :cond_3
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9CursorProvider;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mResults:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/contacts/t9/T9MatchResult;

    invoke-direct {p0, p3, v1, v4, v3}, Lcom/android/providers/contacts/t9/T9CursorProvider;->fill(Landroid/database/CursorWindow;IILcom/android/providers/contacts/t9/T9MatchResult;)V

    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CursorProvider;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public onClose(Lcom/android/providers/contacts/t9/DataCursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 163
    return-void
.end method

.method public requery(Lcom/android/providers/contacts/t9/DataCursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
