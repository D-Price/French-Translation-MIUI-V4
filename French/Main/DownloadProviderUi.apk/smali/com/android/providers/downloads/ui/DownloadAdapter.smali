.class public Lcom/android/providers/downloads/ui/DownloadAdapter;
.super Landroid/widget/CursorAdapter;
.source "DownloadAdapter.java"


# instance fields
.field private final mAllowedNetworkTypesColumnId:I

.field private final mBypassSizeLimitColumnId:I

.field private final mCurrentBytesColumnId:I

.field private mCursor:Landroid/database/Cursor;

.field private final mDateColumnId:I

.field private mDateFormat:Ljava/text/DateFormat;

.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

.field private mDownloadManager:Landroid/app/MiuiDownloadManager;

.field private final mFileNameColumnId:I

.field private final mIdColumnId:I

.field private final mMediaTypeColumnId:I

.field private final mReasonColumnId:I

.field private mResources:Landroid/content/res/Resources;

.field private final mStatusColumnId:I

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final mTitleColumnId:I

.field private final mTotalBytesColumnId:I


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/database/Cursor;)V
    .locals 2
    .parameter "downloadList"
    .parameter "cursor"

    .prologue
    const/4 v1, 0x3

    .line 77
    invoke-virtual {p1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 78
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    .line 79
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    .line 80
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    .line 81
    invoke-static {v1}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    .line 82
    invoke-static {v1}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    .line 84
    const-string v0, "_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    .line 85
    const-string v0, "title"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTitleColumnId:I

    .line 86
    const-string v0, "status"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    .line 87
    const-string v0, "reason"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    .line 88
    const-string v0, "total_size"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    .line 89
    const-string v0, "media_type"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    .line 90
    const-string v0, "last_modified_timestamp"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateColumnId:I

    .line 92
    const-string v0, "local_filename"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mFileNameColumnId:I

    .line 94
    const-string v0, "bytes_so_far"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCurrentBytesColumnId:I

    .line 96
    const-string v0, "allowed_network_types"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mAllowedNetworkTypesColumnId:I

    .line 97
    const-string v0, "bypass_recommended_size_limit"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mBypassSizeLimitColumnId:I

    .line 99
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/MiuiDownloadManager;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    .line 100
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/MiuiDownloadManager;->setAccessAllDownloads(Z)V

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/ui/DownloadAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mBypassSizeLimitColumnId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/DownloadAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mAllowedNetworkTypesColumnId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/ui/DownloadAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/app/MiuiDownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getDateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 240
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateColumnId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 241
    .local v0, date:Ljava/util/Date;
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStartOfToday()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 244
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTimeFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getSizeText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 258
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 259
    .local v1, totalBytes:J
    const-string v0, ""

    .line 260
    .local v0, sizeText:Ljava/lang/String;
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    .line 261
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v2}, Lmiui/text/util/MiuiFormatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_0
    return-object v0
.end method

