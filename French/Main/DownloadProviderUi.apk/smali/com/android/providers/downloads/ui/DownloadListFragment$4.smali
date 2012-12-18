.class Lcom/android/providers/downloads/ui/DownloadListFragment$4;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadListFragment;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

.field final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadListFragment;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$4;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    iput-wide p2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$4;->val$downloadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 583
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$4;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mDownloadManager:Landroid/app/MiuiDownloadManager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$1000(Lcom/android/providers/downloads/ui/DownloadListFragment;)Landroid/app/MiuiDownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$4;->val$downloadId:J

    aput-wide v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/MiuiDownloadManager;->restartDownload([J)V

    .line 584
    return-void
.end method
