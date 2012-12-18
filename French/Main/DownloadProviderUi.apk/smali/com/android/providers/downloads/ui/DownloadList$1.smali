.class Lcom/android/providers/downloads/ui/DownloadList$1;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/app/ActionBar$OnNavigationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->onCreate(Landroid/os/Bundle;)V
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
    .line 59
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(IJ)Z
    .locals 3
    .parameter "position"
    .parameter "itemId"

    .prologue
    .line 62
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 63
    .local v0, strings:[Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    aget-object v2, v0, p1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$002(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$1;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->setFilterPackageName()V
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)V

    .line 65
    const/4 v1, 0x1

    return v1
.end method
