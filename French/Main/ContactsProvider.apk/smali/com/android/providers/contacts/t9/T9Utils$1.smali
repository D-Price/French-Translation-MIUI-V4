.class final Lcom/android/providers/contacts/t9/T9Utils$1;
.super Lmiui/util/SimplePool$Manager;
.source "T9Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/t9/T9Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/util/SimplePool$Manager",
        "<",
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lmiui/util/SimplePool$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9Utils$1;->createInstance()Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public createInstance()Ljava/util/BitSet;
    .locals 1

    .prologue
    .line 176
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 173
    check-cast p1, Ljava/util/BitSet;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/t9/T9Utils$1;->onRelease(Ljava/util/BitSet;)V

    return-void
.end method

.method public onRelease(Ljava/util/BitSet;)V
    .locals 0
    .parameter "element"

    .prologue
    .line 181
    invoke-virtual {p1}, Ljava/util/BitSet;->clear()V

    .line 182
    return-void
.end method
