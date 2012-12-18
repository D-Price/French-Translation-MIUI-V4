.class Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "DownloadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;


# direct methods
.method private constructor <init>(Lcom/android/providers/downloads/ui/DownloadListFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/downloads/ui/DownloadListFragment;Lcom/android/providers/downloads/ui/DownloadListFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;-><init>(Lcom/android/providers/downloads/ui/DownloadListFragment;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$100(Lcom/android/providers/downloads/ui/DownloadListFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$MyDataSetObserver;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #calls: Lcom/android/providers/downloads/ui/DownloadListFragment;->invalidateListView()V
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$200(Lcom/android/providers/downloads/ui/DownloadListFragment;)V

    goto :goto_0
.end method
