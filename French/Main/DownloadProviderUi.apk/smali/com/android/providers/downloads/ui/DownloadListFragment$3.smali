.class Lcom/android/providers/downloads/ui/DownloadListFragment$3;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadListFragment;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
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
    .line 568
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$3;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    iput-wide p2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$3;->val$downloadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$3;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    iget-wide v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$3;->val$downloadId:J

    const/4 v3, 0x1

    #calls: Lcom/android/providers/downloads/ui/DownloadListFragment;->deleteDownload(JZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$900(Lcom/android/providers/downloads/ui/DownloadListFragment;JZ)V

    .line 572
    return-void
.end method
