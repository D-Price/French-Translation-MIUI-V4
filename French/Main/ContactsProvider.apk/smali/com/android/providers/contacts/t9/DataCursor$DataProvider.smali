.class public interface abstract Lcom/android/providers/contacts/t9/DataCursor$DataProvider;
.super Ljava/lang/Object;
.source "DataCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/t9/DataCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataProvider"
.end annotation


# virtual methods
.method public abstract fillWindow(Lcom/android/providers/contacts/t9/DataCursor;ILandroid/database/CursorWindow;)I
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getExtras()Landroid/os/Bundle;
.end method

.method public abstract onClose(Lcom/android/providers/contacts/t9/DataCursor;)V
.end method

.method public abstract requery(Lcom/android/providers/contacts/t9/DataCursor;)Z
.end method
