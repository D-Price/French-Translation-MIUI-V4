.class Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "DownloadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/ui/DownloadListFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 151
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$MyContentObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->handleDownloadsChanged()V

    .line 158
    :cond_0
    return-void
.end method
