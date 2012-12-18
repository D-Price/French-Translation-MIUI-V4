.class Lcom/android/providers/downloads/ui/DownloadListFragment$6;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadListFragment;->deleteDownloadsDialog(Landroid/view/ActionMode;[Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

.field final synthetic val$deleteFileCheckBox:Landroid/widget/CheckBox;

.field final synthetic val$downloadIds:[Ljava/lang/Long;

.field final synthetic val$mode:Landroid/view/ActionMode;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadListFragment;Landroid/view/ActionMode;Landroid/widget/CheckBox;[Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 761
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$6;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$6;->val$mode:Landroid/view/ActionMode;

    iput-object p3, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$6;->val$deleteFileCheckBox:Landroid/widget/CheckBox;

    iput-object p4, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$6;->val$downloadIds:[Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$6;->val$mode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$6;->val$mode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$6;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    #getter for: Lcom/android/providers/downloads/ui/DownloadListFragment;->mSelectedIds:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$100(Lcom/android/providers/downloads/ui/DownloadListFragment;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 768
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$6;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$6;->val$deleteFileCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$6;->val$downloadIds:[Ljava/lang/Long;

    #calls: Lcom/android/providers/downloads/ui/DownloadListFragment;->doDeleteDownloads(Z[Ljava/lang/Long;)V
    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/ui/DownloadListFragment;->access$1300(Lcom/android/providers/downloads/ui/DownloadListFragment;Z[Ljava/lang/Long;)V

    .line 769
    return-void
.end method
