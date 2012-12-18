.class public Lcom/android/providers/downloads/ui/DownloadListFragment;
.super Landroid/app/Fragment;
.source "DownloadListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;,
        Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;,
        Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;,
        Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;
    }
.end annotation


# static fields
.field private static INSTANCE_STATE_FILTER_POSITION:Ljava/lang/String;

.field private static STATUS_NONE:I


# instance fields
.field private mContentObserver:Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;

.field private mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;

.field private mDateOrderedListView:Landroid/widget/EditableListView;

.field private mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

.field private mDateSortedCursor:Landroid/database/Cursor;

.field private mDownloadInWifi:Lmiui/widget/SlidingButton;

.field private mDownloadInWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mDownloadManager:Landroid/app/MiuiDownloadManager;

.field private mDownloadOnlyInWifiMenu:Landroid/view/MenuItem;

.field private mFileNameColumnId:I

.field private mFilterPackageName:Ljava/lang/String;

.field private mFilterPosition:I

.field private mIdColumnId:I

.field private mIsDateSortedCursorRegistered:Z

.field private mLocalUriColumnId:I

.field private mMediaTypeColumnId:I

.field private mModeCallback:Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;

.field private mNotificationClassColumnId:I

.field private mNotificationColumnsInitialized:Z

.field private mNotificationExtrasColumnId:I

.field private mNotificationPackageColumnId:I

.field private mQueuedDialog:Landroid/app/AlertDialog;

.field private mQueuedDownloadId:Ljava/lang/Long;

.field private mReasonColumnId:I

.field private final mSelectedIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;",
            ">;"
        }
    .end annotation
.end field

