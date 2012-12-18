.class Lcom/android/providers/downloads/ui/DownloadAdapter$1;
.super Ljava/lang/Object;
.source "DownloadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadAdapter;->bindView(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field allowedNetworkTypes:I

.field bypassValue:I

.field id:J

.field status:I

.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

.field totalBytes:J


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadAdapter;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mIdColumnId:I
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$000(Lcom/android/providers/downloads/ui/DownloadAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->id:J

    .line 174
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mStatusColumnId:I
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$200(Lcom/android/providers/downloads/ui/DownloadAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->status:I

    .line 175
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mBypassSizeLimitColumnId:I
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$300(Lcom/android/providers/downloads/ui/DownloadAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->bypassValue:I

    .line 176
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mAllowedNetworkTypesColumnId:I
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$400(Lcom/android/providers/downloads/ui/DownloadAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->allowedNetworkTypes:I

    .line 177
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mTotalBytesColumnId:I
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$500(Lcom/android/providers/downloads/ui/DownloadAdapter;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->totalBytes:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 180
    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->status:I

    if-eq v5, v0, :cond_0

    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->status:I

    if-ne v6, v0, :cond_2

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/MiuiDownloadManager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$600(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/app/MiuiDownloadManager;

    move-result-object v0

    new-array v1, v5, [J

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->id:J

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/MiuiDownloadManager;->pauseDownload([J)V

    .line 202
    :cond_1
    :goto_0
    return-void

    .line 182
    :cond_2
    const/4 v0, 0x4

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->status:I

    if-ne v0, v1, :cond_6

    .line 183
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$700(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$800(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090044

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$900(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadUtils;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->bypassValue:I

    if-nez v0, :cond_5

    iget-wide v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->totalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$1000(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_only_on_wifi"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_4

    iget v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->allowedNetworkTypes:I

    if-ne v0, v6, :cond_5

    .line 194
    :cond_4
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$1100(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->id:J

    invoke-static {v0, v1, v2, v4}, Lcom/android/providers/downloads/ui/DownloadUtils;->notifyPauseDueToSize(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/MiuiDownloadManager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$600(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/app/MiuiDownloadManager;

    move-result-object v0

    new-array v1, v5, [J

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->id:J

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/MiuiDownloadManager;->resumeDownload([J)V

    goto :goto_0

    .line 199
    :cond_6
    const/16 v0, 0x10

    iget v1, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->status:I

    if-ne v0, v1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->this$0:Lcom/android/providers/downloads/ui/DownloadAdapter;

    #getter for: Lcom/android/providers/downloads/ui/DownloadAdapter;->mDownloadManager:Landroid/app/MiuiDownloadManager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadAdapter;->access$600(Lcom/android/providers/downloads/ui/DownloadAdapter;)Landroid/app/MiuiDownloadManager;

    move-result-object v0

    new-array v1, v5, [J

    iget-wide v2, p0, Lcom/android/providers/downloads/ui/DownloadAdapter$1;->id:J

    aput-wide v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/app/MiuiDownloadManager;->restartDownload([J)V

    goto/16 :goto_0
.end method