.method private getStartOfToday()Ljava/util/Date;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 250
    .local v0, today:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private getStatusStringId()I
    .locals 6

    .prologue
    const v2, 0x7f090009

    .line 267
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 303
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :sswitch_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 270
    .local v0, failReason:I
    packed-switch v0, :pswitch_data_0

    .line 274
    const v2, 0x7f09000b

    .line 300
    .end local v0           #failReason:I
    :goto_0
    :sswitch_1
    return v2

    .line 272
    .restart local v0       #failReason:I
    :pswitch_0
    const v2, 0x7f09000c

    goto :goto_0

    .line 278
    .end local v0           #failReason:I
    :sswitch_2
    const v2, 0x7f09000a

    goto :goto_0

    .line 281
    :sswitch_3
    const v2, 0x7f090024

    goto :goto_0

    .line 287
    :sswitch_4
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mReasonColumnId:I

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 288
    .local v1, reason:I
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 296
    :pswitch_1
    const v2, 0x7f090031

    goto :goto_0

    .line 290
    :pswitch_2
    const v2, 0x7f09002e

    goto :goto_0

    .line 292
    :pswitch_3
    const v2, 0x7f09002f

    goto :goto_0

    .line 294
    :pswitch_4
    const v2, 0x7f090030

    goto :goto_0

    .line 298
    :pswitch_5
    const v2, 0x7f090032

    goto :goto_0

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_1
        0x4 -> :sswitch_4
        0x8 -> :sswitch_2
        0x10 -> :sswitch_0
    .end sparse-switch

    .line 270
    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_0
    .end packed-switch

    .line 288
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private retrieveAndSetIcon(Landroid/view/View;)V
    .locals 10
    .parameter "convertView"

    .prologue
    const/4 v9, 0x0

    .line 307
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    iget v7, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 308
    .local v4, mediaType:Ljava/lang/String;
    const v6, 0x7f0c0006

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 309
    .local v1, iconView:Landroid/widget/ImageView;
    const/4 v6, 0x4

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 311
    if-nez v4, :cond_0

    .line 328
    :goto_0
    return-void

    .line 315
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 316
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "file"

    const-string v7, ""

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    iget-object v6, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 318
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/high16 v6, 0x1

    invoke-virtual {v5, v2, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 320
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 322
    const v6, 0x7f020003

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    :goto_1
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 324
    :cond_1
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v5}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 325
    .local v0, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private setTextForView(Landroid/view/View;ILjava/lang/String;)V
    .locals 2
    .parameter "parent"
    .parameter "textViewId"
    .parameter "text"

    .prologue
    .line 331
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 332
    .local v0, view:Landroid/widget/TextView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .locals 24
    .parameter "convertView"
    .parameter "position"

    .prologue
    .line 111
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/providers/downloads/ui/DownloadItem;

    if-nez v2, :cond_0

    .line 237
    .end local p1
    :goto_0
    return-void

    .line 115
    .restart local p1
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .local v3, downloadId:J
    move-object/from16 v2, p1

    .line 116
    check-cast v2, Lcom/android/providers/downloads/ui/DownloadItem;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mFileNameColumnId:I

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mMediaTypeColumnId:I

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/providers/downloads/ui/DownloadItem;->setData(JILjava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-direct/range {p0 .. p1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->retrieveAndSetIcon(Landroid/view/View;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 126
    .local v17, status:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTitleColumnId:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 127
    .local v18, title:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f090005

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 130
    :cond_1
    const v2, 0x7f0c0008

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 131
    .local v19, titleView:Landroid/widget/TextView;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    const/16 v2, 0x10

    move/from16 v0, v17

    if-ne v0, v2, :cond_6

    const v10, 0x607000f

    .line 133
    .local v10, colorRes:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v2, v0, :cond_2

    const/4 v2, 0x2

    move/from16 v0, v17

    if-eq v2, v0, :cond_2

    const/4 v2, 0x4

    move/from16 v0, v17

    if-ne v2, v0, :cond_9

    .line 138
    :cond_2
    const v2, 0x7f0c0009

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 141
    .local v20, totalBytes:J
    const-wide/16 v5, 0x0

    cmp-long v2, v20, v5

    if-gez v2, :cond_3

    .line 142
    const-wide/16 v20, 0x0

    .line 145
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mCurrentBytesColumnId:I

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 146
    .local v11, currentBytes:J
    const/4 v15, 0x0

    .line 147
    .local v15, progressAmount:I
    const-wide/16 v5, 0x0

    cmp-long v2, v20, v5

    if-lez v2, :cond_4

    const-wide/16 v5, 0x0

    cmp-long v2, v11, v5

    if-lez v2, :cond_4

    .line 148
    const-wide/16 v5, 0x64

    mul-long/2addr v5, v11

    div-long v5, v5, v20

    long-to-int v15, v5

    .line 151
    :cond_4
    const v2, 0x7f0c0009

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ProgressBar;

    .line 153
    .local v16, progressBar:Landroid/widget/ProgressBar;
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 156
    const/4 v2, 0x2

    move/from16 v0, v17

    if-eq v2, v0, :cond_5

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_8

    .line 158
    :cond_5
    const-wide/16 v5, 0x0

    cmp-long v2, v20, v5

    if-eqz v2, :cond_7

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v11

    div-long v5, v5, v20

    long-to-double v5, v5

    const-wide/high16 v22, 0x3ff0

    mul-double v13, v5, v22

    .line 159
    .local v13, percent:D
    :goto_2
    const v2, 0x7f0c000b

    const-string v5, "%.1f%%"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 168
    .end local v11           #currentBytes:J
    .end local v13           #percent:D
    .end local v15           #progressAmount:I
    .end local v16           #progressBar:Landroid/widget/ProgressBar;
    .end local v20           #totalBytes:J
    :goto_3
    const v2, 0x7f0c000a

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getSizeText()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 171
    const v2, 0x7f0c000e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 172
    .local v8, actionButton:Landroid/widget/TextView;
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadAdapter$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/providers/downloads/ui/DownloadAdapter$1;-><init>(Lcom/android/providers/downloads/ui/DownloadAdapter;)V

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    const v2, 0x7f0c000d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 205
    .local v9, actionLayout:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 206
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 222
    const v2, 0x7f0c000c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isEditable()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v2, p1

    .line 232
    check-cast v2, Lcom/android/providers/downloads/ui/DownloadItem;

    invoke-virtual {v2}, Lcom/android/providers/downloads/ui/DownloadItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v5, v3, v4}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isDownloadSelected(J)Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 233
    check-cast p1, Lcom/android/providers/downloads/ui/DownloadItem;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/downloads/ui/DownloadItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0

    .line 132
    .end local v8           #actionButton:Landroid/widget/TextView;
    .end local v9           #actionLayout:Landroid/view/View;
    .end local v10           #colorRes:I
    .restart local p1
    :cond_6
    const v10, 0x1060003

    goto/16 :goto_1

    .line 158
    .restart local v10       #colorRes:I
    .restart local v11       #currentBytes:J
    .restart local v15       #progressAmount:I
    .restart local v16       #progressBar:Landroid/widget/ProgressBar;
    .restart local v20       #totalBytes:J
    :cond_7
    const-wide/16 v13, 0x0

    goto/16 :goto_2

    .line 161
    :cond_8
    const v2, 0x7f0c000b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStatusStringId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 164
    .end local v11           #currentBytes:J
    .end local v15           #progressAmount:I
    .end local v16           #progressBar:Landroid/widget/ProgressBar;
    .end local v20           #totalBytes:J
    :cond_9
    const v2, 0x7f0c0009

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 165
    const v2, 0x7f0c000b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mResources:Landroid/content/res/Resources;

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getStatusStringId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    goto/16 :goto_3

    .line 207
    .restart local v8       #actionButton:Landroid/widget/TextView;
    .restart local v9       #actionLayout:Landroid/view/View;
    :cond_a
    const/4 v2, 0x2

    move/from16 v0, v17

    if-eq v2, v0, :cond_b

    const/4 v2, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_c

    .line 208
    :cond_b
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 209
    const v2, 0x7f09002a

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 210
    :cond_c
    const/4 v2, 0x4

    move/from16 v0, v17

    if-ne v2, v0, :cond_d

    .line 211
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 212
    const v2, 0x7f09002b

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 213
    :cond_d
    const/16 v2, 0x10

    move/from16 v0, v17

    if-ne v2, v0, :cond_e

    .line 214
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    const v2, 0x7f09002c

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_4

    .line 217
    :cond_e
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 223
    :cond_f
    const/16 v2, 0x8

    move/from16 v0, v17

    if-ne v2, v0, :cond_10

    .line 224
    const v2, 0x7f0c000c

    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->getDateString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v5}, Lcom/android/providers/downloads/ui/DownloadAdapter;->setTextForView(Landroid/view/View;ILjava/lang/String;)V

    .line 225
    const v2, 0x7f0c000c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 227
    :cond_10
    const v2, 0x7f0c000c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 235
    :cond_11
    check-cast p1, Lcom/android/providers/downloads/ui/DownloadItem;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/android/providers/downloads/ui/DownloadItem;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v2

    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 345
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->bindView(Landroid/view/View;I)V

    .line 346
    return-void
.end method

.method public newView()Landroid/view/View;
    .locals 4

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadItem;

    .line 106
    .local v0, view:Lcom/android/providers/downloads/ui/DownloadItem;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadItem;->setDownloadListObj(Lcom/android/providers/downloads/ui/DownloadListFragment;)V

    .line 107
    return-object v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->newView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
