.class Lcom/android/providers/downloads/ui/DownloadListFragment$1;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadListFragment;->setupViews()Landroid/view/View;
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
    .line 313
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$1;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 317
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$1;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$300(Lcom/android/providers/downloads/ui/DownloadListFragment;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 318
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$1;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$1;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mDateSortedCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$300(Lcom/android/providers/downloads/ui/DownloadListFragment;)Landroid/database/Cursor;

    move-result-object v1

    #calls: Lcom/android/providers/downloads/ui/DownloadListFragment;->handleItemClick(Landroid/database/Cursor;)V
    invoke-static {v0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$400(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/database/Cursor;)V

    .line 319
    return-void
.end method
