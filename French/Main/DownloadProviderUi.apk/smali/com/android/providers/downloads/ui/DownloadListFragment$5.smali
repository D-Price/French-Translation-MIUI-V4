.class Lcom/android/providers/downloads/ui/DownloadListFragment$5;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadListFragment;->handleItemClick(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$5;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    const/4 v1, 0x0

    .line 636
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$5;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #setter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mQueuedDownloadId:Ljava/lang/Long;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$1102(Lcom/android/providers/downloads/ui/DownloadListFragment;Ljava/lang/Long;)Ljava/lang/Long;

    .line 637
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$5;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #setter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mQueuedDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$1202(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 638
    return-void
.end method
