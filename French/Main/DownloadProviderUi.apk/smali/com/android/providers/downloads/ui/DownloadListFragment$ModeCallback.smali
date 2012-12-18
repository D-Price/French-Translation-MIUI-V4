.class Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;
.super Landroid/widget/EditableListView$EditableModeCallback;
.source "DownloadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeCallback"
.end annotation


# instance fields
.field private final mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/widget/EditableListView;)V
    .locals 1
    .parameter "downloadList"
    .parameter "listView"

    .prologue
    .line 328
    invoke-virtual {p1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/EditableListView$EditableModeCallback;-><init>(Landroid/app/Activity;Landroid/widget/EditableListView;)V

    .line 329
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    .line 330
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 339
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$100(Lcom/android/providers/downloads/ui/DownloadListFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 356
    :goto_0
    return v3

    .line 344
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->shareDownloadedFiles()Z

    goto :goto_0

    .line 346
    :pswitch_1
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$100(Lcom/android/providers/downloads/ui/DownloadListFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Long;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    #calls: Lcom/android/providers/downloads/ui/DownloadListFragment;->deleteDownloadsDialog(Landroid/view/ActionMode;[Ljava/lang/Long;)V
    invoke-static {v1, p1, v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$500(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/view/ActionMode;[Ljava/lang/Long;)V

    goto :goto_0

    .line 344
    nop

    :pswitch_data_0
    .packed-switch 0x7f0c0012
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 334
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$100(Lcom/android/providers/downloads/ui/DownloadListFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 335
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    .line 361
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 390
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 363
    :pswitch_0
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$100(Lcom/android/providers/downloads/ui/DownloadListFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$300(Lcom/android/providers/downloads/ui/DownloadListFragment;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 365
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$300(Lcom/android/providers/downloads/ui/DownloadListFragment;)Landroid/database/Cursor;

    move-result-object v0

    .line 366
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_2

    .line 367
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mIdColumnId:I
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$600(Lcom/android/providers/downloads/ui/DownloadListFragment;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 368
    .local v2, id:Ljava/lang/Long;
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$100(Lcom/android/providers/downloads/ui/DownloadListFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 369
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mFileNameColumnId:I
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$700(Lcom/android/providers/downloads/ui/DownloadListFragment;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 370
    .local v1, fileName:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mMediaTypeColumnId:I
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$800(Lcom/android/providers/downloads/ui/DownloadListFragment;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, mimeType:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$100(Lcom/android/providers/downloads/ui/DownloadListFragment;)Ljava/util/Map;

    move-result-object v4

    new-instance v5, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;

    invoke-direct {v5, v1, v3}, Lcom/android/providers/downloads/ui/DownloadListFragment$SelectionObjAttrs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 382
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #id:Ljava/lang/Long;
    :cond_1
    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$ModeCallback;->mDownloadList:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$100(Lcom/android/providers/downloads/ui/DownloadListFragment;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 384
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditableListView$EditableModeCallback;->onMenuItemClick(Landroid/view/MenuItem;)Z

    goto :goto_0

    .line 361
    nop

    :pswitch_data_0
    .packed-switch 0x60b009b
        :pswitch_0
    .end packed-switch
.end method
