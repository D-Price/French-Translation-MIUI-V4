.class Lcom/android/providers/downloads/ui/DownloadListFragment$2;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
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
    .line 505
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$2;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x0

    .line 508
    if-eqz p2, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$2;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090021

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 511
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$2;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_only_on_wifi"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    :goto_0
    return-void

    .line 513
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$2;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$2;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadListFragment$2;->this$0:Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
