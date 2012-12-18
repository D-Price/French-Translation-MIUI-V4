.class Lcom/android/providers/downloads/ui/DownloadList$2;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 101
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 95
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mTabBar:Lcom/android/providers/downloads/ui/TabBar;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$200(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/TabBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/providers/downloads/ui/TabBar;->selectTab(I)V

    .line 87
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mTabAdapter:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$300(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->exitEditMode()V

    .line 88
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$2;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mTabAdapter:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$300(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->exitEditMode()V

    .line 89
    return-void
.end method
