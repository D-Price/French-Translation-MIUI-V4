.class final Lcom/android/providers/contacts/t9/T9Utils$3;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/providers/contacts/t9/T9Item;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Lmiui/util/SimplePool$Manager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9Utils$3;->createInstance()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public createInstance()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public bridge synthetic onRelease(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 195
    check-cast p1, Ljava/util/ArrayList;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/t9/T9Utils$3;->onRelease(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onRelease(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/contacts/t9/T9Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, element:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/contacts/t9/T9Item;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 204
    return-void
.end method
