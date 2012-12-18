.class Lcom/android/providers/downloads/ui/DownloadList$3;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Lcom/android/providers/downloads/ui/TabBar$TabChangedListener;


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
    .line 104
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(I)V
    .locals 2
    .parameter "tabPosition"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$3;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mViewPager:Landroid/support/v4/view/ViewPager;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList;->access$400(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 109
    return-void
.end method