.field private mStatusColumnId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, -0x1

    sput v0, Lcom/android/providers/downloads/ui/DownloadListFragment;->STATUS_NONE:I

    .line 117
    const-string v0, "FILTER_POSITION"

    sput-object v0, Lcom/android/providers/downloads/ui/DownloadListFragment;->INSTANCE_STATE_FILTER_POSITION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 94
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    .line 95
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 98
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    .line 101
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mModeCallback:Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;

    .line 102
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;

    .line 103
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;Lcom/android/providers/downloads/ui/DownloadListFragment$1;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;

    .line 114
    iput-boolean v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mNotificationColumnsInitialized:Z

    .line 118
    iput v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFilterPosition:I

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    .line 145
    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mQueuedDownloadId:Ljava/lang/Long;

    .line 324
    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadListFragment;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/ui/DownloadListFragment;)Landroid/app/MiuiDownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/providers/downloads/ui/DownloadListFragment;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mQueuedDownloadId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mQueuedDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/providers/downloads/ui/DownloadListFragment;Z[Ljava/lang/Long;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->doDeleteDownloads(Z[Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadListFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->invalidateListView()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadListFragment;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->handleItemClick(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/view/ActionMode;[Ljava/lang/Long;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->deleteDownloadsDialog(Landroid/view/ActionMode;[Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/ui/DownloadListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIdColumnId:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/ui/DownloadListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFileNameColumnId:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/ui/DownloadListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mMediaTypeColumnId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/ui/DownloadListFragment;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/ui/DownloadListFragment;->deleteDownload(JZ)V

    return-void
.end method

.method private checkSelectionForDeletedEntries()V
    .locals 4

    .prologue
    .line 929
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 930
    .local v0, allIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 932
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 931
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 936
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 937
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 938
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 941
    :cond_2
    return-void
.end method

.method private createTheTabCursor(I)Landroid/database/Cursor;
    .locals 10
    .parameter "status"

    .prologue
    const/4 v9, 0x2

    .line 256
    new-instance v0, Landroid/app/MiuiDownloadManager$Query;

    invoke-direct {v0}, Landroid/app/MiuiDownloadManager$Query;-><init>()V

    .line 257
    .local v0, baseQuery:Landroid/app/MiuiDownloadManager$Query;
    const-string v5, "_id"

    invoke-virtual {v0, v5, v9}, Landroid/app/MiuiDownloadManager$Query;->orderBy(Ljava/lang/String;I)Landroid/app/MiuiDownloadManager$Query;

    .line 258
    sget v5, Lcom/android/providers/downloads/ui/DownloadListFragment;->STATUS_NONE:I

    if-eq p1, v5, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Landroid/app/MiuiDownloadManager$Query;->setFilterByStatus(I)Landroid/app/DownloadManager$Query;

    .line 263
    :cond_0
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFilterPackageName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 264
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFilterPackageName:Ljava/lang/String;

    const-string v6, "*others*"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 265
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, packageNames:[Ljava/lang/CharSequence;
    const/4 v4, 0x0

    .line 269
    .local v4, where:Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_2

    .line 270
    const-string v5, "%s<>\'%s\'"

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "notificationpackage"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aget-object v8, v3, v2

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, clause:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 274
    move-object v4, v1

    .line 269
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 279
    .end local v1           #clause:Ljava/lang/String;
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 280
    invoke-virtual {v0, v4}, Landroid/app/MiuiDownloadManager$Query;->setFilterByAppendedClause(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Query;

    .line 287
    .end local v2           #i:I
    .end local v3           #packageNames:[Ljava/lang/CharSequence;
    .end local v4           #where:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    invoke-virtual {v5, v0}, Landroid/app/MiuiDownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v5

    return-object v5

    .line 283
    :cond_4
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFilterPackageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/app/MiuiDownloadManager$Query;->setFilterByNotificationPackage(Ljava/lang/String;)Landroid/app/MiuiDownloadManager$Query;

    goto :goto_2
.end method

.method private deleteDownload(JZ)V
    .locals 12
    .parameter "downloadId"
    .parameter "deleteFile"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 826
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 827
    .local v1, downloadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 828
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 866
    :goto_0
    return-void

    .line 831
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 832
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 837
    :cond_1
    const/4 v8, -0x1

    .line 838
    .local v8, status:I
    const/4 v7, 0x0

    .line 839
    .local v7, localUri:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    new-array v3, v11, [J

    aput-wide p1, v3, v10

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/MiuiDownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v9

    .line 840
    .local v9, translator:Landroid/database/Cursor;
    if-eqz v9, :cond_3

    .line 841
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 842
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mStatusColumnId:I

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 843
    const-string v0, "local_uri"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 844
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v7

    .line 845
    invoke-static {v7}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 847
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 850
    :cond_3
    if-eqz p3, :cond_6

    .line 851
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    new-array v2, v11, [J

    aput-wide p1, v2, v10

    invoke-virtual {v0, v2}, Landroid/app/MiuiDownloadManager;->markRowDeleted([J)I

    .line 856
    :goto_1
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mNotificationColumnsInitialized:Z

    if-nez v0, :cond_4

    .line 857
    invoke-direct {p0, v6}, Lcom/android/providers/downloads/ui/DownloadListFragment;->initNotificationColumnIds(Landroid/database/Cursor;)V

    .line 862
    :cond_4
    const/4 v0, 0x2

    if-eq v8, v0, :cond_5

    .line 863
    invoke-direct {p0, v6, v7, p1, p2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->sendIntentAfterDeleting(Landroid/database/Cursor;Ljava/lang/String;J)V

    .line 865
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 853
    :cond_6
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    new-array v2, v11, [J

    aput-wide p1, v2, v10

    invoke-virtual {v0, v2}, Landroid/app/MiuiDownloadManager;->removeRecordOnly([J)I

    goto :goto_1
.end method

.method private varargs deleteDownloadsDialog(Landroid/view/ActionMode;[Ljava/lang/Long;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f090019

    const/4 v1, 0x1

    .line 746
    array-length v0, p2

    if-gtz v0, :cond_0

    .line 772
    :goto_0
    return-void

    .line 749
    :cond_0
    array-length v0, p2

    if-le v0, v1, :cond_1

    const v0, 0x7f090033

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 752
    :goto_1
    new-instance v1, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 753
    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 755
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1010355

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadListFragment$6;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/providers/downloads/ui/DownloadListFragment$6;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/view/ActionMode;Landroid/widget/CheckBox;[Ljava/lang/Long;)V

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 771
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 749
    :cond_1
    const v0, 0x7f090034

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private varargs doDeleteDownloads(Z[Ljava/lang/Long;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 775
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 776
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 778
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 779
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 780
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 782
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadListFragment$7;

    invoke-direct {v1, p0, p2, p1, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment$7;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;[Ljava/lang/Long;ZLandroid/app/ProgressDialog;)V

    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 818
    return-void
.end method

.method private findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1023
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 1024
    if-eqz v0, :cond_0

    .line 1039
    :goto_0
    return-object v0

    .line 1029
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1031
    const/4 v3, 0x0

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1033
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->findCommonString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 1034
    if-eqz v0, :cond_2

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1039
    :cond_2
    const-string v0, "*/*"

    goto :goto_0
.end method

.method private findCommonString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1042
    .local p1, set:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 1043
    .local v3, str:Ljava/lang/String;
    const/4 v0, 0x1

    .line 1044
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1045
    .local v2, s:Ljava/lang/String;
    if-nez v3, :cond_1

    .line 1046
    move-object v3, v2

    goto :goto_0

    .line 1047
    :cond_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1048
    const/4 v0, 0x0

    .line 1052
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .end local v3           #str:Ljava/lang/String;
    :goto_1
    return-object v3

    .restart local v3       #str:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 568
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadListFragment$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadListFragment$3;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;J)V

    return-object v0
.end method

.method private getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .parameter "cursor"

    .prologue
    .line 660
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mReasonColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 684
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 662
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 667
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getUnknownErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 671
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isOnExternalStorage(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 674
    :cond_1
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 678
    :pswitch_2
    const v0, 0x7f090016

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 681
    :pswitch_3
    const v0, 0x7f090014

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 660
    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "fileName"

    .prologue
    const/4 v1, 0x0

    .line 1055
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1064
    :cond_0
    :goto_0
    return-object v0

    .line 1059
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1060
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1061
    goto :goto_0
.end method

.method private getFilterStatusViaPosition()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFilterPosition:I

    packed-switch v0, :pswitch_data_0

    .line 241
    sget v0, Lcom/android/providers/downloads/ui/DownloadListFragment;->STATUS_NONE:I

    :goto_0
    return v0

    .line 232
    :pswitch_0
    sget v0, Lcom/android/providers/downloads/ui/DownloadListFragment;->STATUS_NONE:I

    goto :goto_0

    .line 234
    :pswitch_1
    const/16 v0, 0x8

    goto :goto_0

    .line 236
    :pswitch_2
    const/16 v0, 0x17

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .parameter "downloadId"

    .prologue
    .line 580
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadListFragment$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadListFragment$4;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;J)V

    return-object v0
.end method

.method private getUnknownErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 703
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleItemClick(Landroid/database/Cursor;)V
    .locals 5
    .parameter "cursor"

    .prologue
    .line 615
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIdColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v0, v2

    .line 616
    .local v0, id:J
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mStatusColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 654
    :goto_0
    return-void

    .line 619
    :sswitch_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 623
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mQueuedDownloadId:Ljava/lang/Long;

    .line 625
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090010

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090018

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/providers/downloads/ui/DownloadListFragment$5;

    invoke-direct {v3, p0}, Lcom/android/providers/downloads/ui/DownloadListFragment$5;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mQueuedDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 642
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->sendRunningDownloadClickedBroadcast(J)V

    goto :goto_0

    .line 647
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->openCurrentDownload(Landroid/database/Cursor;)V

    goto :goto_0

    .line 651
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getErrorMessage(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_0

    .line 616
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
    .end sparse-switch
.end method

.method private hasCursors()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initDateSortedCursor()V
    .locals 2

    .prologue
    .line 291
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->hasCursors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIsDateSortedCursorRegistered:Z

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->unregisterCursor()V

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getFilterStatusViaPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->createTheTabCursor(I)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    .line 299
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->registerCursor()V

    .line 300
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 301
    return-void
.end method

.method private initNotificationColumnIds(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 893
    const-string v0, "notificationpackage"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mNotificationPackageColumnId:I

    .line 895
    const-string v0, "notificationclass"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mNotificationClassColumnId:I

    .line 897
    const-string v0, "notificationextras"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mNotificationExtrasColumnId:I

    .line 899
    return-void
.end method

.method private invalidateListView()V
    .locals 1

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->invalidateViews()V

    .line 480
    return-void
.end method

.method private isItemSharable(Ljava/lang/Long;)Z
    .locals 7
    .parameter "id"

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 968
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getFilterStatusViaPosition()I

    move-result v0

    .line 969
    .local v0, filterStatus:I
    if-ne v0, v6, :cond_0

    .line 976
    :goto_0
    return v2

    .line 971
    :cond_0
    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    :cond_1
    move v2, v3

    .line 973
    goto :goto_0

    .line 975
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/providers/downloads/ui/DownloadListFragment;->moveToDownload(J)Z

    .line 976
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mStatusColumnId:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v6, :cond_3

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1
.end method

.method private isOnExternalStorage(Landroid/database/Cursor;)Z
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x0

    .line 689
    iget v5, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mLocalUriColumnId:I

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, localUriString:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v4

    .line 693
    :cond_1
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 694
    .local v1, localUri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 697
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 698
    .local v3, path:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 699
    .local v0, externalRoot:Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    goto :goto_0
.end method

.method private isPausedForWifi(Landroid/database/Cursor;)Z
    .locals 2
    .parameter "cursor"

    .prologue
    .line 920
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mReasonColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveToDownload(J)Z
    .locals 2
    .parameter "downloadId"

    .prologue
    .line 948
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 950
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIdColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 951
    const/4 v0, 0x1

    .line 954
    :goto_1
    return v0

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 954
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private openCurrentDownload(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    .line 592
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mLocalUriColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 594
    .local v3, localUri:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 604
    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v2, intent:Landroid/content/Intent;
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mMediaTypeColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    const v4, 0x10000001

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 608
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 612
    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .line 595
    :catch_0
    move-exception v1

    .line 596
    .local v1, exc:Ljava/io/FileNotFoundException;
    const-string v4, "DownloadList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open download "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIdColumnId:I

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    iget v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIdColumnId:I

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const v6, 0x7f090011

    invoke-virtual {p0, v6}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/providers/downloads/ui/DownloadListFragment;->showFailedDialog(JLjava/lang/String;)V

    goto :goto_1

    .line 609
    .end local v1           #exc:Ljava/io/FileNotFoundException;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 610
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090017

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 600
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #intent:Landroid/content/Intent;
    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private registerCursor()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 424
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIsDateSortedCursorRegistered:Z

    .line 426
    return-void
.end method

.method private sendIntentAfterDeleting(Landroid/database/Cursor;Ljava/lang/String;J)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 869
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mNotificationPackageColumnId:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 870
    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mNotificationClassColumnId:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 871
    iget v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mNotificationExtrasColumnId:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 873
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DOWNLOAD_DELETED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 875
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 882
    const-string v0, "notificationextras"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    :cond_1
    const-string v0, "extra_download_id"

    invoke-virtual {v3, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 886
    if-eqz p2, :cond_2

    .line 887
    const-string v0, "local_uri"

    invoke-virtual {v3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 889
    :cond_2
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 890
    return-void

    .line 876
    :cond_3
    if-eqz v0, :cond_0

    .line 877
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private sendRunningDownloadClickedBroadcast(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 719
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.downloads"

    const-string v2, "com.android.providers.downloads.DownloadReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 723
    const-string v1, "multiple"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 724
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 725
    return-void
.end method

.method private setupViews()Landroid/view/View;
    .locals 4

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 307
    .local v0, root:Landroid/view/View;
    const v1, 0x7f0c0004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditableListView;

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    .line 308
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    const v2, 0x7f0c0005

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setEmptyView(Landroid/view/View;)V

    .line 309
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setChoiceMode(I)V

    .line 310
    new-instance v1, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-direct {v1, p0, v2}, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/widget/EditableListView;)V

    iput-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mModeCallback:Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;

    .line 311
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mModeCallback:Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;

    const/high16 v2, 0x7f0b

    invoke-virtual {v1, v2}, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->setSplitActionBarMenuId(I)V

    .line 312
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mModeCallback:Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setMultiChoiceModeListener(Landroid/widget/EditableListView$EditableListViewListener;)V

    .line 313
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadListFragment$1;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadListFragment$1;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 321
    return-object v0
.end method

.method private showFailedDialog(JLjava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "dialogBody"

    .prologue
    .line 707
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090019

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09001c

    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 713
    return-void
.end method

.method private unregisterCursor()V
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mContentObserver:Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 430
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDataSetObserver:Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIsDateSortedCursorRegistered:Z

    .line 432
    return-void
.end method


# virtual methods
.method public exitEditMode()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 253
    :cond_0
    return-void
.end method

.method getCurrentView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method handleDownloadsChanged()V
    .locals 2

    .prologue
    .line 909
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->checkSelectionForDeletedEntries()V

    .line 911
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mQueuedDownloadId:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mQueuedDownloadId:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->moveToDownload(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mStatusColumnId:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isPausedForWifi(Landroid/database/Cursor;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mQueuedDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 917
    :cond_1
    return-void
.end method

.method public isDownloadSelected(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEditable()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1069
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    move v0, v1

    .line 1070
    :goto_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "download_only_on_wifi"

    if-eqz v0, :cond_1

    :goto_1
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1072
    if-nez v0, :cond_2

    .line 1073
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 1074
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090022

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1080
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 1069
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1070
    goto :goto_1

    .line 1076
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1077
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    invoke-virtual {v1, v0}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 1078
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const v6, 0x7f0c0014

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x2

    .line 493
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 494
    const v2, 0x7f0b0001

    invoke-virtual {p2, v2, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 497
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadOnlyInWifiMenu:Landroid/view/MenuItem;

    .line 498
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 499
    .local v0, downloadInWifiView:Landroid/view/View;
    new-instance v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;

    invoke-direct {v1, v5, v5}, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 500
    .local v1, layoutParams:Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;
    const/16 v2, 0x15

    iput v2, v1, Lcom/android/internal/view/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 501
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    const v2, 0x7f0c0011

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/SlidingButton;

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    .line 503
    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "download_only_on_wifi"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lmiui/widget/SlidingButton;->setChecked(Z)V

    .line 505
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadListFragment$2;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadListFragment$2;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;)V

    iput-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 521
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifi:Lmiui/widget/SlidingButton;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadInWifiListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v2, v3}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 522
    return-void

    :cond_0
    move v2, v4

    .line 503
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    .line 177
    invoke-virtual {p0, v5}, Lcom/android/providers/downloads/ui/DownloadListFragment;->setHasOptionsMenu(Z)V

    .line 179
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->setupViews()Landroid/view/View;

    move-result-object v2

    .line 181
    .local v2, root:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "download"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/MiuiDownloadManager;

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    .line 182
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    invoke-virtual {v3, v5}, Landroid/app/MiuiDownloadManager;->setAccessAllDownloads(Z)V

    .line 186
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->initDateSortedCursor()V

    .line 187
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->hasCursors()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "status"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mStatusColumnId:I

    .line 190
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIdColumnId:I

    .line 192
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "local_uri"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mLocalUriColumnId:I

    .line 194
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "media_type"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mMediaTypeColumnId:I

    .line 196
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "reason"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mReasonColumnId:I

    .line 198
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    const-string v4, "local_filename"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFileNameColumnId:I

    .line 201
    new-instance v3, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/database/Cursor;)V

    iput-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 202
    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 206
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 207
    const-string v3, "argument_download_in_process"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 208
    .local v1, inProcess:Z
    if-eqz v1, :cond_2

    .line 209
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFilterPosition:I

    .line 217
    .end local v1           #inProcess:Z
    :cond_1
    :goto_0
    return-object v2

    .line 211
    .restart local v1       #inProcess:Z
    :cond_2
    iput v5, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFilterPosition:I

    goto :goto_0
.end method

.method public onDownloadSelectionChanged(JZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "downloadId"
    .parameter "isSelected"
    .parameter "fileName"
    .parameter "mimeType"

    .prologue
    .line 730
    if-eqz p3, :cond_0

    .line 731
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;

    invoke-direct {v2, p4, p5}, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 533
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 560
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 544
    goto :goto_0

    .line 547
    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 548
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 549
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    iget v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIdColumnId:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 551
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Long;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    invoke-direct {p0, v2, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->deleteDownloadsDialog(Landroid/view/ActionMode;[Ljava/lang/Long;)V

    move v0, v1

    .line 552
    goto :goto_0

    .line 555
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/providers/downloads/ui/DownloadingPreferenceActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 556
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    move v0, v1

    .line 557
    goto :goto_0

    .line 533
    :pswitch_data_0
    .packed-switch 0x7f0c0014
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 416
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 417
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->hasCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIsDateSortedCursorRegistered:Z

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->unregisterCursor()V

    .line 420
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 527
    invoke-super {p0, p1}, Landroid/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 528
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadOnlyInWifiMenu:Landroid/view/MenuItem;

    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFilterPosition:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 529
    return-void

    .line 528
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 408
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 409
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->hasCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mIsDateSortedCursorRegistered:Z

    if-nez v0, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->registerCursor()V

    .line 412
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 11
    .parameter "outState"

    .prologue
    .line 439
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 440
    sget-object v9, Lcom/android/providers/downloads/ui/DownloadListFragment;->INSTANCE_STATE_FILTER_POSITION:Ljava/lang/String;

    iget v10, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFilterPosition:I

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 441
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v5

    .line 442
    .local v5, len:I
    if-nez v5, :cond_0

    .line 459
    :goto_0
    return-void

    .line 445
    :cond_0
    new-array v8, v5, [J

    .line 446
    .local v8, selectedIds:[J
    new-array v0, v5, [Ljava/lang/String;

    .line 447
    .local v0, fileNames:[Ljava/lang/String;
    new-array v6, v5, [Ljava/lang/String;

    .line 448
    .local v6, mimeTypes:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 449
    .local v1, i:I
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 450
    .local v3, id:J
    aput-wide v3, v8, v1

    .line 451
    iget-object v9, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;

    .line 452
    .local v7, obj:Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v0, v1

    .line 453
    invoke-virtual {v7}, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v1

    .line 454
    add-int/lit8 v1, v1, 0x1

    .line 455
    goto :goto_1

    .line 456
    .end local v3           #id:J
    .end local v7           #obj:Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;
    :cond_1
    const-string v9, "download_ids"

    invoke-virtual {p1, v9, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 457
    const-string v9, "filenames"

    invoke-virtual {p1, v9, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 458
    const-string v9, "mimetypes"

    invoke-virtual {p1, v9, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFilterPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mFilterPackageName:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadManager:Landroid/app/MiuiDownloadManager;

    if-eqz v0, :cond_0

    .line 223
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->initDateSortedCursor()V

    .line 224
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    .line 225
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateOrderedListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    :cond_0
    return-void
.end method

.method public shareDownloadedFiles()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 986
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 987
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v7, :cond_4

    .line 988
    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 990
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 991
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 992
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;

    .line 993
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isItemSharable(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 996
    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 997
    new-instance v6, Ljava/io/File;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 998
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1000
    :cond_1
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1001
    invoke-direct {p0, v4}, Lcom/android/providers/downloads/ui/DownloadListFragment;->findCommonMimeType(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1014
    :cond_2
    const v0, 0x7f090020

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1015
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1016
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1017
    invoke-virtual {p0, v2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->startActivity(Landroid/content/Intent;)V

    .line 1019
    :cond_3
    return v7

    .line 1005
    :cond_4
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1006
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;

    .line 1007
    const-string v4, "android.intent.action.SEND"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    invoke-direct {p0, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isItemSharable(Ljava/lang/Long;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1009
    const-string v0, "android.intent.extra.STREAM"

    new-instance v4, Ljava/io/File;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1011
    :cond_5
    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method
